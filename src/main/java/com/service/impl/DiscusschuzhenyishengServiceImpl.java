package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.DiscusschuzhenyishengDao;
import com.entity.DiscusschuzhenyishengEntity;
import com.service.DiscusschuzhenyishengService;
import com.entity.vo.DiscusschuzhenyishengVO;
import com.entity.view.DiscusschuzhenyishengView;

@Service("discusschuzhenyishengService")
public class DiscusschuzhenyishengServiceImpl extends ServiceImpl<DiscusschuzhenyishengDao, DiscusschuzhenyishengEntity> implements DiscusschuzhenyishengService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscusschuzhenyishengEntity> page = this.selectPage(
                new Query<DiscusschuzhenyishengEntity>(params).getPage(),
                new EntityWrapper<DiscusschuzhenyishengEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscusschuzhenyishengEntity> wrapper) {
		  Page<DiscusschuzhenyishengView> page =new Query<DiscusschuzhenyishengView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscusschuzhenyishengVO> selectListVO(Wrapper<DiscusschuzhenyishengEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscusschuzhenyishengVO selectVO(Wrapper<DiscusschuzhenyishengEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscusschuzhenyishengView> selectListView(Wrapper<DiscusschuzhenyishengEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscusschuzhenyishengView selectView(Wrapper<DiscusschuzhenyishengEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
