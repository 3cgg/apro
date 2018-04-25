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

            if(httpInfo.url().indexOf("/codetablemanager/")!=-1
                    ||httpInfo.url().indexOf("/menumanager/")!=-1){
                return true;
            }

            if(SessionUser.DEFUALT==sessionUser){ //admin module is only be access after authorized
                return false;
            }else {
                return true;
            }
        }
        return true;
    }



}
