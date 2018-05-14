package me.libme.apro.admin.photo.model;

import me.libme.module.spring.jpahibernate._m.JBaseModel;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created by J on 2018/5/14.
 */
@Entity
@Table(name = "t_photo")
@DynamicUpdate
public class Photo extends JBaseModel {


    @Column(name = "img")
    private String img;

    @Column(name = "compress_img")
    private String compressImg;

    @Column(name = "description")
    private String description;

    @Column(name = "mat_id")
    private String matId;


    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getCompressImg() {
        return compressImg;
    }

    public void setCompressImg(String compressImg) {
        this.compressImg = compressImg;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getMatId() {
        return matId;
    }

    public void setMatId(String matId) {
        this.matId = matId;
    }
}
