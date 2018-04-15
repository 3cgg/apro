package test.me.libme.apro._mat;

import me.libme.webseed.fn._template.ftl.Config;
import me.libme.webseed.fn._template.ftl.TemplateRunner;
import org.junit.Test;

/**
 * Created by J on 2018/4/14.
 */
public class TestMat  {


    @Test
    public void generateMat() throws Exception {

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

    @Test
    public void generateMatCategory() throws Exception{

        Config config=new Config();
        config.setModelPath("C:\\java_\\git\\apro\\source\\kernel\\src\\main\\java\\me\\libme\\apro\\admin\\_mat\\matcategory\\model");
        config.setUiRelativePath("c:\\file");

        config.setModuleName("MatCategory");

        config.addUIField(new Config.FieldConfig("code", "编码"));
        config.addUIField(new Config.FieldConfig("name", "名称"));
        config.addUIField(new Config.FieldConfig("description","描述"));

        TemplateRunner.start(config);


    }


    @Test
    public void generateMatCategoryLink() throws Exception{

        Config config=new Config();
        config.setModelPath("C:\\java_\\git\\apro\\source\\kernel\\src\\main\\java\\me\\libme\\apro\\admin\\_mat\\matcategorylink\\model");
        config.setUiRelativePath("c:\\file");

        config.setModuleName("MatCategoryLink");

        config.addUIField(new Config.FieldConfig("code", "编码"));
        config.addUIField(new Config.FieldConfig("name", "名称"));
        config.addUIField(new Config.FieldConfig("description","描述"));

        TemplateRunner.start(config);


    }


    @Test
    public void generateAboutus() throws Exception{

        Config config=new Config();
        config.setModelPath("C:\\java_\\git\\apro\\source\\kernel\\src\\main\\java\\me\\libme\\apro\\admin\\_aboutus\\model");
        config.setUiRelativePath("c:\\file");

        config.setModuleName("Aboutus");

        config.addUIField(new Config.FieldConfig("detail", "详情"));

        TemplateRunner.start(config);
    }


    @Test
    public void generateContact() throws Exception{

        Config config=new Config();
        config.setModelPath("C:\\java_\\git\\apro\\source\\kernel\\src\\main\\java\\me\\libme\\apro\\admin\\_contactus\\model");
        config.setUiRelativePath("c:\\file");

        config.setModuleName("Contact");

        config.addUIField(new Config.FieldConfig("detail", "详情"));

        TemplateRunner.start(config);
    }


}
