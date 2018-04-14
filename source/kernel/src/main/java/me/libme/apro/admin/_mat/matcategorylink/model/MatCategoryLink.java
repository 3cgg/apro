package me.libme.apro.admin._mat.matcategorylink.model;

import me.libme.module.spring.jpahibernate._m.JBaseModel;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created by J on 2018/4/14.
 */
@Entity
@Table(name = "t_mat_category_link")
@DynamicUpdate
public class MatCategoryLink extends JBaseModel {

    @Column(name = "mat_id")
    private String matId;

    @Column(name = "category_id")
    private String categoryId;

    public String getMatId() {
        return matId;
    }

    public void setMatId(String matId) {
        this.matId = matId;
    }

    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }
}
