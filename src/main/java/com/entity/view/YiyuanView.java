package com.entity.view;

import com.entity.YiyuanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 医院
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-02-01 10:27:17
 */
@TableName("yiyuan")
public class YiyuanView  extends YiyuanEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YiyuanView(){
	}
 
 	public YiyuanView(YiyuanEntity yiyuanEntity){
 	try {
			BeanUtils.copyProperties(this, yiyuanEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
