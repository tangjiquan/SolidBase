<%@ page contentType="text/html; charset=utf-8" language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<div class="page">
	<div class="pageContent">
        <form method="post" action="${BaseURL}area/" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone)">
            <div class="pageFormContent" layoutH="58">
				<div class="unit">
					<label>所属映射：</label>
					<select name="area.mapper.id" class="required combox">
						<option value="">请选择</option>
						<c:forEach var="item" items="${mappers}">
							<option value="${item.id}">${item.name}</option>
						</c:forEach>
					</select>
				</div>
				
				<div class="unit">
					<label>颜色标识：</label>
					<select name="area.color" class="required">
						<option value="">请选择</option>
						<c:forEach var="item" items="${colors}">
							<option value="${item}" style="color:${item}">${item}</option>
						</c:forEach>
					</select>
				</div>
				
				<div class="unit">
					<label>热点名称：</label>
					<input class="required" name="area.name" />
				</div>
				
				<div class="unit">
                    <label>热点坐标</label>
                    <textarea name="area.coords" rows="3" cols="50"></textarea>
                </div>
                
				<div class="unit">
                    <label>热点描述</label>
                    <textarea name="area.description" rows="3" cols="50"></textarea>
                </div>
            </div>
			<div class="formBar">
				<ul>
					<li><div class="buttonActive"><div class="buttonContent"><button type="submit">提交</button></div></div></li>
					<li><div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div></li>
				</ul>
			</div>
       </form>
	</div>
</div>