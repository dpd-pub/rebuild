<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/_include/Head.jsp"%>
<title>新建字段</title>
</head>
<body class="dialog">
<div class="main-content">
	<form>
		<div class="form-group row">
			<label class="col-sm-3 col-form-label text-sm-right">字段名称</label>
			<div class="col-sm-7">
				<input class="form-control form-control-sm" type="text" id="fieldLabel">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-3 col-form-label text-sm-right">字段类型</label>
			<div class="col-sm-7">
				<select class="form-control form-control-sm" id="type">
					<optgroup label="数字">
						<option value="NUMBER">整数</option>
						<option value="DECIMAL">货币</option>
					</optgroup>
					<optgroup label="日期">
						<option value="DATE">日期</option>
						<option value="DATETIME">日期时间</option>
					</optgroup>
					<optgroup label="文本">
						<option value="TEXT">文本</option>
						<option value="NTEXT">大文本</option>
						<option value="PHONE">电话</option>
						<option value="EMAIL">邮箱</option>
						<option value="URL">链接</option>
						<option value="PICKLIST">列表</option>
						<option value="CLASSIFICATION">分类</option>
						<option value="SERIES">自动编号</option>
					</optgroup>
					<optgroup label="媒体">
						<option value="IMAGE">图片</option>
						<option value="FILE">文件</option>
					</optgroup>
					<optgroup label="关系">
						<option value="REFERENCE">引用</option>
					</optgroup>
				</select>
			</div>
		</div>
		<div class="form-group row hide J_dt-REFERENCE">
			<label class="col-sm-3 col-form-label text-sm-right">选择引用实体</label>
			<div class="col-sm-7">
				<select class="form-control form-control-sm" id="refEntity">
				</select>
			</div>
		</div>
		<div class="form-group row hide J_dt-CLASSIFICATION">
			<label class="col-sm-3 col-form-label text-sm-right">选择分类数据</label>
			<div class="col-sm-7">
				<select class="form-control form-control-sm" id="dataId">
				</select>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-3 col-form-label text-sm-right">备注</label>
			<div class="col-sm-7">
				<textarea class="form-control form-control-sm row2x" id="comments" maxlength="100" placeholder="可选"></textarea>
			</div>
		</div>
		<div class="form-group row footer">
			<div class="col-sm-7 offset-sm-3">
            	<button class="btn btn-primary" type="button" data-loading-text="请稍后">确定</button>
            	<a class="btn btn-link" onclick="parent.rb.modalHide()">取消</a>
			</div>
		</div>
	</form>
</div>
<%@ include file="/_include/Foot.jsp"%>
<script src="${baseUrl}/assets/js/entity/field-new.js"></script>
</body>
</html>
