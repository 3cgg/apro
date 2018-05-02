package me.libme.apro.admin._mat.matcategory.model;

import me.libme.module.spring.jpahibernate._m.JBaseModel;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created by J on 2018/4/14.
 */
@Entity
@Table(name = "t_mat_category")
@DynamicUpdate
public class MatCategory extends JBaseModel {

    @Column(name = "name")
    private String name;

    @Column(name = "_code")
    private String code;

    @Column(name = "_desc")
    private String description;

    @Column(name = "_group")
    private String group;

    public String getGroup() {
        return group;
    }

    public void setGroup(String group) {
        this.group = group;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
