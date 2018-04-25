package me.libme.apro.acl;

import me.libme.spring.kernel.web.SessionUser;
import me.libme.webseed.fn._httpinfo.HttpInfo;
import me.libme.webseed.fn.acl.AuthorizationService;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Component;

/**
 * Created by J on 2018/4/24.
 */
@Component
@Primary
public class AproAuthorizationServiceImpl implements AuthorizationService {

    @Override
    public boolean authorise(SessionUser sessionUser, HttpInfo httpInfo) {

        if(httpInfo.url().indexOf("/portal/")==-1){
            return false;
        }
        return true;
    }



}
