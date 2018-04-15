package me.libme.apro.admin._mat.matcategorylink.repo;

import me.libme.apro.admin._mat.matcategorylink.model.MatCategoryLink;

import me.libme.webboot.fn.jpa.ISingleEntityAccess;
import org.springframework.stereotype.Repository;

@Repository
public interface MatCategoryLinkRepo extends ISingleEntityAccess<MatCategoryLink,String> {

}
