package me.libme.apro.portal.event;

import me.libme.apro.portal.Cons;
import me.libme.webseed.cms.colmanager.service.ColManagerService;
import me.libme.webseed.cms.colmanager.vo.ColContentRecord;
import me.libme.webseed.cms.content.service.ContentManagerService;
import me.libme.webseed.cms.content.vo.ContentCriteria;
import me.libme.webseed.cms.content.vo.ContentRecord;
import me.libme.webseed.web.NoClosureException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Created by J on 2018/3/31.
 */
@Controller
@RequestMapping("/portal/event")
@NoClosureException
public class EventController {

    @Autowired
    private ColManagerService colManagerService;

    @Autowired
    private ContentManagerService contentManagerService;

    @RequestMapping(value ="/detail", method = RequestMethod.GET)
    public String detail(Model model,@RequestParam(name = "contentId") String contentId) throws Exception{
        ContentRecord contentRecord=contentManagerService.getContentById(contentId);
        model.addAttribute("event",contentRecord);
        return "/event-detail";
    }

    @RequestMapping(value ="/list", method = RequestMethod.GET)
    public String list(Model model) throws Exception{
        List<ColContentRecord> contentRecords= colManagerService.getColContents(Cons.CMS.EVENT,new ContentCriteria());
        model.addAttribute("events",contentRecords);
        return "/event";
    }

}
