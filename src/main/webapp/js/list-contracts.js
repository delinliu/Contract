$(function() {
	getContractsFromServer();
});

function getContractsFromServer() {
	$.ajax({
		url : '/contract/get-contracts',
		success : function(data) {
			showContracts(data);
		}
	})
}

function showContracts(data) {
	var contracts = data.value;
	$('#contract-table').bootstrapTable({
		columns : [ {
			title : '合同编号',
			field : 'Number'
		}, {
			title : '合同名称',
			field : 'Name'
		}, {
			title : '经办人',
			field : 'Operator'
		}, {
			title : '操作',
			field : 'process',
			formatter : contractProcess,
			events : window.operateEvents = {
				'click .contract-view' : viewContract,
				'click .contract-comment' : commentContract,
			}
		} ],
		classes : 'table',
		striped : 'true',
	}).bootstrapTable('load', contracts); 
} 

function contractProcess(value, row, index) {
	var element = '<div class="operator-wrapper contract-view">查看</div>';
	var isPreOver = row['PreRegisterContractManager'] && row['PreRegisterProjectManager'];
	if(row['PreRegisterContractManager']){
		element += '<div class="operator-disabled">合同管理员预登记审批（已完成）</div>';
	}else if(globalIsContractManager){
		element += '<div class="operator-wrapper contract-comment" data-comment-type=1>合同管理员预登记审批</div>';
	}else{
		element += '<div class="operator-disabled">合同管理员预登记审批（待审批）</div>'; 
	}
 
	if(row['PreRegisterProjectManager']){ 
		element += '<div class="operator-disabled">项目管理员预登记审批（已完成）</div>';
	}else if(globalIsProjectManager){
		element += '<div class="operator-wrapper contract-comment" data-comment-type=2>项目管理员预登记审批</div>';
	}else{
		element += '<div class="operator-disabled">项目管理员预登记审批（待审批）</div>';
	}

	if(!isPreOver){ 
		element += '<div class="operator-disabled">合同管理员正式登记审批（等待预审批结束）</div>';
	}else if(row['FormalRegisterContractManager']){
		element += '<div class="operator-disabled">合同管理员正式登记审批（已完成）</div>';
	}else if(globalIsContractManager){
		element += '<div class="operator-wrapper contract-comment" data-comment-type=3>合同管理员正式登记审批</div>';
	}else{
		element += '<div class="operator-disabled">合同管理员正式登记审批（待审批）</div>';
	}

	if(!isPreOver){
		element += '<div class="operator-disabled">项目管理员正式登记审批（等待预审批结束）</div>';
	}else if(row['FormalRegisterProjectManager']){
		element += '<div class="operator-disabled">项目管理员正式登记审批（已完成）</div>';
	}else if(globalIsProjectManager){ 
		element += '<div class="operator-wrapper contract-comment" data-comment-type=4>项目管理员正式登记审批</div>';
	}else{
		element += '<div class="operator-disabled">项目管理员正式登记审批（待审批）</div>';
	}
	return element;
}

function commentContract(e, value, row, index){
	if($(this).attr('data-comment-type') <= 4){
		location.href = '/contract/comment-contract/' + row['ContractID'] + '?comment-type=' + $(this).attr('data-comment-type');
	}
}

function viewContract(e, value, row, index) { 
	console.log(row);
	location.href = '/contract/view-contract/' + row['ContractID'];
}