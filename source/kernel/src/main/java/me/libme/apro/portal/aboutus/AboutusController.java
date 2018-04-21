package me.libme.apro.portal.aboutus;

import me.libme.apro.admin._aboutus.service.AboutusService;
import me.libme.apro.admin._aboutus.vo.AboutUsRecord;
import me.libme.webseed.web.NoClosureException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by J on 2018/3/31.
 */
@Controller
@RequestMapping("/portal/aboutus")
@NoClosureException
public class AboutusController {

    @Autowired
    private AboutusService aboutusService;

    @RequestMapping(value ="/detail", method = RequestMethod.GET)
    public String detail(Model model) throws Exception{
        AboutUsRecord aboutUsRecord=aboutusService.getAboutUs();
        model.addAttribute("aboutus",aboutUsRecord);
        return "/about";
    }


}
