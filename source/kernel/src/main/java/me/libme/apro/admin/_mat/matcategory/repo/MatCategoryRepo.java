package me.libme.apro.admin._mat.matcategory.repo;

import me.libme.apro.admin._mat.matcategory.model.MatCategory;

import me.libme.webboot.fn.jpa.ISingleEntityAccess;
import org.springframework.stereotype.Repository;

@Repository
public interface MatCategoryRepo extends ISingleEntityAccess<MatCategory,String> {

}
