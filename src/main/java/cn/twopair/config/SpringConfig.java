package cn.twopair.config;

import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Import;
import org.springframework.context.annotation.PropertySource;

/**
 * @description: TODO
 * @author: 李佳骏
 * @time: 2022/11/2 16:55
 */

@Configurable
@ComponentScan("cn.twopair")
@PropertySource("jdbc.properties")
@Import({JdbcConfig.class, MybatisConfig.class})
public class SpringConfig {

}
