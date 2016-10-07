$(function() {
	$('input[value=-100]').attr('checked', true);
	initDatePicker();
	$('#search-btn').off('click').on('click', searchBtnClicked);
	searchBtnClicked();
});
var PerPage = 10;

function search(parameter, callback) {
	$.ajax({
		url : '/contract/search',
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

function showSearchResult(data) {
	showContractTable(data.Contracts);
	showContractPage(data.PageInfo);
}

function showContractPage(pageInfo) {
	$('[data-pagination]').html(getPagination(pageInfo));
	$('[data-page-btn]').off('click').on('click', gotoPage);
}

function gotoPage() {
	var targetPage = parseInt($(this).attr('data-page-btn'));
	var parameter = getSearchParameter();
	parameter['PerPage'] = PerPage;
	parameter['CurrPage'] = targetPage;
	search(parameter, showSearchResult);
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

function showContractTable(contracts) {
	$('#contract-table').bootstrapTable({
		columns : [ {
			title : '合同ID',
			field : 'ContractID'
		}, {
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
		height : 700,
	}).bootstrapTable('load', contracts);
}
function contractProcess(value, row, index) {
	var element = '<div class="operator-wrapper contract-view">查看</div>';
	return element;
}

function viewContract(e, value, row, index) {
	location.href = '/contract/view-contract/' + row['ContractID'];
}

function searchBtnClicked() {
	var parameter = getSearchParameter();
	parameter['PerPage'] = PerPage;
	parameter['CurrPage'] = 0;
	search(parameter, showSearchResult);
}

function getSearchParameter() {
	var parameter = {};
	parameter['Number'] = $('#number').text();
	parameter['Name'] = $('#name').text();
	parameter['FinancialFlow'] = $('input[name=financial-flow]:checked').val();
	parameter['IsForeignContract'] = $(
			'input[name=is-foreign-contract]:checked').val();
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
	return parameter;
}