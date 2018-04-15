package me.libme.apro.admin._contactus.model;

import me.libme.module.spring.jpahibernate._m.JBaseModel;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created by J on 2018/4/15.
 */
@Entity
@Table(name = "t_contact")
@DynamicUpdate
public class Contact extends JBaseModel {


    @Column(name = "detail")
    private String detail;


    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }


}
