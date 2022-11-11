package cn.twopair;

import cn.twopair.config.SpringConfig;
import cn.twopair.pojo.Job;
import cn.twopair.service.JobService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import java.util.List;

/**
 * @description: TODO
 * @author: 李佳骏
 * @time: 2022/11/2 17:19
 */

public class App {
    public static void main(String[] args) {
        ApplicationContext applicationContext = new AnnotationConfigApplicationContext(SpringConfig.class);

        JobService jobService = applicationContext.getBean(JobService.class);
        //Job job = jobService.selectById(5);
        //List<Job> jobs = jobService.selectAll();
        //for (Job j : jobs) {
        //    System.out.println(j);
        //}
        System.out.println(jobService.save(new Job(8, "hahaha")));
    }
}
