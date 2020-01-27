package com.yangzc.studentboot.student.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;
import java.util.TimeZone;

@ApiModel(value = "Student", description = "学生信息")
public class StudentDO implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "学号", name = "sno", example = "1001")
    private Integer sno;

    @ApiModelProperty(value = "姓名", name = "sname", required = true, example = "王鸥")
    private String sname;

    @ApiModelProperty(value = "性别", name = "gender", required = true, example = "0")
    private String gender;

    @ApiModelProperty(value = "生日", name = "birth", required = true, example = "1999-01-01")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern="yyyy-MM-dd",timezone="GMT+8")
    private Date birth;

    @ApiModelProperty(value = "图片访问路径", name = "photoUrl", required = true, example = "/files/123.jpg")
    private String photoUrl;

    public Integer getSno() {
        return sno;
    }

    public void setSno(Integer sno) {
        this.sno = sno;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname == null ? null : sname.trim();
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender == null ? null : gender.trim();
    }

    public Date getBirth() {
        TimeZone.setDefault(TimeZone.getTimeZone("GMT+08"));
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public String getPhotoUrl() {
        return photoUrl;
    }

    public void setPhotoUrl(String photoUrl) {
        this.photoUrl = photoUrl == null ? null : photoUrl.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", sno=").append(sno);
        sb.append(", sname=").append(sname);
        sb.append(", gender=").append(gender);
        sb.append(", birth=").append(birth);
        sb.append(", photoUrl=").append(photoUrl);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}