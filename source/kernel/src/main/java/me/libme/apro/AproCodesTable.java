package me.libme.apro;

import me.libme.webseed.web.CodesTable;

/**
 * Created by J on 2018/5/3.
 */
public interface AproCodesTable extends CodesTable {


    /**
     * 当前的分类组使用字典维护，CODE
     */
    interface MatCatGroup {
        String CODE = "MAT_CATEGORY_GROUP";
        String  HW= "1";  // 户外
        String XB = "2";  //箱包
        String YL = "3";  //家具
    }






}
