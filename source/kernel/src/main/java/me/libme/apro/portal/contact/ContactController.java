package me.libme.apro.portal.contact;

import me.libme.apro.admin._contactus.service.ContactService;
import me.libme.apro.admin._contactus.vo.ContactRecord;
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
@RequestMapping("/portal/contact")
@NoClosureException
public class ContactController {

    @Autowired
    private ContactService contactService;

    @RequestMapping(value ="/detail", method = RequestMethod.GET)
    public String detail(Model model) throws Exception{
        ContactRecord contactRecord=contactService.getContact();
        model.addAttribute("contact",contactRecord);
        return "/contact";
    }


}
