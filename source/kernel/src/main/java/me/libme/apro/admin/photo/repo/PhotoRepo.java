package me.libme.apro.admin.photo.repo;

import me.libme.apro.admin.photo.model.Photo;

import me.libme.webboot.fn.jpa.ISingleEntityAccess;
import org.springframework.stereotype.Repository;

@Repository
public interface PhotoRepo extends ISingleEntityAccess<Photo,String> {

}
