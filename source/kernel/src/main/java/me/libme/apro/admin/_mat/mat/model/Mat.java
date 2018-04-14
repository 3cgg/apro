package me.libme.apro.admin._mat.mat.model;

import me.libme.module.spring.jpahibernate._m.JBaseModel;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created by J on 2018/4/14.
 */
@Entity
@Table(name = "t_mat")
@DynamicUpdate
public class Mat extends JBaseModel {

    @Column(name = "img_url")
    private String imgUrl;

    @Column(name = "name")
    private String name;

    @Column(name = "_code")
    private String code;

    @Column(name = "size")
    private String size;

    @Column(name = "_desc")
    private String description;

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
