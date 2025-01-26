package com.entity.view;

import com.entity.DiscusschuzhenyishengEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 出诊医生评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-02-01 10:27:17
 */
@TableName("discusschuzhenyisheng")
public class DiscusschuzhenyishengView  extends DiscusschuzhenyishengEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscusschuzhenyishengView(){
	}
 
 	public DiscusschuzhenyishengView(DiscusschuzhenyishengEntity discusschuzhenyishengEntity){
 	try {
			BeanUtils.copyProperties(this, discusschuzhenyishengEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
