package me.libme.apro.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by J on 2018/3/31.
 */
@Controller
@RequestMapping("/view-html")
public class IndexController {

    @RequestMapping("/index")
    public String index(){
        return "/index";
    }


}
