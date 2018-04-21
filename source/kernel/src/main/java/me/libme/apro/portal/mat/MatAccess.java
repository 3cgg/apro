package me.libme.apro.portal.mat;

import me.libme.kernel._c._m.JPage;
import me.libme.kernel._c._m.SimplePageRequest;
import me.libme.webboot.fn.jpa.DataAccessSupport;
import org.springframework.stereotype.Component;

/**
 * Created by J on 2018/4/21.
 */
@Component
public class MatAccess extends DataAccessSupport {


    JPage<MatRecord> getMatRecordsByPage(MatCriteria matCriteria, SimplePageRequest simplePageRequest){

        String sql


        nativeQuery().setSql()


    }




}
