package com.dao;

import com.entity.YiyuanjianjieEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YiyuanjianjieVO;
import com.entity.view.YiyuanjianjieView;


/**
 * 医院简介
 * 
 * @author 
 * @email 
 * @date 2023-02-01 10:27:17
 */
public interface YiyuanjianjieDao extends BaseMapper<YiyuanjianjieEntity> {
	
	List<YiyuanjianjieVO> selectListVO(@Param("ew") Wrapper<YiyuanjianjieEntity> wrapper);
	
	YiyuanjianjieVO selectVO(@Param("ew") Wrapper<YiyuanjianjieEntity> wrapper);
	
	List<YiyuanjianjieView> selectListView(@Param("ew") Wrapper<YiyuanjianjieEntity> wrapper);

	List<YiyuanjianjieView> selectListView(Pagination page,@Param("ew") Wrapper<YiyuanjianjieEntity> wrapper);
	
	YiyuanjianjieView selectView(@Param("ew") Wrapper<YiyuanjianjieEntity> wrapper);
	

}
