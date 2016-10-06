$(function() {
	getVerifyContractsFromServer();
});

function getVerifyContractsFromServer() {
	$.ajax({
		url : '/contract/get-register-contracts',
		success : function(data) {
			showContracts(data);
		}
	})
}

function showContracts(data) {
	var contracts = data.value;
	$('#contract-table').bootstrapTable({
		columns : [ 
		{
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
				'click .contract-register' : registerContract,
			}
		} ],
		classes : 'table',
		striped : 'true',
	}).bootstrapTable('load', contracts); 
} 

function contractProcess(value, row, index) {
	var element = '<div class="operator-wrapper contract-view">查看</div>';
	element += '<div class="operator-wrapper contract-register">正式登记</div>';
	return element;
}

function registerContract(e, value, row, index){
	location.href = '/contract/register-contract/' + row['ContractID'];
}

function viewContract(e, value, row, index) { 
	console.log(row);
	location.href = '/contract/view-contract/' + row['ContractID'];
}