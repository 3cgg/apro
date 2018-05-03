package me.libme.apro.portal.mat;

import me.libme.apro.admin._mat.mat.vo.MatRecord;
import me.libme.kernel._c._m.JPage;
import me.libme.kernel._c._m.SimplePageRequest;
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

    public JPage<MatRecord> search(MatCriteria matCriteria, SimplePageRequest simplePageRequest) throws Exception{

        return matDataAccess.getMatRecordsByPage(matCriteria,simplePageRequest);

    }


}
