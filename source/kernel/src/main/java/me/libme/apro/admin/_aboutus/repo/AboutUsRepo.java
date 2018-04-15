package me.libme.apro.admin._aboutus.repo;

import me.libme.apro.admin._aboutus.model.AboutUs;

import me.libme.webboot.fn.jpa.ISingleEntityAccess;
import org.springframework.stereotype.Repository;

@Repository
public interface AboutUsRepo extends ISingleEntityAccess<AboutUs,String> {

}
