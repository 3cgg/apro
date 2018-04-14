package me.libme.apro.portal.mat;

import me.libme.webboot.ResponseModel;
import me.libme.webseed.fn.mock.Mock;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by J on 2018/3/31.
 */
@Controller
@RequestMapping("/portal/mat")
public class MatController {

    @RequestMapping(value ="/list",method = RequestMethod.GET)
    public String list(Model model){
        return "/mat";
    }

    @RequestMapping(value ="/search",method = RequestMethod.GET)
    @ResponseBody
    @Mock(type =MatRecord[].class,pageable =true)
    public ResponseModel search(MatCriteria matCriteria) throws Exception {
        return ResponseModel.newSuccess(null);
    }

    @RequestMapping(value ="/detail", method = RequestMethod.GET)
    public String detail(Model model){
        return "/mat-detail";
    }


    @RequestMapping(value = "/hello",method = RequestMethod.GET)
    public String hello(Model model) {
        model.addAttribute("name", "Dear");
        return "hello";
    }


}
