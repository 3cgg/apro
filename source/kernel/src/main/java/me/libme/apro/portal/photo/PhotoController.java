package me.libme.apro.portal.photo;

import me.libme.apro.admin.photo.service.PhotoService;
import me.libme.apro.admin.photo.vo.PhotoCriteria;
import me.libme.apro.admin.photo.vo.PhotoRecord;
import me.libme.apro.portal.Cons;
import me.libme.kernel._c._m.JPage;
import me.libme.kernel._c._m.SimplePageRequest;
import me.libme.kernel._c.util.JStringUtils;
import me.libme.webseed.fn.kv.CodeDictService;
import me.libme.webseed.fn.kv.SysParamDictService;
import me.libme.webseed.web.NoClosureException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by J on 2018/3/31.
 */
@Controller("PortalPhotoController")
@RequestMapping("/portal/photo")
public class PhotoController {

    @Autowired
    private PhotoService photoService;

    @Autowired
    private CodeDictService codeDictService;

    @Autowired
    private SysParamDictService sysParamDictService;


    private int pageSize() throws Exception{
        String val=sysParamDictService.val(Cons.Sys.PHOTO_LIST_SIZE);
        return Integer.parseInt(val);
    }


    @NoClosureException
    @RequestMapping(value ="/list",method = RequestMethod.GET)
    public String list(Model model,@RequestParam(name="pageNumber",required = false) String pageNumber) throws Exception{


        int pageNum=JStringUtils.isNullOrEmpty(pageNumber)?0:Integer.parseInt(pageNumber);

        PhotoCriteria photoCriteria=new PhotoCriteria();

        JPage<PhotoRecord> photoRecordPage=photoService.getPhotosByPage(photoCriteria,
                new SimplePageRequest(pageNum,pageSize()));


        model.addAttribute("page",photoRecordPage);
        model.addAttribute("pageNumber",pageNum);
        model.addAttribute("totalPageNumber",photoRecordPage.getTotalPageNumber());
        return "/photos";
    }

//    private MatRecord toPortal(me.libme.apro.admin._mat.mat.vo.MatRecord matRecord){
//        MatRecord mat=new MatRecord();
//        mat.setName(matRecord.getName());
//        mat.setCode(matRecord.getCode());
//        mat.setSize(matRecord.getSize());
//        mat.setImgId(matRecord.getImgId());
//        mat.setDescription(matRecord.getDescription());
//        return mat;
//    }


    @NoClosureException
    @RequestMapping(value ="/quick", method = RequestMethod.GET)
    public String quick(Model model,@RequestParam(name="pageNumber",required = false) String pageNumber) throws Exception{

        int pageNum=JStringUtils.isNullOrEmpty(pageNumber)?0:Integer.parseInt(pageNumber);

        PhotoCriteria photoCriteria=new PhotoCriteria();

        JPage<PhotoRecord> photoRecordPage=photoService.getPhotosByPage(photoCriteria,
                new SimplePageRequest(pageNum,pageSize()));


        model.addAttribute("page",photoRecordPage);
        model.addAttribute("pageNumber",pageNum);
        model.addAttribute("totalPageNumber",photoRecordPage.getTotalPageNumber());
        return "/photo-quick";
    }



}
