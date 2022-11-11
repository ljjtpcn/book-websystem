package cn.twopair.util;

import cn.twopair.config.SpringConfig;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class SpringUtil {
    public static ApplicationContext applicationContext = new AnnotationConfigApplicationContext(SpringConfig.class);
    public static Object getBean(Class<?> componentClasses){
        return applicationContext.getBean(componentClasses);
    }
}
