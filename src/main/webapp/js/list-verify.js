$(function() {
	getVerifyContractsFromServer();
});

function getVerifyContractsFromServer() {
	$.ajax({
		url : '/contract/get-verify-contracts',
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
	console.log(row)
	switch(row.State){
	case 0:
		element += '<div class="operator-wrapper contract-comment">预登记审核（合同管理员）</div>';
		break;
	case 1:
		element += '<div class="operator-wrapper contract-comment">预登记审核（项目分管领导）</div>';
		break;
	case 2:
		break;
	case 3:
		element += '<div class="operator-wrapper contract-comment">正式登记审核（合同管理员）</div>';
		break;
	case 4:
		element += '<div class="operator-wrapper contract-comment">正式登记审核（项目分管领导）</div>';
		break;
	case 5:
		break;
	case 6:
		break;
	}
	return element;
}

function commentContract(e, value, row, index){
	location.href = '/contract/comment-contract/' + row['ContractID'];
}

function viewContract(e, value, row, index) { 
	console.log(row);
	location.href = '/contract/view-contract/' + row['ContractID'];
}