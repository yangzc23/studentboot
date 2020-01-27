package com.yangzc.studentboot.student.controller;
import com.yangzc.studentboot.common.domain.ActionResult;
import com.yangzc.studentboot.common.utils.DownloadUtil;
import com.yangzc.studentboot.student.dao.StudentDOMapper;
import com.yangzc.studentboot.student.domain.StudentDO;
import com.yangzc.studentboot.student.vo.QueryVO;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.*;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @Author: yangzc
 * @Description:
 * @Date: Created on 7:59 2019/12/24
 * @Modified By:
 */

@Controller
@RequestMapping("/stu/list")
public class StudentController {
    private String prefix = "student";

    @Value("${studentboot.uploadPath}")
    private String savePath;

    @Autowired
    StudentDOMapper studentDOMapper;

    @GetMapping(value="/", produces = MediaType.TEXT_HTML_VALUE)
    @ApiOperation(value = "学生列表页面", notes = "返回学生列表页面")
    @RequiresPermissions("stu:list")
    String student() {
        return prefix + "/list";
    }


    @PostMapping(value = "/welcome", produces = MediaType.APPLICATION_JSON_VALUE)
    @ApiOperation(value = "学生集合", notes = "根据指定的开始行和行数返回学生集合", consumes = MediaType.APPLICATION_JSON_VALUE)
    @RequiresPermissions("stu:list")
    @ResponseBody
    public ActionResult getStudents(@RequestBody QueryVO params) {
        Map<String,Object> data = new HashMap<String,Object>();
        data.put("total",studentDOMapper.count());
        List<StudentDO> students = studentDOMapper.list(params);
        data.put("rows",students);
        ActionResult result = new ActionResult(data);
        return result;
    }

    /**
     * 学生编辑
     * @param sid
     * @return
     */
    @GetMapping(value = "/edit/{sid}", produces = MediaType.APPLICATION_JSON_VALUE)
    @ApiOperation(value = "学生信息加载", notes = "根据学号获取该学生的信息")
    @ApiImplicitParam(name = "sid", value = "学号", dataType = "int", paramType = "path", example = "1001")
    @ResponseBody
    public ActionResult loadStudent(@PathVariable Integer sid){
        ActionResult result = null;
        StudentDO student = studentDOMapper.selectByPrimaryKey(sid);
        result = ActionResult.ok(student);
        return result;
    }


    /**
     * 学生保存
     * @param stu
     * @return
     */
    @PostMapping(value = "/save", produces = MediaType.APPLICATION_JSON_VALUE)
    @ApiOperation(value = "学生信息保存", notes = "将输入的学生信息保存到数据库")
    @ResponseBody
    public ActionResult saveStudent(StudentDO stu){
        ActionResult result = null;
        if(stu.getSno()==null||stu.getSno()==0){
            studentDOMapper.insert(stu);
        } else {
            studentDOMapper.updateByPrimaryKey(stu);
        }
        result = ActionResult.ok();
        return result;
    }


