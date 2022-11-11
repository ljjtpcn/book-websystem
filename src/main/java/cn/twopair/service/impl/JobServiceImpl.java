package cn.twopair.service.impl;

import cn.twopair.mapper.JobMapper;
import cn.twopair.pojo.Job;
import cn.twopair.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @description: TODO
 * @author: 李佳骏
 * @time: 2022/11/2 17:23
 */
@Service
public class JobServiceImpl implements JobService {

    @Autowired
    private JobMapper jobMapper;

    @Override
    public boolean save(Job job) {
        int cnt = jobMapper.save(job);
        return cnt != 0;
    }

    @Override
    public void deleteById(Integer id) {
        jobMapper.deleteById(id);
    }

    @Override
    public void update(Job job) {
        jobMapper.update(job);
    }

    @Override
    public Job selectById(Integer id) {
        return jobMapper.selectById(id);
    }

    @Override
    public List<Job> selectAll() {
        return jobMapper.selectAll();
    }
}
