$(function(){
	$("#search-username-btn").off('click').on('click', searchUsernameBtnClicked);
	searchUsernameBtnClicked();
});

var PerPage = 10;
var CurrPage = 0;

function searchUsernameBtnClicked(){
	var username = $('#search-username').val();
	var parameter = {};
	parameter.Username = username;
	parameter.CurrPage = 0;
	parameter.PerPage = PerPage;
	getUsersFromServer(parameter, showUsers)
}

function showUsers(data){
	showUsersTable(data.Users);
	showUsersPage(data.PageInfo);
	$('[data-add-role]').off('click').on('click', addRole);
	$('[data-remove-role]').off('click').on('click', removeRole);
}

function showUsersPage(pageInfo){
	CurrPage = pageInfo.CurrPage;
	$('[data-pagination]').html(getPagination(pageInfo));
	$('[data-page-btn]').off('click').on('click', gotoPage);
}

function gotoPage() {
	var targetPage = parseInt($(this).attr('data-page-btn'));
	gotoTargetPage(targetPage);
}

function gotoTargetPage(targetPage){
	var parameter = {};
	parameter['Username'] = $('#search-username').val();
	parameter['PerPage'] = PerPage;
	parameter['CurrPage'] = targetPage;
	getUsersFromServer(parameter, showUsers);
}

function getPagination(pageInfo) {
	var currPage = pageInfo.CurrPage;
	var pages = pageInfo.Pages;

	if (pages <= 0) {
		return '';
	}

	var half = 3;
	var min = currPage - half;
	var max = currPage + half;
	min = min < 0 ? 0 : min;
	max = max >= pages ? pages - 1 : max;
	if (min === 0) {
		max = min + half * 2;
	}
	if (max === pages - 1) {
		min = max - half * 2;
	}
	min = min < 0 ? 0 : min;
	max = max >= pages ? pages - 1 : max;
	var pagination = '';
	if (currPage === 0) {
		pagination += '<li class="active"><a>&laquo;</a></li>';
	} else {
		pagination += '<li><a data-page-btn=' + (currPage - 1)
				+ '>&laquo;</a></li>';
	}
	if (min !== 0) {
		pagination += '<li><a data-page-btn=0>1</a></li>'
	}
	if (min > 1) {
		pagination += '<li><a>...</a></li>'
	}
	for (var i = min; i <= max; i++) {
		var page = i + 1;
		if (i === currPage) {
			pagination += '<li class="active"><a>' + page + '</a></li>'
		} else {
			pagination += '<li><a data-page-btn=' + i + '>' + page
					+ '</a></li>'
		}
	}
	if (max < pages - 2) {
		pagination += '<li><a>...</a></li>'
	}
	if (max !== pages - 1) {
		pagination += '<li><a data-page-btn=' + (pages - 1) + '>' + (pages)
				+ '</a></li>'
	}
	if (currPage === pages - 1) {
		pagination += '<li class="active"><a>&raquo;</a></li>';
	} else {
		pagination += '<li><a data-page-btn=' + (currPage + 1)
				+ '>&raquo;</a></li>';
	}

	return pagination;
}

function refreshPage(){
	gotoTargetPage(CurrPage);
}

function addRole(){
	var Username = $(this).attr('data-username');
	var Role = $(this).attr('data-rolename');
	var parameter = {
		Username : Username,
		Role : Role
	};
	addRoleServer(parameter, roleOperationSuccessful);
}

function removeRole(){
	var Username = $(this).attr('data-username');
	var Role = $(this).attr('data-rolename');
	var parameter = {
		Username : Username,
		Role : Role
	};
	removeRoleServer(parameter, roleOperationSuccessful);
}

function roleOperationSuccessful(){
	alert('操作成功');
	refreshPage();
}

