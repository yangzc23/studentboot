package com.yangzc.studentboot.student.vo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.io.Serializable;

@ApiModel(value = "QueryConditions", description = "查询条件")
public class QueryVO implements Serializable {
    @ApiModelProperty(value = "页码", name = "page", example = "1")
    private int page;
    @ApiModelProperty(value = "开始行", name = "begin", example = "0")
    private int begin;
    @ApiModelProperty(value = "行数", name = "rows", example = "5")
    private int rows;
    @ApiModelProperty(value = "排序字段", name = "sort", example = "sno")
    private String sort;
    @ApiModelProperty(value = "排序方式", name = "order", example = "desc")
    private String order;

    public QueryVO() {
    }

    public QueryVO(int page, int begin, int rows, String sort, String order) {
        this.page = page;
        this.begin = begin;
        this.rows = rows;
        this.sort = sort;
        this.order = order;
    }


    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getBegin() {
        return begin;
    }

    public void setBegin(int begin) {
        this.begin = begin;
    }

    public int getRows() {
        return rows;
    }

    public void setRows(int rows) {
        this.rows = rows;
    }

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }

    public String getOrder() {
        return order;
    }

    public void setOrder(String order) {
        this.order = order;
    }
}
