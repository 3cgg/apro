package me.libme.apro.portal.mat;

import me.libme.apro.AproCodesTable;
import me.libme.apro.admin._mat.mat.service.MatService;
import me.libme.apro.admin._mat.mat.vo.MatRecord;
import me.libme.apro.admin._mat.matcategory.service.MatCategoryService;
import me.libme.apro.admin._mat.matcategory.vo.MatCategoryRecord;
import me.libme.kernel._c._m.JPage;
import me.libme.kernel._c._m.SimplePageRequest;
import me.libme.kernel._c.util.JStringUtils;
import me.libme.webboot.ResponseModel;
import me.libme.webseed.fn.kv.CodeDictService;
import me.libme.webseed.fn.mock.Mock;
import me.libme.webseed.web.NoClosureException;
import me.libme.webseed.web.SimplePageRequestVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by J on 2018/3/31.
 */
@Controller("PortalMatController")
@RequestMapping("/portal/mat")
public class MatController {

    @Autowired
    private MatService matService;

    @Autowired
    private MatCategoryService matCategoryService;


    @Autowired
    private MatAccessService matAccessService;

    @Autowired
    private CodeDictService codeDictService;


    @NoClosureException
    @RequestMapping(value ="/list",method = RequestMethod.GET)
    public String list(Model model,
                       @RequestParam(name="tag",required = false) String tag,
                       @RequestParam(name="pageNumber",required = false) String pageNumber,
                       @RequestParam(name="category",required = false) String category,
                       @RequestParam(name="keyword",required = false) String keyword) throws Exception{

        String tagName=tag;

        if(JStringUtils.isNotNullOrEmpty(tag)
                    &&tag.startsWith("http://")){
            URI uri=new URI(tag);
            String query=uri.toURL().getQuery();
            tagName=query.split("=")[1].trim();
        }

        MatCriteria matCriteria=new MatCriteria();
        List<String> categoryIds=new ArrayList<>();
        Map<String,List<MatCategoryRecord>> categorys=new HashMap<>();

        if(JStringUtils.isNotNullOrEmpty(tagName)) {
            List<MatCategoryRecord> matCategoryRecords = matCategoryService.getMatCategoryByGroup(tagName);
            matCategoryRecords.forEach(matCategoryRecord -> categoryIds.add(matCategoryRecord.getId()));
            matCriteria.setCategoryIds(String.join(",", categoryIds));
            categorys.put(
                    codeDictService.val(tagName, AproCodesTable.MatCatGroup.CODE)
                    ,matCategoryRecords);
        }else{
            List<MatCategoryRecord> matCategoryRecords = matCategoryService.getMatCategoryByGroup(null);
            List<MatCategoryRecord> mcs=new ArrayList<>();
            categorys.put("布料分类",mcs);
            matCategoryRecords.forEach(matCategoryRecord -> {  // group by category group
//                String group=matCategoryRecord.getGroup();
//                if(categorys.containsKey(group)){
//                    categorys.get(group).add(matCategoryRecord);
//                }else {
//                    List<MatCategoryRecord> mcs=new ArrayList<>();
//                    mcs.add(matCategoryRecord);
//                    categorys.put(matCategoryRecord.getGroup(),mcs);
//                }
                mcs.add(matCategoryRecord);
                categoryIds.add(matCategoryRecord.getId());
            });
            matCriteria.setCategoryIds(String.join(",", categoryIds));

        }

        matCriteria.setName(JStringUtils.isNullOrEmpty(keyword)?null:keyword);
        matCriteria.setCategory(JStringUtils.isNullOrEmpty(category)?null:category);

        int pageNum=JStringUtils.isNullOrEmpty(pageNumber)?0:Integer.parseInt(pageNumber);
        JPage<MatRecord> matRecordJPage=matAccessService.search(matCriteria,
                new SimplePageRequest(pageNum,3));
        model.addAttribute("page",matRecordJPage);
        model.addAttribute("categorys",categorys);

        return "/mat";
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


    @RequestMapping(value ="/search",method = RequestMethod.GET)
    @ResponseBody
    @Mock(type =MatRecord[].class,pageable =true)
    public ResponseModel search(MatCriteria matCriteria, SimplePageRequestVO pageRequestVO) throws Exception {
        JPage<MatRecord> matRecordJPage=matAccessService.search(matCriteria,new SimplePageRequest(pageRequestVO.getPageNumber(),pageRequestVO.getPageSize()));
        return ResponseModel.newSuccess(matRecordJPage);
    }

    @NoClosureException
    @RequestMapping(value ="/detail/{matId}", method = RequestMethod.GET)
    public String detail(Model model,@PathVariable(name="matId") String id) throws Exception {

        me.libme.apro.admin._mat.mat.vo.MatRecord matRecord= matService.getMatById(id);
        model.addAttribute("matRecord",matRecord);

        return "/mat-detail";
    }


}
