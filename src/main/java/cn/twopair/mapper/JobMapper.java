package cn.twopair.mapper;

import cn.twopair.pojo.Job;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

/**
 * @description: TODO
 * @author: 李佳骏
 * @time: 2022/11/2 17:27
 */

public interface JobMapper {

    @Insert("INSERT INTO job VALUES (#{id}, #{name})")
    int save(Job job);

    @Delete("DELETE FROM job WHERE id=#{id}")
    void deleteById(Integer id);

    @Update("UPDATE job SET name=#{name} WHERE id=#{id}")
    void update(Job job);

    @Select("SELECT * FROM job WHERE id=#{id}")
    Job selectById(Integer id);

    @Select("SELECT * FROM job")
    List<Job> selectAll();
}