    /**
     * 学生删除
     * @param sid
     * @return
     */
    @ApiOperation(value = "删除学生信息", notes = "根据学号删除该学生的信息")
    @ApiImplicitParam(name = "sid", value = "学号", dataType = "int", paramType = "path", example = "1001")
    @DeleteMapping(value = "/delete/{sid}",  produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public ActionResult delStudent(@PathVariable Integer sid){
        ActionResult result = null;
        studentDOMapper.deleteByPrimaryKey(sid);
        result = ActionResult.ok();
        return result;
    }


    /**
     * 文件上传
     * @param file
     * @param req
     * @return
     */
    @ApiOperation(value = "头像上传", notes = "文件上传")
    @ApiImplicitParam(name = "source", value = "图片", dataType = "__file", required = true, paramType = "form")
    @PostMapping(value = "/upload/file", produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public ActionResult uploadFile(@RequestParam("source") MultipartFile file, HttpServletRequest req) {
        ActionResult result = null;
        try {
            // 截取不同类型的文件需要自行判断
            String filename = file.getOriginalFilename();
            if (!file.isEmpty()) {
                String extName = filename.substring(filename.indexOf("."));// 取文件格式后缀名
                String uuid = UUID.randomUUID().toString().replace("-", "");
                // 新名称
                String newName = uuid + extName;// 在这里用UUID来生成新的文件夹名字，这样就不会导致重名
                file.transferTo(new File(savePath+"/"+newName));
                result = ActionResult.ok("/files/"+newName);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    /**
     * 导出学生列表
     * @return
     */
    @PostMapping(value = "/export", produces = MediaType.APPLICATION_OCTET_STREAM_VALUE)
    @ApiOperation(value = "导出学生列表", notes = "导出学生列表")
    @ResponseBody
    public ActionResult export(){
        ServletRequestAttributes requestAttributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletResponse response = requestAttributes.getResponse();
        //1.创建工作簿
        //String path = servletContext.getRealPath("/");
        //path = path+"/make/students.xls";   //得到模板文件所在位置

        File file = null;
        try {
            file = ResourceUtils.getFile("classpath:make/students.xls");
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return new ActionResult(-1,"出现异常",null);
        }

        InputStream is = null;     //根据文件，得到指定的文件流
        try {
            is = new FileInputStream(file);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return new ActionResult(-1,"出现异常",null);
        }

        //根据文件流，加载指定的工作簿
        //它只能操作excel2003版本
        Workbook wb = null;
        try {
            wb = new HSSFWorkbook(is);
        } catch (IOException e) {
            e.printStackTrace();
            return new ActionResult(-1,"出现异常",null);
        }

        //2.读取工作表
        Sheet sheet = wb.getSheetAt(0);   //0代表工作表的下标

        //抽取出一些公用变量
        Row nRow=null;
        Cell nCell = null;

        int rowNo=1;//行号
        int cellNo=0;//列号

        //===========================================数据内容
        nRow = sheet.getRow(rowNo);//读取第2行

        //
        CellStyle snoCellStyle = nRow.getCell(cellNo++).getCellStyle();//读取单元格的样式
        String str = nRow.getCell(cellNo).getStringCellValue();//读取单元格的内容
        System.out.println(str);

        CellStyle snameCellStyle = nRow.getCell(cellNo++).getCellStyle();//读取单元格的样式
        CellStyle isMaleCellStyle = nRow.getCell(cellNo++).getCellStyle();//读取单元格的样式
        CellStyle birthCellStyle = nRow.getCell(cellNo++).getCellStyle();//读取单元格的样式

        List<StudentDO> list = studentDOMapper.selectAll();
        //遍历学生列表
        for(StudentDO stu :list){
            //产生一个新行
            nRow = sheet.createRow(rowNo++);
            //nRow.setHeightInPoints(24f);//设置行高

            cellNo=0;

            nCell = nRow.createCell(cellNo++);//创建单元格
            nCell.setCellValue(stu.getSno());//设置单元格内容
            nCell.setCellStyle(snoCellStyle);    //设置单元格样式

            nCell = nRow.createCell(cellNo++);//创建单元格
            nCell.setCellValue(stu.getSname());//设置单元格内容
            nCell.setCellStyle(snameCellStyle);    //设置单元格样式

            nCell = nRow.createCell(cellNo++);//创建单元格
            nCell.setCellValue(stu.getGender());//设置单元格内容
            nCell.setCellStyle(isMaleCellStyle);    //设置单元格样式

            nCell = nRow.createCell(cellNo++);//创建单元格
            nCell.setCellValue(stu.getBirth());//设置单元格内容
            nCell.setCellStyle(birthCellStyle);    //设置单元格样式

        }

        //输出
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();//内存的缓冲区
        try {
            wb.write(byteArrayOutputStream);
        } catch (IOException e) {
            e.printStackTrace();
        }

        DownloadUtil downloadUtil = new DownloadUtil();
        Calendar cal = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
        //response.setHeader("Transfer-Encoding", "chunked");
        String returnName = "students" + sdf.format(cal.getTime()) + ".xls";
        try {
            downloadUtil.download(byteArrayOutputStream, response, returnName);
        } catch (IOException e) {
            e.printStackTrace();
            return new ActionResult(-1,"出现异常",null);
        }
        return null;
    }


    /**
     * 导入学生列表
     * @param file
     * @return
     * @throws Exception
     */
    @PostMapping(value = "import", produces = MediaType.APPLICATION_JSON_VALUE)
    @ApiImplicitParam(name = "file", value = "Excel文件", dataType = "__file", required = true, paramType = "form")
    @ApiOperation(value = "导入学生列表", notes = "导入学生列表")
    @ResponseBody
    public ActionResult upload(@RequestParam("file") MultipartFile file) throws Exception {
        HSSFWorkbook hssfWorkbook = new HSSFWorkbook(file.getInputStream());
        List<StudentDO> getData = readOldExcel(hssfWorkbook);
        if (getData == null) {
            return new ActionResult(-1,"解析文件失败",null);
        }
        file.getInputStream().close();

        for(StudentDO stu:getData) {
            studentDOMapper.insert(stu);
        }
        return ActionResult.ok(getData);
    }

    //处理2007之前的excel
    private List<StudentDO> readOldExcel(HSSFWorkbook hssfWorkbook) {
        List<StudentDO> students = new ArrayList<StudentDO>();
        HSSFSheet sheetAt = hssfWorkbook.getSheetAt(0);
        HSSFCell cell = null;
        HSSFRow row = null;
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        for (int i = sheetAt.getFirstRowNum()+1; i < sheetAt.getPhysicalNumberOfRows(); i++) {
            row = sheetAt.getRow(i);
            if (row == null) {
                continue;
            }
            Object[] objects = new Object[row.getLastCellNum()];
            for (int j = row.getFirstCellNum(); j < row.getLastCellNum(); j++) {
                cell = row.getCell(j);
                switch (cell.getCellTypeEnum()) {
                    case STRING:
                        objects[j] = cell.getStringCellValue();
                        System.out.println(cell.getStringCellValue());
                        break;
                    case _NONE:
                        objects[j] = "";
                        break;
                    case BOOLEAN:
                        objects[j] = cell.getBooleanCellValue();
                        System.out.println(cell.getBooleanCellValue());
                        break;
                    case NUMERIC:
                        //处理double类型的  1.0===》1
                        DecimalFormat df = new DecimalFormat("0");
                        String s = df.format(cell.getNumericCellValue());
                        objects[j] = s;
                        System.out.println(s);
                        break;
                    default:
                        objects[j] = cell.toString();
                }
            }
            //处理数据
            if (objects != null) {
                StudentDO stu = new StudentDO();
                stu.setSname((String) objects[1]);
                stu.setGender((String)objects[2]);
                stu.setBirth(row.getCell(3).getDateCellValue());
                students.add(stu);
            }
        }
        return students;
    }

}
