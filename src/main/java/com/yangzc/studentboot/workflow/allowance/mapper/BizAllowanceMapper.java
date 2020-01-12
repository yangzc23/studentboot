package com.yangzc.studentboot.workflow.allowance.mapper;

import com.yangzc.studentboot.workflow.allowance.domain.BizAllowanceVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @Author: yangzc
 * @Description:
 * @Date: Created on 15:14 2020/1/11
 * @Modified By:
 */
@Mapper
public interface BizAllowanceMapper {
    /**
     * 查询补贴申请
     *
     * @param id 补贴申请ID
     * @return
     */
    public BizAllowanceVo selectBizAllowanceById(Long id);

    /**
     * 查询补贴申请列表
     *
     * @param bizAllowance 补贴申请
     * @return
     */
    public List<BizAllowanceVo> selectBizAllowanceList(BizAllowanceVo bizAllowance);

    /**
     * 新增补贴申请
     *
     * @param bizAllowance 补贴申请
     * @return
     */
    public int insertBizAllowance(BizAllowanceVo bizAllowance);

    /**
     * 修改补贴申请
     *
     * @param bizAllowance 补贴申请
     * @return
     */
    public int updateBizAllowance(BizAllowanceVo bizAllowance);

    /**
     * 删除补贴申请
     *
     * @param id 补贴申请ID
     * @return
     */
    public int deleteBizAllowanceById(Long id);

    /**
     * 批量删除补贴申请
     *
     * @param ids 需要删除的数据ID
     * @return
     */
    public int deleteBizAllowanceByIds(String[] ids);
}
