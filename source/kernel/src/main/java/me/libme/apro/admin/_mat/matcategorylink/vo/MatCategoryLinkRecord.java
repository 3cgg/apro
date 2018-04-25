package me.libme.apro.admin._mat.matcategorylink.vo;

import me.libme.apro.admin._mat.mat.vo.MatRecord;

public class MatCategoryLinkRecord extends MatRecord {

    private String categoryId;

    private String categoryName;

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getMatId() {
        return getId();
    }

    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }
}
