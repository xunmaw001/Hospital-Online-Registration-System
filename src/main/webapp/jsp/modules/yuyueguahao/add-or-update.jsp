<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
	<%@ include file="../../static/head.jsp"%>
	<link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css" rel="stylesheet">
	<script type="text/javascript" charset="utf-8">
	    window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
	</script>
    <script type="text/javascript">
        window._AMapSecurityConfig = {
            securityJsCode: "4d8f1bda690b722d8a547dabb51a9933",
        }
    </script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
  	<style>
		label.error{
			color: red !important;
			width: auto !important;
		}
	</style>
<body>
	<div id="main-container">
		<!-- Top Navigation -->
		<%@ include file="../../static/topNav.jsp"%>
		
		<!-- Menu -->
		<div id="menu-container" class="navbar">
			<ul class="navbar-nav navbar-vertical" id="navUl">
				
			</ul>
		</div>
		<!-- /Menu -->
		
		<!-- Breadcrumb -->
		<div id="breadcrumb-container">
			<h3 class="breadcrumb-title">编辑预约挂号</h3>
			<ol class="breadcrumb-list">
				<li class="breadcrumb-item-home">
					<a href="#">
						<span class="ti-home"></span>
					</a>
				</li>
				<li class="breadcrumb-item-one"><span>预约挂号管理</span></li>
				<li class="breadcrumb-item-two"><span>编辑预约挂号</span></li>
			</ol>
		</div>

		<!-- Main Content -->
		<div id="add-container">
			<form id="addOrUpdateForm">
				<input id="updateId" name="id" type="hidden">
				<div class="form-item">
					<label>预约编号</label>
					<input id="yuyuebianhao" name="yuyuebianhao" class="form-control" value="" readonly>
				</div>
				<div class="form-item">
					<label>医院账号</label>
					<input name="yiyuanzhanghao" id="yiyuanzhanghao" name="yiyuanzhanghao" class="form-control" placeholder="请输入医院账号">
				</div>
				<div class="form-item">
					<label>医院名称</label>
					<input name="yiyuanmingcheng" id="yiyuanmingcheng" name="yiyuanmingcheng" class="form-control" placeholder="请输入医院名称">
				</div>
				<div class="form-item">
					<label>医生账号</label>
					<input name="yishengzhanghao" id="yishengzhanghao" name="yishengzhanghao" class="form-control" placeholder="请输入医生账号">
				</div>
				<div class="form-item">
					<label>医生姓名</label>
					<input name="yishengxingming" id="yishengxingming" name="yishengxingming" class="form-control" placeholder="请输入医生姓名">
				</div>
				<div class="form-item">
					<label>职称</label>
					<input name="zhicheng" id="zhicheng" name="zhicheng" class="form-control" placeholder="请输入职称">
				</div>
				<div class="form-item">
					<label>科室</label>
					<input name="keshi" id="keshi" name="keshi" class="form-control" placeholder="请输入科室">
				</div>
				<div class="form-item">
					<label>挂号费</label>
					<input name="guahaofei" id="guahaofei" name="guahaofei" class="form-control" placeholder="请输入挂号费">
				</div>
				<div class="form-item">
					<label>出诊日期</label>
					<input name="chuzhenriqi" id="chuzhenriqi" name="chuzhenriqi" class="form-control" placeholder="请输入出诊日期">
				</div>
				<div class="form-item">
					<label>预约时间</label>
					<input id="yuyueshijian-input" class="date" name="yuyueshijian" size="20" type="text" readonly placeholder="请选择预约时间">
				</div>
				<div class="form-item">
					<label>患者账号</label>
					<input name="huanzhezhanghao" id="huanzhezhanghao" name="huanzhezhanghao" class="form-control" placeholder="请输入患者账号">
				</div>
				<div class="form-item">
					<label>患者姓名</label>
					<input name="huanzhexingming" id="huanzhexingming" name="huanzhexingming" class="form-control" placeholder="请输入患者姓名">
				</div>
				<div class="form-item">
					<label>手机号码</label>
					<input name="shoujihaoma" id="shoujihaoma" name="shoujihaoma" class="form-control" placeholder="请输入手机号码">
				</div>
										
				<div class="form-btn">
					<button  id="submitBtn" type="button" class="btn btn-primary btn-add">提交</button>
					<button id="exitBtn" type="button" class="btn btn-primary btn-close">取消</button>
				</div>
			</form>
		</div>
	</div>
	
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">Top</a>
	<!-- /Back to Top -->
	
	<%@ include file="../../static/foot.jsp"%>
	<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
	<script>
		<%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../static/utils.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>   	

		var tableName = "yuyueguahao";
		var pageType = "add-or-update";
		var updateId = "";
		var crossTableId = -1;
		var crossTableName = '';
		var ruleForm = {};
		var crossRuleForm = {};



		function yuyuebianhaoUuid(){
			if($("#yuyuebianhao").val() == null || $("#yuyuebianhao").val() == "null" || $("#yuyuebianhao").val() == ""){
				$("#yuyuebianhao").attr("value",Math.round(new Date().getTime()/1000));
			}
		}				

		var ruleForm = {};
		var vm = new Vue({
		  el: '#addOrUpdateForm',
		  data:{
			  ruleForm : {},
              baseUrl:baseUrl,
			},
		  beforeCreate: function(){
			  var id = window.sessionStorage.getItem("id");
				if(id != null && id != "" && id != "null"){
					$.ajax({ 
		                type: "GET",
		                url: baseUrl + "yuyueguahao/info/" + id,
		                beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
		                success: function(res){               	
		                	if(res.code == 0){
		                		vm.ruleForm = res.data;
				    		}else if(res.code == 401) {
				    			<%@ include file="../../static/toLogin.jsp"%>    
				    		}else{ alert(res.msg)}
		                },
		            });
				}
			},
			methods: { 
            }
	  	});		

		// 文件上传
		function upload(){
		}  
		//取消 
		function cancel() {
            window.location.href = "list.jsp";
		}
		function getQueryString(name) { 
			var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i"); 
			var r = window.location.search.substr(1).match(reg); 
			if (r != null) return unescape(r[2]); 
			return null; 
		}

		// 表单提交
		function submit() {

			var crossFlag = getQueryString("cross");
			if(validform() ==true && compare() == true){
				if(crossFlag) {
				}
				let data = {};
				getContent();
				let value = $('#addOrUpdateForm').serializeArray();
				$.each(value, function (index, item) { 
							data[item.name] = item.value;
						});
				let json = JSON.stringify(data);
				var urlParam;
				var successMes = '';
				if(updateId!=null && updateId!="null" && updateId!=''){
					urlParam = 'update';
					successMes = '修改成功';
				}else{		
					urlParam = 'save';
					successMes = '添加成功';
				}
				//更新跨表属性
			       var crossuserid;
			       var crossrefid;
			       var crossoptnum;
				if(crossFlag) {
					var statusColumnName = window.sessionStorage.getItem('statusColumnName'); 
					var statusColumnValue = window.sessionStorage.getItem('statusColumnValue'); 
					var obj = JSON.parse(window.sessionStorage.getItem('crossObj'));
					if(statusColumnName!='') {
						if(!statusColumnName.startsWith("[")) {
							for (var o in obj){
								if(o==statusColumnName){
									obj[o] = statusColumnValue;
								}
							}
							var table = window.sessionStorage.getItem('crossTableName');
							httpJson(crossTableName + "/update","POST",obj,(res)=>{
								if(res.code == 0){
									console.log('更新属性成功');
								}
							});   
						} else  {
							crossuserid = Number(window.sessionStorage.getItem('userid'));
							crossrefid = obj["id"];
							crossoptnum = window.sessionStorage.getItem('statusColumnName');
							crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
						}
					}
				}
				if(crossrefid && crossuserid) {
					data.crossuserid=crossuserid;
					data.crossrefid=crossrefid;
					http("yuyueguahao/page","GET",{
						page:1,
						limit:10,
						crossuserid:data.crossuserid,
						crossrefid:data.crossrefid,			
					},(res)=>{
						if(res.data.total >= crossoptnum){
							alert(window.sessionStorage.getItem('tips'));
							return false;
						} else {
							httpJson("yuyueguahao/"+urlParam,"POST",data,(res)=>{
								if(res.code == 0){
									window.sessionStorage.removeItem('id');
									let flag = true;
									if(crossFlag) {
									}

									if(flag){
										alert(successMes);
									}
									if(window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true"){
										window.sessionStorage.removeItem('onlyme');
										window.location.href="${pageContext.request.contextPath}/index.jsp";
									}else{
                                        window.location.href = "list.jsp";
									}
									
								}
							});
						}
					});
				} else {
					httpJson("yuyueguahao/"+urlParam,"POST",data,(res)=>{
						if(res.code == 0){
							window.sessionStorage.removeItem('id');
							let flag = true;
							if(crossFlag) {
							}

							if(flag){
								alert(successMes);
							}
							if(window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true"){
								window.sessionStorage.removeItem('onlyme');
								window.location.href="${pageContext.request.contextPath}/index.jsp";
							}else{
                                        window.location.href = "list.jsp";
							}
							
						}
					});
				}
			}else{
				alert("表单未填完整或有错误");
			}
		}

		// 填充富文本框
		function setContent(){
		}  

		// 获取富文本框内容
		function getContent(){
		}

		// 表单校验
		function validform() {
			return $("#addOrUpdateForm").validate({ 
				rules: {
				    yuyuebianhao: {
					},
				    yiyuanzhanghao: {
					},
				    yiyuanmingcheng: {
					},
				    yishengzhanghao: {
					},
				    yishengxingming: {
					},
				    zhicheng: {
					},
				    keshi: {
					},
				    guahaofei: {
					digits: true,
					},
				    chuzhenriqi: {
					},
				    yuyueshijian: {
					required: true,
					},
				    huanzhezhanghao: {
					},
				    huanzhexingming: {
					},
				    shoujihaoma: {
					},
				    sfsh: {
					},
				    shhf: {
					},
				    ispay: {
					},
				},
				messages: {
					yiyuanzhanghao: {
					},
					yiyuanmingcheng: {
					},
					yishengzhanghao: {
					},
					yishengxingming: {
					},
					zhicheng: {
					},
					keshi: {
					},
					guahaofei: {
						digits: "请输入整数",
					},
					chuzhenriqi: {
					},
					yuyueshijian: {
						required: "预约时间不能为空",
					},
					huanzhezhanghao: {
					},
					huanzhexingming: {
					},
					shoujihaoma: {
					},
					sfsh: {
					},
					shhf: {
					},
					ispay: {
					},
				}
			}).form();
		}
		// 添加表单校验方法
		function addValidation(){
			jQuery.validator.addMethod("isPhone", function(value, element) {
					var length = value.length;
					var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(19[0-9]{1})|(17[0-9]{1}))+\d{8})$/;
					return this.optional(element) || (length == 11 && mobile.test(value));
			}, "请填写正确的手机号码");
                        jQuery.validator.addMethod("isIdCardNo", function(value, element) {
                                return this.optional(element) || value.length == 18;
                        }, "请正确输入您的身份证号码");
                        jQuery.validator.addMethod("isTel", function(value, element) {
                          var length = value.length;
                          var phone = /(^(\d{3,4}-)?\d{6,8}$)|(^(\d{3,4}-)?\d{6,8}(-\d{1,5})?$)|(\d{11})/;
                          return this.optional(element) || (phone.test(value));
                         }, "请填写正确的固定电话");//可以自定义默认提示信息
		}
		// 获取当前详情
		function getDetails() {
			var id = window.sessionStorage.getItem("id");
			if(id != null && id != "" && id != "null"){
				updateId = id;
				window.sessionStorage.removeItem('id');
				http("yuyueguahao/info/" + id,"GET",{},(res)=>{
					if(res.code == 0){
						ruleForm = res.data
						// 是/否下拉框回显
						setSelectOption();
						// 设置图片src
						showImg();
						// 数据填充
						dataBind();
						// 富文本框回显	
						setContent();
												//注册表单验证
						$(validform());	
					}
				});
			}else{
				yuyuebianhaoUuid();



		 		fill()
				//注册表单验证
		    		$(validform());
			}
		}	
		// 下拉框选项回显
		function setSelectOption(){
		}			
		// 关联下拉框改变
		function lvSelectChange(level){
			let data = {};
			let value = $('#addOrUpdateForm').serializeArray();
			$.each(value, function (index, item) { 
			            data[item.name] = item.value;
			        });
			
		}		
		// 清除可能会重复渲染的selection
		function clear(className){
			var elements = document.getElementsByClassName(className);
        	for(var i = elements.length - 1; i >= 0; i--) { 
        	  elements[i].parentNode.removeChild(elements[i]); 
        	}
		}		
		function dateTimePick(){
			$.fn.datetimepicker.dates['zh-CN'] = { 
		            days: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"],
		            daysShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日"],
		            daysMin:  ["日", "一", "二", "三", "四", "五", "六", "日"],
		            months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            monthsShort: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            today: "今天",
		            suffix: [],
		            meridiem: ["上午", "下午"]
		    };
			$("#yuyueshijian-input").datetimepicker({ 
				autoclose: true,
				format:'yyyy-mm-dd hh:ii:00',
				minuteStep:1,
				language:'zh-CN',
			});

		}		
		
		function calculation(){
			//积
			var x = 0;
			//和
			var y = 0;
			var flag = 0;



		}		
		function calculationSE(colName){
			//单列求和接口
			http("yuyueguahao"+colName,"GET",{
				tableName: "yuyueguahao",
				columnName: colName
			},(res)=>{
				if(res.code == 0){
					$("#"+colName).attr("value",res.data);
				}
			});
		}	
		function calculationPre(){
			//进入该页面就填充"单列求和"的列
		}			
		
		
			//新增时填充字段
			function fill(){
				var username = window.sessionStorage.getItem('username');
				var accountTableName = window.sessionStorage.getItem('accountTableName');
				http(accountTableName+'/session','GET',{},(res)=>{
					if(res.code == 0){
						var myId = res.data.id;
						if(res.data !=null && res.data.huanzhezhanghao != null && res.data.huanzhezhanghao != ''){
							$('#huanzhezhanghao').val(res.data.huanzhezhanghao)
							$("#huanzhezhanghao").attr('readonly','readonly');
						}
						if(res.data !=null && res.data.huanzhexingming != null && res.data.huanzhexingming != ''){
							$('#huanzhexingming').val(res.data.huanzhexingming)
							$("#huanzhexingming").attr('readonly','readonly');
						}
						if(res.data !=null && res.data.shoujihaoma != null && res.data.shoujihaoma != ''){
							$('#shoujihaoma').val(res.data.shoujihaoma)
							$("#shoujihaoma").attr('readonly','readonly');
						}
						$(validform());
					}
				});
							
			}	
			
		function dataBind(){
			$("#updateId").val(ruleForm.id);	
			$("#yuyuebianhao").val(ruleForm.yuyuebianhao);	
			$("#yiyuanzhanghao").val(ruleForm.yiyuanzhanghao);	
			$("#yiyuanmingcheng").val(ruleForm.yiyuanmingcheng);	
			$("#yishengzhanghao").val(ruleForm.yishengzhanghao);	
			$("#yishengxingming").val(ruleForm.yishengxingming);	
			$("#zhicheng").val(ruleForm.zhicheng);	
			$("#keshi").val(ruleForm.keshi);	
			$("#guahaofei").val(ruleForm.guahaofei);	
			$("#chuzhenriqi").val(ruleForm.chuzhenriqi);	
			$("#yuyueshijian-input").val(ruleForm.yuyueshijian);
			$("#huanzhezhanghao").val(ruleForm.huanzhezhanghao);	
			$("#huanzhexingming").val(ruleForm.huanzhexingming);	
			$("#shoujihaoma").val(ruleForm.shoujihaoma);	
				
						$("#shhf").val(ruleForm.shhf);	
			$("#ispay").val(ruleForm.ispay);	
		}		
		//图片显示
		function showImg(){
		}		
		//跨表

        //跨表
        function crossTable(){
		crossTableName = window.sessionStorage.getItem('crossTableName');
		crossTableId = window.sessionStorage.getItem('crossTableId');
		if(crossTableName != null && crossTableName != '' && crossTableId != null && crossTableId != '' && crossTableId != -1){
			http(crossTableName + "/info/" + crossTableId,"GET",{},(res)=>{
				if(res.code == 0){
					crossRuleForm = res.data;
					$('#updateId').val(crossTableId);
					if(res.data != null && res.data != '' && res.data.yuyuebianhao != null && res.data.yuyuebianhao != ''){

						$("#yuyuebianhao").val(res.data.yuyuebianhao);
						$("#yuyuebianhao").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.yiyuanzhanghao != null && res.data.yiyuanzhanghao != ''){

						$("#yiyuanzhanghao").val(res.data.yiyuanzhanghao);
						$("#yiyuanzhanghao").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.yiyuanmingcheng != null && res.data.yiyuanmingcheng != ''){

						$("#yiyuanmingcheng").val(res.data.yiyuanmingcheng);
						$("#yiyuanmingcheng").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.yishengzhanghao != null && res.data.yishengzhanghao != ''){

						$("#yishengzhanghao").val(res.data.yishengzhanghao);
						$("#yishengzhanghao").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.yishengxingming != null && res.data.yishengxingming != ''){

						$("#yishengxingming").val(res.data.yishengxingming);
						$("#yishengxingming").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.zhicheng != null && res.data.zhicheng != ''){

						$("#zhicheng").val(res.data.zhicheng);
						$("#zhicheng").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.keshi != null && res.data.keshi != ''){

						$("#keshi").val(res.data.keshi);
						$("#keshi").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.guahaofei != null && res.data.guahaofei != ''){

						$("#guahaofei").val(res.data.guahaofei);
						$("#guahaofei").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.chuzhenriqi != null && res.data.chuzhenriqi != ''){

						$("#chuzhenriqi").val(res.data.chuzhenriqi);
						$("#chuzhenriqi").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.yuyueshijian != null && res.data.yuyueshijian != ''){

						$("#yuyueshijian-input").val(res.data.yuyueshijian);
						$('#yuyueshijianFileName').val(res.data.yuyueshijian)
					}
					if(res.data != null && res.data != '' && res.data.huanzhezhanghao != null && res.data.huanzhezhanghao != ''){

						$("#huanzhezhanghao").val(res.data.huanzhezhanghao);
						$("#huanzhezhanghao").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.huanzhexingming != null && res.data.huanzhexingming != ''){

						$("#huanzhexingming").val(res.data.huanzhexingming);
						$("#huanzhexingming").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.shoujihaoma != null && res.data.shoujihaoma != ''){

						$("#shoujihaoma").val(res.data.shoujihaoma);
						$("#shoujihaoma").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.sfsh != null && res.data.sfsh != ''){

					}
					if(res.data != null && res.data != '' && res.data.shhf != null && res.data.shhf != ''){

						$("#shhf").val(res.data.shhf);
						$("#shhf").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.ispay != null && res.data.ispay != ''){

						$("#ispay").val(res.data.ispay);
						$("#ispay").attr('readonly','readonly');
					}
				}
			});  
            }
		window.sessionStorage.removeItem('crossTableName');
		window.sessionStorage.removeItem('crossTableId');
        }
		
		//跨表更新字段
		function crossTableUpdate(){
			let flag = crossTableUpdateValidation();
			if(flag){
				httpJson(crossTableName + "/update","POST",{
					id: crossTableId,
				},(res)=>{
					if(res.code == 0){
						console.log('跨表更新成功');
						return true;
					}
				});   
			}
			return false;
		}

		//跨表更新前验证
		function crossTableUpdateValidation(){
			//防止减法导致库存负值
			return true;
		}
		$(document).ready(function() { 
			//设置右上角用户名
            $('.dropdown-menu h5').html(window.sessionStorage.getItem('username')+'('+window.sessionStorage.getItem('role')+')')
			//设置项目名
			$('.sidebar-header h3 a').html(projectName)
			//设置导航栏菜单
			setMenu();
			//初始化时间插件
			dateTimePick();
			//添加表单校验信息文本
			addValidation();
			getDetails();
			//初始化上传按钮
			upload();
			//单列求和
			calculationPre();
			//跨表
			crossTable();
			<%@ include file="../../static/myInfo.js"%>
			$('#submitBtn').on('click', function(e) {
			    e.preventDefault();
			    //console.log("点击了...提交按钮");
			    submit();
			});
			$('#exitBtn').on('click', function(e) {
			    cancel();
			});
			readonly();
		});		

		function readonly(){
            if(window.sessionStorage.getItem('role')!="管理员") {
				$('#money').attr('readonly','readonly');
            }
		}

		//比较大小
		function compare(){
			var largerVal = null;
			var smallerVal = null;
			if(largerVal !=null && smallerVal != null){
				if(parseInt(largerVal)<=parseInt(smallerVal)){
					alert(smallerName+'不能大于等于'+largerName);
					return false;
				}
			}
			return true;
		}


		// 用户登出
        <%@ include file="../../static/logout.jsp"%>		
	</script>
</body>

</html>
