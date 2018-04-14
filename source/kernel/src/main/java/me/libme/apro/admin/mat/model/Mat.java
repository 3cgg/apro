package me.libme.apro.admin.mat.model;

import me.libme.module.spring.jpahibernate._m.JBaseModel;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created by J on 2018/4/14.
 */
@Entity
@Table(name = "t_mat")
@DynamicUpdate
public class Mat extends JBaseModel {



}
