package me.libme.apro.portal.mat;

import me.libme.apro.admin._mat.mat.service.MatService;
import me.libme.kernel._c._m.JPage;
import me.libme.kernel._c._m.JPageUtil;
import me.libme.kernel._c._m.SimplePageRequest;
import me.libme.webboot.ResponseModel;
import me.libme.webseed.fn.mock.Mock;
import me.libme.webseed.web.NoClosureException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by J on 2018/3/31.
 */
@Controller
@RequestMapping("/portal/mat")
public class MatController {

    @Autowired
    private MatService matService;

    @NoClosureException
    @RequestMapping(value ="/list",method = RequestMethod.GET)
    public String list(Model model) throws Exception{
        me.libme.apro.admin._mat.mat.vo.MatCriteria matCriteria=new me.libme.apro.admin._mat.mat.vo.MatCriteria ();
        JPage<me.libme.apro.admin._mat.mat.vo.MatRecord> page= matService.getMatsByPage(matCriteria,new SimplePageRequest(0,6));
        List<MatRecord> matRecords=new ArrayList<>(page.getContent().size());
        page.getContent().forEach(mat->matRecords.add(toPortal(mat)));
        JPageUtil.replaceConent(page,matRecords);
        model.addAttribute("page",page);
        return "/mat";
    }

    private MatRecord toPortal(me.libme.apro.admin._mat.mat.vo.MatRecord matRecord){
        MatRecord mat=new MatRecord();
        mat.setName(matRecord.getName());
        mat.setCode(matRecord.getCode());
        mat.setSize(matRecord.getSize());
        mat.setImgId(matRecord.getImgId());
        mat.setDescription(matRecord.getDescription());
        return mat;
    }


    @RequestMapping(value ="/search",method = RequestMethod.GET)
    @ResponseBody
    @Mock(type =MatRecord[].class,pageable =true)
    public ResponseModel search(MatCriteria matCriteria) throws Exception {




        return ResponseModel.newSuccess(null);
    }

    @NoClosureException
    @RequestMapping(value ="/detail", method = RequestMethod.GET)
    public String detail(Model model){
        return "/mat-detail";
    }


    @NoClosureException
    @RequestMapping(value = "/hello",method = RequestMethod.GET)
    public String hello(Model model) {
        model.addAttribute("name", "Dear");
        return "hello";
    }


}
