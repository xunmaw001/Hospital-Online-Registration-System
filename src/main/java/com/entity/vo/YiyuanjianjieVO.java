package com.entity.vo;

import com.entity.YiyuanjianjieEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 医院简介
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2023-02-01 10:27:17
 */
public class YiyuanjianjieVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 医院图片
	 */
	
	private String yiyuantupian;
		
	/**
	 * 联系电话
	 */
	
	private String lianxidianhua;
		
	/**
	 * 医院地址
	 */
	
	private String yiyuandizhi;
		
	/**
	 * 领导简介
	 */
	
	private String lingdaojianjie;
		
	/**
	 * 医院简介
	 */
	
	private String yiyuanjianjie;
		
	/**
	 * 医院账号
	 */
	
	private String yiyuanzhanghao;
				
	
	/**
	 * 设置：医院图片
	 */
	 
	public void setYiyuantupian(String yiyuantupian) {
		this.yiyuantupian = yiyuantupian;
	}
	
	/**
	 * 获取：医院图片
	 */
	public String getYiyuantupian() {
		return yiyuantupian;
	}
				
	
	/**
	 * 设置：联系电话
	 */
	 
	public void setLianxidianhua(String lianxidianhua) {
		this.lianxidianhua = lianxidianhua;
	}
	
	/**
	 * 获取：联系电话
	 */
	public String getLianxidianhua() {
		return lianxidianhua;
	}
				
	
	/**
	 * 设置：医院地址
	 */
	 
	public void setYiyuandizhi(String yiyuandizhi) {
		this.yiyuandizhi = yiyuandizhi;
	}
	
	/**
	 * 获取：医院地址
	 */
	public String getYiyuandizhi() {
		return yiyuandizhi;
	}
				
	
	/**
	 * 设置：领导简介
	 */
	 
	public void setLingdaojianjie(String lingdaojianjie) {
		this.lingdaojianjie = lingdaojianjie;
	}
	
	/**
	 * 获取：领导简介
	 */
	public String getLingdaojianjie() {
		return lingdaojianjie;
	}
				
	
	/**
	 * 设置：医院简介
	 */
	 
	public void setYiyuanjianjie(String yiyuanjianjie) {
		this.yiyuanjianjie = yiyuanjianjie;
	}
	
	/**
	 * 获取：医院简介
	 */
	public String getYiyuanjianjie() {
		return yiyuanjianjie;
	}
				
	
	/**
	 * 设置：医院账号
	 */
	 
	public void setYiyuanzhanghao(String yiyuanzhanghao) {
		this.yiyuanzhanghao = yiyuanzhanghao;
	}
	
	/**
	 * 获取：医院账号
	 */
	public String getYiyuanzhanghao() {
		return yiyuanzhanghao;
	}
			
}
