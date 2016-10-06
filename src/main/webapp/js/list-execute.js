$(function() {
	getExecuteContractsFromServer();
});

function getExecuteContractsFromServer() {
	$.ajax({
		url : '/contract/get-execute-contracts',
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
			title : '合同编号',
			field : 'Number'
		},
		{
			title : '合同名称',
			field : 'Name'
		}, {
			title : '经办人',
			field : 'Operator' 
		},
		{
			title : '操作',
			field : 'process',
			formatter : contractProcess,
			events : window.operateEvents = {
				'click .contract-view' : viewContract,
				'click .contract-execute' : executeContract,
			}
		} ],
		classes : 'table',
		striped : 'true',
	}).bootstrapTable('load', contracts); 
} 

function contractProcess(value, row, index) {
	var element = '<div class="operator-wrapper contract-view">查看</div>';
	console.log(row)
	if(row.PayNodeID){
		element += '<div class="operator-wrapper contract-execute">付款登记</div>';
	}else if(row.ReceiveNodeID){
		element += '<div class="operator-wrapper contract-execute">收款登记</div>'; 
	}
	return element;
}

function executeContract(e, value, row, index){
	if(row.PayNodeID){
		location.href = '/contract/pay-register/' + row['ContractID'];
	}else if(row.ReceiveNodeID){
		location.href = '/contract/receive-register/' + row['ContractID'];
	}
}

function viewContract(e, value, row, index) { 
	console.log(row);
	location.href = '/contract/view-contract/' + row['ContractID'];
}