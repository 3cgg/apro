package me.libme.apro;

import me.libme.webseed.Application;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@EntityScan(basePackages = {"me.libme.webseed","me.libme.apro"})
public class AproApplication {

    public static void main(String[] args) throws Exception {
        Application.run(new Object[]{Application.class,AproApplication.class},args);
    }



}
