package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscusschuzhenyishengEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscusschuzhenyishengVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscusschuzhenyishengView;


/**
 * 出诊医生评论表
 *
 * @author 
 * @email 
 * @date 2023-02-01 10:27:17
 */
public interface DiscusschuzhenyishengService extends IService<DiscusschuzhenyishengEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscusschuzhenyishengVO> selectListVO(Wrapper<DiscusschuzhenyishengEntity> wrapper);
   	
   	DiscusschuzhenyishengVO selectVO(@Param("ew") Wrapper<DiscusschuzhenyishengEntity> wrapper);
   	
   	List<DiscusschuzhenyishengView> selectListView(Wrapper<DiscusschuzhenyishengEntity> wrapper);
   	
   	DiscusschuzhenyishengView selectView(@Param("ew") Wrapper<DiscusschuzhenyishengEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscusschuzhenyishengEntity> wrapper);
   	

}

