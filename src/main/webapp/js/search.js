$(function(){
	$('input[value=-100]').attr('checked', true); 
	initDatePicker();
	$('#search-btn').off('click').on('click', searchBtnClicked);
});

function search(parameter, callback){
	$.ajax({
		url : '/contract/search',
		type : 'post',
		contentType : 'application/json',
		data : JSON.stringify(parameter),
		dataType : 'json',
		success : function(data) {
			if(data.success){
				console.log(data.value);
				if(callback){
					callback(data.value);
				}
			}else{
				alert(data.message);
			}
		}
	})
}

function showSearchResult(data){
	var contracts = data.Contracts;
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
			}
		} ],
		classes : 'table',
		striped : 'true',
	}).bootstrapTable('load', contracts); 
}

function contractProcess(value, row, index) {
	var element = '<div class="operator-wrapper contract-view">查看</div>';
	return element;
}

function viewContract(e, value, row, index) { 
	location.href = '/contract/view-contract/' + row['ContractID'];
}

function searchBtnClicked(){
	var parameter = getSearchParameter();
	parameter['PerPage'] = 10;
	parameter['CurrPage'] = 0;
	search(parameter, showSearchResult);
}

function getSearchParameter(){
	var parameter = {};
	parameter['Number'] = $('#number').text();
	parameter['Name'] = $('#name').text();
	parameter['FinancialFlow'] = $('input[name=financial-flow]:checked').val();
	parameter['IsForeignContract'] = $('input[name=is-foreign-contract]:checked').val();
	parameter['SubjectObjects'] = $('input[name=object]:checked').val();
	parameter['FundsType'] = $('input[name=funds-type]:checked').val();
	parameter['Departments'] = $('input[name=department]:checked').val();
	parameter['Operator'] = $('#operator').text();
	parameter['ProjectNumber'] = $('#project-number').text();
	parameter['BudgetNumber'] = $('#budget-number').text();
	parameter['StartDate'] = $('#start-date').val();
	parameter['EndDate'] = $('#end-date').val();
	parameter['TargetCompanyName'] = $('#target-company-name').text();
	
	parameter['PayDate'] = $('[data-pay-date]').val();
	parameter['PayType'] = $('input[name=pay-type]:checked').val();
	parameter['ReceiveDate'] = $('[data-receive-date]').val();

	parameter['SortType'] = $('input[name=sort-type]:checked').val();
	parameter['SortOrder'] = $('input[name=sort-order]:checked').val();
	console.log(parameter)
	return parameter;
}