function addRoleServer(parameter, callback){
	$.ajax({
		url : '/contract/add-role',
		type : 'post',
		contentType : 'application/json',
		data : JSON.stringify(parameter),
		dataType : 'json',
		success : function(data) {
			if (data.success) {
				if (callback) {
					callback(data.value);
				}
			} else {
				alert(data.message);
			}
		}
	})
}

function removeRoleServer(parameter, callback){
	$.ajax({
		url : '/contract/remove-role',
		type : 'post',
		contentType : 'application/json',
		data : JSON.stringify(parameter),
		dataType : 'json',
		success : function(data) {
			if (data.success) {
				if (callback) {
					callback(data.value);
				}
			} else {
				alert(data.message);
			}
		}
	})
}

function showUsersTable(users){
	$('#users-table').bootstrapTable({
		columns : [ {
			title : '用户名',
			field : 'Username'
		}, {
			title : '用户邮箱',
			field : 'Email'
		}, {
			title : '用户权限',
			field : 'Roles',
			formatter : userRolesFormatter
		}, {
			title : '修改权限',
			field : 'changeRoles',
			formatter : changeRolesFormatter
		}],
		classes : 'table',
		striped : 'true',
		height : 600,
	}).bootstrapTable('load', users); 
}

var allRoles = ['ROLE_CONTRACT_MANAGER', 'ROLE_PROJECT_MANAGER', 'ROLE_OPERATOR'];
var allRolesChs = ['合同管理员', '项目分管领导', '合同经办人'];

function changeRolesFormatter(value, row, index) {
	
	var arr = [];
	for(var i=0; i<allRoles.length; i++){
		arr[i] = false;
		if(row.Roles){
			for(var j=0; j<row.Roles.length; j++){
				var role = row.Roles[j].RoleName;
				if(role === allRoles[i]){
					arr[i] = true;
				}
			}
		}
	}
	
	var elementAdd = '';
	var elementRemove = '';
	for(var i=0; i<arr.length; i++){
		if(arr[i]){
			elementRemove += '<li><a data-remove-role data-username="' + row.Username 
				+ '" data-rolename="' + allRoles[i] + '">' + allRolesChs[i] + '</a></li>'
		}else{
			elementAdd += '<li><a data-add-role data-username="' + row.Username 
			+ '" data-rolename="' + allRoles[i] + '">' + allRolesChs[i] + '</a></li>'
		}
	}
	if(!elementAdd){
		elementAdd = '<li><a>' + '没有权限可以添加' + '</a></li>'
	}
	if(!elementRemove){
		elementRemove = '<li><a>' + '没有权限可以删除' + '</a></li>'
	}
	
	var element = createDropDownHtml('btn-primary', '添加权限', elementAdd) + createDropDownHtml('btn-danger', '删除权限', elementRemove);
	
	return element;
}

function createDropDownHtml(css, name, data){
	return  '<div class="btn-group" style="margin-right:5px">'+
	'  <button type="button" class="btn ' + css + ' dropdown-toggle" data-toggle="dropdown">'+
	name + '  <span class="caret"></span>'+
	'  </button>'+
	'  <ul class="dropdown-menu" role="menu">'+
	data +
	'  </ul>'+
	'</div>';
}

function userRolesFormatter(value, row, index) {
	var element = '';
	if(row.Roles){
		for(var i=0; i<row.Roles.length; i++){
			var role = row.Roles[i].RoleName;
			for(var j=0; j<allRoles.length; j++){
				if(role === allRoles[j]){
					element += '<span class="role-wrapper">' + allRolesChs[j] + '</span>';
				}
			}
		}
	}
	return element;
}

function getUsersFromServer(parameter, callback){

	$.ajax({
		url : '/contract/users',
		type : 'post',
		contentType : 'application/json',
		data : JSON.stringify(parameter),
		dataType : 'json',
		success : function(data) {
			if (data.success) {
				if (callback) {
					callback(data.value);
				}
			} else {
				alert(data.message);
			}
		}
	})
}