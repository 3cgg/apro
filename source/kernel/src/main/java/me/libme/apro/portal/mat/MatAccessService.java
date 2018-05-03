package me.libme.apro.portal.mat;

import me.libme.apro.admin._mat.mat.vo.MatRecord;
import me.libme.kernel._c._m.JPage;
import me.libme.kernel._c._m.SimplePageRequest;
import me.libme.webseed._b._core.attachment.service.AttachmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by J on 2018/4/24.
 */
@Transactional
@Service
public class MatAccessService {

    @Autowired
    private MatDataAccess matDataAccess;

    @Autowired
    private AttachmentService attachmentService;

    public JPage<MatRecord> search(MatCriteria matCriteria, SimplePageRequest simplePageRequest) throws Exception{

        JPage<MatRecord>  matRecordJPage= matDataAccess.getMatRecordsByPage(matCriteria,simplePageRequest);
        for(MatRecord matRecord: matRecordJPage.getContent()){
            matRecord.setImgFile(attachmentService.getAttachment(matRecord.getImgId()));
        }
        return matRecordJPage;
    }


}
