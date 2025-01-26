package com.dao;

import com.entity.DiscusschuzhenyishengEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscusschuzhenyishengVO;
import com.entity.view.DiscusschuzhenyishengView;


/**
 * 出诊医生评论表
 * 
 * @author 
 * @email 
 * @date 2023-02-01 10:27:17
 */
public interface DiscusschuzhenyishengDao extends BaseMapper<DiscusschuzhenyishengEntity> {
	
	List<DiscusschuzhenyishengVO> selectListVO(@Param("ew") Wrapper<DiscusschuzhenyishengEntity> wrapper);
	
	DiscusschuzhenyishengVO selectVO(@Param("ew") Wrapper<DiscusschuzhenyishengEntity> wrapper);
	
	List<DiscusschuzhenyishengView> selectListView(@Param("ew") Wrapper<DiscusschuzhenyishengEntity> wrapper);

	List<DiscusschuzhenyishengView> selectListView(Pagination page,@Param("ew") Wrapper<DiscusschuzhenyishengEntity> wrapper);
	
	DiscusschuzhenyishengView selectView(@Param("ew") Wrapper<DiscusschuzhenyishengEntity> wrapper);
	

}
