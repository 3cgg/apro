package test.me.libme.apro._mat;

import junit.framework.TestCase;
import me.libme.webseed.fn._template.ftl.Config;
import me.libme.webseed.fn._template.ftl.TemplateRunner;
import org.junit.Test;

/**
 * Created by J on 2018/4/14.
 */
public class TestMat extends TestCase {


    @Test
    public void testGenerateMat() throws Exception {

        Config config=new Config();
        config.setModelPath("C:\\java_\\git\\apro\\source\\kernel\\src\\main\\java\\me\\libme\\apro\\admin\\_mat\\mat\\model");
        config.setUiRelativePath("c:\\file");

        config.setModuleName("Mat");

        config.addUIField(new Config.FieldConfig("code", "品名"));
        config.addUIField(new Config.FieldConfig("name", "名称"));
        config.addUIField(new Config.FieldConfig("size", "规格"));
        config.addUIField(new Config.FieldConfig("description","描述"));

        TemplateRunner.start(config);


    }

    public void generateMatCategory() throws Exception{



    }





}
