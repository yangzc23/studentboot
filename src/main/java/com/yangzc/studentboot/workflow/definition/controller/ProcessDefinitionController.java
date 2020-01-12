package com.yangzc.studentboot.workflow.definition.controller;

import com.yangzc.studentboot.common.annotation.Log;
import com.yangzc.studentboot.common.config.Global;
import com.yangzc.studentboot.common.config.Constant;
import com.yangzc.studentboot.common.controller.BaseController;
import com.yangzc.studentboot.common.domain.AjaxResult;
import com.yangzc.studentboot.common.domain.TableDataInfo;
import com.yangzc.studentboot.common.utils.StringUtils;
import com.yangzc.studentboot.common.utils.FileUploadUtils;
import com.yangzc.studentboot.common.utils.ExcelUtil;
import com.yangzc.studentboot.workflow.definition.domain.ProcessDefinition;
import com.yangzc.studentboot.workflow.definition.service.ProcessDefinitionService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Controller
@RequestMapping("/workflow/definition")
public class ProcessDefinitionController extends BaseController {

    private static final Logger log = LoggerFactory.getLogger(ProcessDefinitionController.class);

    private String prefix = "workflow/definition";

    @Autowired
    private ProcessDefinitionService processDefinitionService;

    @RequiresPermissions("workflow:definition:list")
    @GetMapping("/list")
    public String processDefinition() {
        return prefix + "/definition";
    }

    @PostMapping("/data")
    @RequiresPermissions("workflow:definition:list")
    @ResponseBody
    public TableDataInfo list(ProcessDefinition processDefinition) {
        List<ProcessDefinition> list = processDefinitionService.listProcessDefinition(processDefinition);
        return getDataTable(list);
    }

    /**
     * 部署流程定义
     */
    @RequiresPermissions("workflow:definition:list")
    @Log("流程定义导入")
    @PostMapping("/upload")
    @ResponseBody
    public AjaxResult upload(@RequestParam("processDefinition") MultipartFile file) {
        try {
            if (!file.isEmpty()) {
                String extensionName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf('.') + 1);
                if (!"bpmn".equalsIgnoreCase(extensionName)
                        && !"zip".equalsIgnoreCase(extensionName)
                        && !"bar".equalsIgnoreCase(extensionName)) {
                    return error("流程定义文件仅支持 bpmn, zip 和 bar 格式！");
                }
                // p.s. 此时 FileUploadUtils.upload() 返回字符串 fileName 前缀为 Constants.RESOURCE_PREFIX，需剔除
                // 详见: FileUploadUtils.getPathFileName(...)
                String fileName = FileUploadUtils.upload(Global.getProfile() + "/processDefiniton", file);
                if (StringUtils.isNotBlank(fileName)) {
                    String realFilePath = Global.getProfile() + fileName.substring(Constant.RESOURCE_PREFIX.length());
                    processDefinitionService.deployProcessDefinition(realFilePath);
                    return success();
                }
            }
            return error("不允许上传空文件！");
        }
        catch (Exception e) {
            log.error("上传流程定义文件失败！", e);
            return error(e.getMessage());
        }
    }

    @RequiresPermissions("workflow:definition:list")
    @Log("流程定义删除")
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        try {
            return toAjax(processDefinitionService.deleteProcessDeploymentByIds(ids));
        }
        catch (Exception e) {
            return error(e.getMessage());
        }
    }

    @Log("流程定义导出")
    @RequiresPermissions("workflow:definition:list")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export() {
        List<ProcessDefinition> list = processDefinitionService.listProcessDefinition(new ProcessDefinition());
        ExcelUtil<ProcessDefinition> util = new ExcelUtil<>(ProcessDefinition.class);
        return util.exportExcel(list, "流程定义数据");
    }

}
