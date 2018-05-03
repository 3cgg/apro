package me.libme.apro.portal;

import me.libme.apro.admin._mat.matcategory.service.MatCategoryService;
import me.libme.webseed._b._core.codetable.service.CodeTableService;
import me.libme.webseed._b._core.sysparam.service.SysParamService;
import me.libme.webseed.cms.colmanager.service.ColManagerService;
import me.libme.webseed.cms.colmanager.vo.ColContentRecord;
import me.libme.webseed.cms.content.vo.ContentCriteria;
import me.libme.webseed.web.NoClosureException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by J on 2018/3/31.
 */
@Controller
@RequestMapping("/portal")
public class IndexController {

    @Autowired
    private MatCategoryService matCategoryService;

    @Autowired
    private CodeTableService codeTableService;

    @Autowired
    private SysParamService sysParamService;

    @Autowired
    private ColManagerService colManagerService;


    @NoClosureException
    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public String index(Model model) throws Exception{

//        SysParamRecord sysParamRecord=sysParamService.getVal(Cons.MAT_CATEGORY_GROUP);
//
//        List<ParamCode> paramCodes=codeTableService.getAllParamCodesByType(sysParamRecord.getValue());

        List<ColContentRecord> colContentRecords=
                colManagerService.getColContents(Cons.CMS.INDEX_IMG_GROUP,new ContentCriteria());
        model.addAttribute("recMats",colContentRecords);

        List<ColContentRecord> banners=
                colManagerService.getColContents(Cons.CMS.INDEX_BANNER,new ContentCriteria());
        model.addAttribute("banners",banners);

        return "/index";
    }


}
