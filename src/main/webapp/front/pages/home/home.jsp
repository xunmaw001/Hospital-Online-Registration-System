<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 首页 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>首页</title>
		<link rel="stylesheet" href="../../layui/css/layui.css" />
		<link rel="stylesheet" href="../../css/swiper.min.css" />
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		/* recommends */
		.recommends .list-3 .swiper-button-prev {
						padding: 30px 20px;
						left: 10px;
						background: #ba1f26;
						right: auto;
					}
		
		.recommends .list-3 .swiper-button-prev::after {
						color: #fff;
					}
		
		.recommends .list-3 .swiper-button-next {
						padding: 30px 20px;
						left: auto;
						background: #ba1f26;
						right: 10px;
					}
		
		.recommends .list-3 .swiper-button-next::after {
						color: #fff;
					}
		
		.recommends .list-5 .swiper-slide.swiper-slide-prev {
			position: relative;
			z-index: 3;
		}
		.recommends .list-5 .swiper-slide.swiper-slide-next {
			position: relative;
			z-index: 3;
		}
		.recommends .list-5 .swiper-slide.swiper-slide-active {
			position: relative;
			z-index: 5;
		}
		
		.recommends .list-5 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.recommends .list-5 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .list-5 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.recommends .list-5 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.recommends .animation-box:hover {
						transform: scale(1);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.recommends img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.recommends img:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						opacity: 0.75;
						transition: 0.3s;
					}
		/* recommends */
		
		/* news */
		.news .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.news .list-3 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.news .list-3 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-6 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.news .list-6 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-6 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.news .list-6 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.news .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.news .animation-box:hover {
						transform: translate3d(0px, 10px, 0px);
						-webkit-perspective: 1000px;
						background: #fff;
						perspective: 1000px;
						transition: background 0.3s ease-in-out;
					}
		
		.news img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.news img:hover {
						transform: scale(1);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						opacity: 1;
						transition: 0.3s;
					}
		/* news */
		
		/* lists */
		.lists .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.lists .list-3 .swiper-button-prev::after {
						color: #5bb450;
					}
		
		.lists .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.lists .list-3 .swiper-button-next::after {
						color: #5bb450;
					}
		
		.lists .list-5 .swiper-slide.swiper-slide-prev {
			position: relative;
			z-index: 3;
		}
		.lists .list-5 .swiper-slide.swiper-slide-next {
			position: relative;
			z-index: 3;
		}
		.lists .list-5 .swiper-slide.swiper-slide-active {
			position: relative;
			z-index: 5;
		}
		
		.lists .list-5 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.lists .list-5 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.lists .list-5 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.lists .list-5 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.lists .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.lists .animation-box:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.lists img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.lists img:hover {
						transform: scale(1);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						opacity: 0.75;
						transition: 0.3s;
					}
		/* lists */
	</style>
	<body>
		<div id="app">
			<!-- 轮播图 -->
			<div id="layui-carousel" class="layui-carousel">
				<div carousel-item>
					<div class="layui-carousel-item" v-for="(item,index) in swiperList" :key="index">
						<img :src="baseurl+item.value" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->
			

			<div :style='{"padding":"0","margin":"10px auto","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"space-between"}'>
			
				


            
					

				<!-- 新闻资讯 -->
				<div class="news" :style='{"margin":"0px 0 0px","borderColor":"#eee","flexWrap":"wrap","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230127/9a8312998bcc4b55aefae7725f58f713.jpg) no-repeat center top","borderWidth":"0px","display":"block","width":"100%","position":"relative","borderStyle":"solid","order":"2"}'>
					<div v-if="false && 3 == 1" class="news-idea" :style='{"padding":"0px","flexWrap":"wrap","background":"none","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230118/2513a431b105436faddce9a48e9a0289.jpg) no-repeat center top","height":"200px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"padding":"0px 0px 40px","margin":"60px auto 40px","borderColor":"#DF8A83","alignItems":"center","flexDirection":"inherit","display":"flex","justifyContent":"center","borderRadius":"0px","background":"url(http://codegen.caihongy.cn/20230127/9b960911d44148759e8047661d17347b.png) no-repeat center bottom","borderWidth":"0px","width":"100%","position":"relative","borderStyle":"double","height":"50px"}'>
						<span :style='{"padding":"0 10px","color":"#65c1e6","textAlign":"left","background":"none","width":"auto","fontSize":"14px","lineHeight":"50px","order":"2"}'>HOME NEWS</span>
						<span :style='{"padding":"0","margin":"0","color":"#15a6e1","textAlign":"right","background":"none","width":"auto","fontSize":"32px","lineHeight":"50px"}'>公告信息</span>
					</div>
					
					<div v-if="false && 3 == 2" class="news-idea" :style='{"padding":"0px","flexWrap":"wrap","background":"none","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230118/2513a431b105436faddce9a48e9a0289.jpg) no-repeat center top","height":"200px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
						
					<div :style='{"padding":"0px","margin":"0 7%","textAlign":"left","flexWrap":"wrap","background":"none","display":"flex","width":"86%","justifyContent":"space-between","height":"auto"}' v-if="newsList.length" class="list list-7">
						<div v-for="(item,index) in newsList" v-if="index<4" :key="index" @click="jump('../news/detail.jsp?id='+item.id)" class="new7-list-item animation-box" :style='{"cursor":"pointer","boxShadow":"1px 2px 6px #bddeeb","margin":"0 0px 40px","borderColor":"#eee","background":"#ebf6fc","borderWidth":"0px","width":"23.5%","position":"relative","borderStyle":"solid","transition":"background 0.3s ease-in-out","height":"auto"}'>
							<img :style='{"width":"100%","padding":"4px","objectFit":"cover","background":"none","height":"280px"}' :src="baseurl+item.picture">
							<div :style='{"padding":"0 10px","whiteSpace":"nowrap","overflow":"hidden","color":"#3d96c5","textAlign":"center","background":"none","fontSize":"18px","lineHeight":"40px","textOverflow":"ellipsis","fontWeight":"500"}' class="new7-list-item-title">{{ item.title }}</div>
							<div :style='{"padding":"0px 10px","margin":"0 0 30px","overflow":"hidden","color":"#666","background":"none","fontSize":"14px","lineHeight":"24px","textIndent":"2em","height":"120px"}' class="new7-list-item-descript">{{ item.introduction }}</div>
							<div :style='{"padding":"0 10px","color":"#fff","textAlign":"right","background":"#3e97c6","bottom":"-16px","display":"inline-block","fontSize":"14px","lineHeight":"32px","position":"absolute","right":"20px"}' class="new7-list-item-time">{{ item.addtime.split(' ')[0] }}</div>
							<div :style='{"width":"100%","padding":"4px 10px","alignItems":"center","justifyContent":"space-between","display":"none","height":"auto"}' class="new7-list-item-info">
								<div :style='{"color":"#666","fontSize":"14px","lineHeight":"24px"}' class="new7-list-item-identification">新闻资讯</div>
								<div :style='{"color":"#999","fontSize":"14px","lineHeight":"24px"}' class="new7-list-item-icon">→</div>
							</div>
						</div>
					</div>
					
					<div :style='{"cursor":"pointer","padding":"0 20px","margin":"20px auto 50px","borderColor":"#f65602","borderRadius":"30px","textAlign":"center","background":"none","borderWidth":"0px","display":"inline-block","width":"auto","lineHeight":"40px","borderStyle":"dashed"}' @click="jump('../news/list.jsp')">
						<span :style='{"color":"#3e97c6","fontSize":"18px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#3e97c6","fontSize":"18px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="false && 3 == 3" class="recommend-idea" :style='{"padding":"0px","flexWrap":"wrap","background":"none","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230118/2513a431b105436faddce9a48e9a0289.jpg) no-repeat center top","height":"200px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
			<!-- 新闻资讯 -->

			
			

				<div class="lists" :style='{"padding":"30px 7% 30px","margin":"0px auto 0px","borderColor":"#eee","flexWrap":"wrap","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230127/3dc7a96395244ef894fde9c1deda72e9.jpg) no-repeat center bottom,linear-gradient(180deg, rgba(209,238,254,1) 0%, rgba(252,253,254,1) 40%, rgba(252,253,254,1) 100%),#fcfdfe","borderWidth":"0px","display":"block","width":"100%","position":"relative","borderStyle":"solid","order":"3"}'>
					<div v-if="false && 2 == 1" class="recommend-idea" :style='{"padding":"0px","flexWrap":"wrap","background":"none","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230118/3d50edc1b59a475fa241c029378c7434.jpg) no-repeat center top","height":"200px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"padding":"0px 0 30px","margin":"0px auto 20px","borderColor":"#f6cccc","alignItems":"center","flexDirection":"inherit","display":"flex","justifyContent":"center","minHeight":"50px","borderRadius":"0px","background":"url(http://codegen.caihongy.cn/20230127/9b960911d44148759e8047661d17347b.png) no-repeat center bottom","borderWidth":"0px","width":"100%","borderStyle":"dashed"}'>
					  <span :style='{"padding":"0 10px","color":"#666","textAlign":"left","background":"none","width":"auto","fontSize":"16px","lineHeight":"50px","order":"2"}'>DATA SHOW</span>
					  <span :style='{"padding":"0 0px","margin":"0px","color":"#111","textAlign":"center","background":"none","width":"auto","fontSize":"32px","lineHeight":"50px"}'>医院简介展示</span>
					</div>
					
					<div v-if="false && 2 == 2" class="recommend-idea" :style='{"padding":"0px","flexWrap":"wrap","background":"none","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230118/3d50edc1b59a475fa241c029378c7434.jpg) no-repeat center top","height":"200px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="list list-5">
						<div :style='{"width":"100%","padding":"50px 10px","margin":"40px 0 0","background":"none"}' id="lists-five-swiperyiyuanjianjie" class="swiper-container lists-five-swiper">
							<div class="swiper-wrapper">
								<div :style='{"border":"0","padding":"20px","fontSize":"0","position":"relative","borderRadius":"4px","background":"none"}' class="swiper-slide" v-for="(item,index) in yiyuanjianjieList" :key="index" @click="jump('../yiyuanjianjie/detail.jsp?id='+item.id)">
									<img :style='{"border":"0","width":"200px","padding":"40px 20px","background":"url(http://codegen.caihongy.cn/20230128/d927f93371f746899f81fd3ae78502d1.png) no-repeat center top / 100% 100%","height":"220px"}' :src="item.yiyuantupian?baseurl+item.yiyuantupian.split(',')[0]:''" alt="" />
								</div>
							</div>
														<!-- Add Arrows -->
							<div class="swiper-button-next"></div>
							<div class="swiper-button-prev"></div>
													</div>
					</div>
						
					<div :style='{"border":"0","cursor":"pointer","padding":"0 20px","margin":"40px auto 50px","borderColor":"#f65602","textAlign":"center","display":"inline-block","borderRadius":"30px","background":"none","borderWidth":"0px","width":"auto","lineHeight":"40px","borderStyle":"dashed"}' @click="jump('../yiyuanjianjie/list.jsp')">
						<span :style='{"color":"#3e97c6","fontSize":"18px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#3e97c6","fontSize":"18px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="false && 2 == 3" class="recommend-idea" :style='{"padding":"0px","flexWrap":"wrap","background":"none","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230118/3d50edc1b59a475fa241c029378c7434.jpg) no-repeat center top","height":"200px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
				<div class="lists" :style='{"padding":"30px 7% 30px","margin":"0px auto 0px","borderColor":"#eee","flexWrap":"wrap","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230127/3dc7a96395244ef894fde9c1deda72e9.jpg) no-repeat center bottom,linear-gradient(180deg, rgba(209,238,254,1) 0%, rgba(252,253,254,1) 40%, rgba(252,253,254,1) 100%),#fcfdfe","borderWidth":"0px","display":"block","width":"100%","position":"relative","borderStyle":"solid","order":"3"}'>
					<div v-if="false && 2 == 1" class="recommend-idea" :style='{"padding":"0px","flexWrap":"wrap","background":"none","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230118/3d50edc1b59a475fa241c029378c7434.jpg) no-repeat center top","height":"200px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"padding":"0px 0 30px","margin":"0px auto 20px","borderColor":"#f6cccc","alignItems":"center","flexDirection":"inherit","display":"flex","justifyContent":"center","minHeight":"50px","borderRadius":"0px","background":"url(http://codegen.caihongy.cn/20230127/9b960911d44148759e8047661d17347b.png) no-repeat center bottom","borderWidth":"0px","width":"100%","borderStyle":"dashed"}'>
					  <span :style='{"padding":"0 10px","color":"#666","textAlign":"left","background":"none","width":"auto","fontSize":"16px","lineHeight":"50px","order":"2"}'>DATA SHOW</span>
					  <span :style='{"padding":"0 0px","margin":"0px","color":"#111","textAlign":"center","background":"none","width":"auto","fontSize":"32px","lineHeight":"50px"}'>出诊医生展示</span>
					</div>
					
					<div v-if="false && 2 == 2" class="recommend-idea" :style='{"padding":"0px","flexWrap":"wrap","background":"none","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230118/3d50edc1b59a475fa241c029378c7434.jpg) no-repeat center top","height":"200px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="list list-5">
						<div :style='{"width":"100%","padding":"50px 10px","margin":"40px 0 0","background":"none"}' id="lists-five-swiperchuzhenyisheng" class="swiper-container lists-five-swiper">
							<div class="swiper-wrapper">
								<div :style='{"border":"0","padding":"20px","fontSize":"0","position":"relative","borderRadius":"4px","background":"none"}' class="swiper-slide" v-for="(item,index) in chuzhenyishengList" :key="index" @click="jump('../chuzhenyisheng/detail.jsp?id='+item.id)">
									<img :style='{"border":"0","width":"200px","padding":"40px 20px","background":"url(http://codegen.caihongy.cn/20230128/d927f93371f746899f81fd3ae78502d1.png) no-repeat center top / 100% 100%","height":"220px"}' :src="item.touxiang?baseurl+item.touxiang.split(',')[0]:''" alt="" />
								</div>
							</div>
														<!-- Add Arrows -->
							<div class="swiper-button-next"></div>
							<div class="swiper-button-prev"></div>
													</div>
					</div>
						
					<div :style='{"border":"0","cursor":"pointer","padding":"0 20px","margin":"40px auto 50px","borderColor":"#f65602","textAlign":"center","display":"inline-block","borderRadius":"30px","background":"none","borderWidth":"0px","width":"auto","lineHeight":"40px","borderStyle":"dashed"}' @click="jump('../chuzhenyisheng/list.jsp')">
						<span :style='{"color":"#3e97c6","fontSize":"18px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#3e97c6","fontSize":"18px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="false && 2 == 3" class="recommend-idea" :style='{"padding":"0px","flexWrap":"wrap","background":"none","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230118/3d50edc1b59a475fa241c029378c7434.jpg) no-repeat center top","height":"200px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
			<!-- 图文列表 -->


			


			</div>
		</div>
		<script src="../../layui/layui.js"></script>
		<script src="../../js/swiper.min.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>

		<script>
			var vue = new Vue({
				el: '#app',
				data: {





                    yiyuanjianjieList: [],
                    chuzhenyishengList: [],


                    // 轮播图
					swiperList: [],
					baseurl: '',
					// 新闻资讯
					newsList: [],
					leftNewsList: [],
					rightNewsList: []
				},
				filters: {
					newsDesc: function(val) {
						if (val) {
							if (val.length > 60) {
								return val.substring(0, 60).replace(/<[^>]*>/g).replace(/undefined/g, '');
							} else {
								return val.replace(/<[^>]*>/g).replace(/undefined/g, '');
							}
						}
						return '';
					}
				},
				methods: {
					jump(url) {
						jump(url)
					},
				}
			})

			layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var form = layui.form;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				vue.baseurl = http.baseurl;

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 3
				}, function(res) {
					if (res.data.list.length > 0) {
						vue.swiperList = res.data.list;
						
						vue.$nextTick(() => {
							carousel.render({
								elem: '#layui-carousel',
								width: '100%',
								height: '520px',
								anim: 'fade',
								autoplay: 'true',
								interval: '6000',
								arrow: 'none',
								indicator: 'inside'
							});
						})
					}
				});


                // 新闻资讯
				http.request('news/list', 'get', {
					page: 1,
                    sort: 'addtime',
                    order: 'desc',
					limit: 4,
				}, function(res) {
					var newsList = res.data.list;
					
					vue.newsList = newsList;
					if (newsList.length > 0 && newsList.length <= 2) {
						vue.leftNewsList = res.data.list
					} else {
						var leftNewsList = []
						for (let i = 0; i <= 2; i++) {
							leftNewsList.push(newsList[i]);
						}
						vue.leftNewsList = leftNewsList
					}
					if (newsList.length > 2 && newsList.length <= 8) {
						var rightNewsList = []
						for (let i = 3; i <= newsList.length; i++) {
							rightNewsList.push(newsList[i]);
						}
						vue.rightNewsList = rightNewsList
					}
					
					let flag = 7;
					
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":5,"speed":500,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
							new Swiper ('#newsnews', options)
						})
					}
					
					if(flag == 6) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":"4","speed":500,"spaceBetween":10,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						options.centeredSlides = true
						options.watchSlidesProgress = true
						
						vue.$nextTick(() => {
							new Swiper('#new-list-6news', options)
						})
					}
				});

                


				

                http.request(`yiyuanjianjie/list`, 'get', {
					page: 1,
					limit: 8,
				}, function(res) {
					vue.yiyuanjianjieList = res.data.list
					
					let flag = 5;
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":"5","speed":500,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
							new Swiper ('#listsyiyuanjianjie', options)
							new Swiper ('#listschuzhenyisheng', options)
						})
					}
					// 商品列表样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#lists-five-swiperyiyuanjianjie', {
								loop: true,
								speed: 500,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":3000,"disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
							});
						})
					}
				});
                http.request(`chuzhenyisheng/list`, 'get', {
					page: 1,
					limit: 8,
				}, function(res) {
					vue.chuzhenyishengList = res.data.list
					
					let flag = 5;
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":"5","speed":500,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
							new Swiper ('#listsyiyuanjianjie', options)
							new Swiper ('#listschuzhenyisheng', options)
						})
					}
					// 商品列表样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#lists-five-swiperchuzhenyisheng', {
								loop: true,
								speed: 500,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":3000,"disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
							});
						})
					}
				});

				
			});
		</script>
	</body>
</html>
