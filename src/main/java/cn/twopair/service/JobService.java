package cn.twopair.service;

import cn.twopair.pojo.Job;

import java.util.List;

/**
 * @description: TODO
 * @author: 李佳骏
 * @time: 2022/11/2 17:23
 */


public interface JobService {
    public boolean save(Job job);

    public void deleteById(Integer id);

    public void update(Job job);

    public Job selectById(Integer id);

    public List<Job> selectAll();
}
