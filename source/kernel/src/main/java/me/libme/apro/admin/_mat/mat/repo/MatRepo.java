package me.libme.apro.admin._mat.mat.repo;

import me.libme.apro.admin._mat.mat.model.Mat;

import me.libme.webboot.fn.jpa.ISingleEntityAccess;
import org.springframework.stereotype.Repository;

@Repository
public interface MatRepo extends ISingleEntityAccess<Mat,String> {

}
