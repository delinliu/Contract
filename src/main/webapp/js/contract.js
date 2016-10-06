
function simulate() {
	$.ajax({
		url : '/contract/test.json',
		success : function(data) {
			fillContract(data);
		}
	})
}

function fillContract(parameters) {
	$('#number').text(parameters['Number']);
	$('#name').text(parameters['Name']);
	$('#description').text(parameters['Description']);
	$('#operator').text(parameters['Operator']);
	$('#project-number').text(parameters['ProjectNumber']);
	$('#budget-number').text(parameters['BudgetNumber']);
	$('#money').text(parameters['Money']);
	$('#start-date').val(parameters['StartDate']);
	$('#end-date').val(parameters['EndDate']);
	$('#target-company-name').text(parameters['TargetCompanyName']); 
	$('input[name=financial-flow][value=' + parameters['FinancialFlow'] + ']').attr('checked', true);
	$('input[name=is-foreign-contract][value=' + parameters['IsForeignContract'] + ']').attr('checked', true);
	$('input[name=funds-type][value=' + parameters['FundsType'] + ']').attr('checked', true);
	$('input[name=currency][value=' + parameters['Currency'] + ']').attr('checked', true);
	for(var i=0; i<parameters['SubjectObjects'].length; i++){ 
		$('input[name=object][value=' + parameters['SubjectObjects'][i]['SubjectObjectNumber'] + ']').attr('checked', true);
	}
	$('#object-other').val(parameters['SubjectObjectOther']);
	for(var i=0; i<parameters['Departments'].length; i++){ 
		$('input[name=department][value=' + parameters['Departments'][i]['DepartmentNumber'] + ']').attr('checked', true);
	}
	for(var i=0; i<parameters['ArchiveMaterials'].length; i++){ 
		$('input[name=archive-material][value=' + parameters['ArchiveMaterials'][i]['ArchiveMaterialNumber'] + ']').attr('checked', true);
	}
	$('#archive-material-other').val(parameters['ArchiveMaterialOther']);
	fillPayTimes(parameters['PayTimes']); 
	fillReceiveTimes(parameters['ReceiveTimes']);
	
	var commentsArr = ['PreRegisterContractManagerComments', 'PreRegisterProjectManagerComments',
	                   'FormalRegisterContractManagerComments', 'FormalRegisterProjectManagerComments'];
	for(var i=0; i<commentsArr.length; i++){
		if(parameters[commentsArr[i]]){
			$('#' + commentsArr[i]).text(parameters[commentsArr[i]]);
		}
	}
}

function fillPayTimes(list){
	if(!list) return;
	for (var i = 0; i < list.length; i++) {
		addPayNode();
		var pay = list[i];
		var nodes = $('[data-pay-node]');
		var node = nodes[nodes.length-1];
		$(node).find('[data-expected-money]').text(pay['ExpectedMoney']);
		$(node).find('[data-actual-money]').text(pay['ActualMoney']);
		$(node).find('[data-pay-condition]').text(pay['PayCondition']);
		$(node).find('[data-pay-credential]').text(pay['PayCredential']);
		$(node).find('[data-composition]').text(pay['Composition']);
		$(node).find('[data-pay-date]').val(pay['PayDate']);
		$(node).find('[data-pay-node-type][value=' + pay['Type'] + ']').attr('checked', true);
		$(node).find('[data-pay-type][value=' + pay['PayType'] + ']').attr('checked', true);
		$(node).find('[data-actual-currency][value=' + pay['ActualCurrency'] + ']').attr('checked', true);
		$(node).find('[data-expected-currency][value=' + pay['ExpectedCurrency'] + ']').attr('checked', true);
		$(node).find('[data-is-credential-filed][value=' + pay['IsCredentialFiled'] + ']').attr('checked', true);
		$(node).find('[data-pay-created-time]').text(pay['CreatedTime']);
		$(node).attr('data-pay-node', pay['PayNodeID']);
	} 
}

function fillReceiveTimes(list){
	if(!list) return;
	for (var i = 0; i < list.length; i++) {
		addReceiveNode();
		var receive = list[i];
		var nodes = $('[data-receive-node]');
		var node = nodes[nodes.length-1];
		$(node).find('[data-expected-money]').text(receive['ExpectedMoney']); 
		$(node).find('[data-actual-money]').text(receive['ActualMoney']);
		$(node).find('[data-receive-condition]').text(receive['ReceiveCondition']);
		$(node).find('[data-receive-date]').val(receive['ReceiveDate']);
		$(node).find('[data-type][value=' + receive['Type'] + ']').attr('checked', true);  
		$(node).find('[data-actual-currency][value=' + receive['ActualCurrency'] + ']').attr('checked', true);
		$(node).find('[data-expected-currency][value=' + receive['ExpectedCurrency'] + ']').attr('checked', true);
		$(node).find('[data-invoice-state][value=' + receive['InvoiceState'] + ']').attr('checked', true);
		$(node).find('[data-receive-invoice-time]').text(receive['InvoiceTime']);
		$(node).attr('data-receive-node', receive['ReceiveNodeID']); 
	}
}

// function initDict() {
// $.ajax({
// url : '/contract/getdict/contract_object_dict',
// success : function(data) {
// var value = data['value'];
// var element = '';
// for (var i = 0; i < value.length; i++) {
// if (value[i].id >= 0) {
// element += '<input type="checkbox" name="object" value='
// + value[i].id + '>' + value[i].name + '<br>';
// }
// }
// for (var i = 0; i < value.length; i++) {
// if (value[i].id < 0) {
// element += '<input type="checkbox" name="object" value='
// + value[i].id + '>' + value[i].name + '<br>';
// }
// }
// element += '<input type="text" id="object-other" class="underline-input"
// placeholder="最多输入10个字符">';
// $('#contract_object_dict').html(element);
// }
// })
// }

function initDatePicker() {
	$('.date-picker').datetimepicker({
		minView : "month",
		format : "yyyy-mm-dd",
		language : 'zh-CN',
		autoclose : true,
	});
	$('.icon-arrow-left').addClass('glyphicon-arrow-left');
	$('.icon-arrow-right').addClass('glyphicon-arrow-right');
}

function initCreateListener() {
	$('#create-button').off('click').on('click', createButtonClicked);
}

function emptyAllNodes() {
	$('#pay-nodes table').remove();
	$('#receive-nodes table').remove();
}

function initAddPayNodeListener() {
	$('#add-pay-node').off('click').on('click', addPayNode);
}

function initAddReceiveNodeListener() {
	$('#add-receive-node').off('click').on('click', addReceiveNode);
}

function initRemovePayNodeListener() {
	$('[data-remove-pay-node]').off('click').on('click', removePayNode);
}

function initRemoveReceiveNodeListener() {
	$('[data-remove-receive-node]').off('click').on('click', removeReceiveNode);
}

function addPayNode() {
	var payNodes = $('#pay-nodes');
	payNodes.append(payNodeHtml());
	$('#add-pay-node').appendTo(payNodes);
	initRemovePayNodeListener();
	initDatePicker();
}

function addReceiveNode() {
	var receiveNodes = $('#receive-nodes');
	receiveNodes.append(receiveNodeHtml());
	$('#add-receive-node').appendTo(receiveNodes);
	initRemoveReceiveNodeListener();
	initDatePicker();
}

function removePayNode() {
	if (confirm('确认要删除此付款节点？')) {
		$(this).closest('table').remove();
		initDatePicker();
	}
}

function removeReceiveNode() {
	if (confirm('确认要删除此收款节点？')) {
		$(this).closest('table').remove();
		initDatePicker();
	}
}

var payNodeAmount = 0;
function payNodeHtml() {
	var html = '<table data-pay-node class="table-bordered">' + '	<tr>'
			+ '		<td rowspan=8 class="table-key-width">付款节点'
			+ (++payNodeAmount)
			+ '<br><a data-remove-pay-node>删除节点</a></td>'
			+ '		<td class="table-key-width">节点类型</td>'
			+ '		<td colspan=3 class="table-value-width"><input type="radio"'
			+ '			name="pay-type'
			+ payNodeAmount
			+ '" value=0 data-pay-node-type>首付款<br><input'
			+ '			type="radio" name="pay-type'
			+ payNodeAmount
			+ '" value=1 data-pay-node-type>进度款<br>'
			+ '			<input type="radio" name="pay-type'
			+ payNodeAmount
			+ '" value=2 data-pay-node-type>尾款<br>'
			+ '			<input type="radio" name="pay-type'
			+ payNodeAmount
			+ '" value=3 data-pay-node-type>一次性款项<br>'
			+ '			<input type="radio" name="pay-type'
			+ payNodeAmount
			+ '" value=4 data-pay-node-type>维保款'
			+ '		</td>'
			+ '	</tr>'
			+ '	<tr>'
			+ '		<td class="table-key-width">节点计划发生金额</td>'
			+ '		<td class="table-value-width" contentEditable=true data-expected-money></td>'
			+ '		<td class="table-key-width">币种</td>'
			+ '		<td class="table-value-width"><input type="radio"'
			+ '			name="pay-expected-currency'
			+ payNodeAmount
			+ '" value=0 data-expected-currency>人民币<br><input'
			+ '			type="radio" name="pay-expected-currency'
			+ payNodeAmount
			+ '" value=1 data-expected-currency>美元<br>'
			+ '			<input type="radio" name="pay-expected-currency'
			+ payNodeAmount
			+ '" value=2 data-expected-currency>欧元<br>'
			+ '			<input type="radio" name="pay-expected-currency'
			+ payNodeAmount
			+ '" value=-1 data-expected-currency>N/A'
			+ '		</td>'
			+ '	</tr>'
			+ '	<tr>'
			+ '		<td class="table-key-width">付款条件</td>'
			+ '		<td class="table-value-width" contentEditable=true data-pay-condition></td>'
			+ '		<td class="table-key-width">计划付款日期</td>'
			+ '		<td class="table-value-width"><input class="date-picker"'
			+ '			type="text" data-pay-date></td>'
			+ '	</tr>'
			+ '	<tr>'
			+ '		<td class="table-key-width">付款依据</td>'
			+ '		<td colspan=3 contentEditable=true data-pay-credential></td>'
			+ '	</tr>'
			+ '	<tr>'
			+ '		<td class="table-key-width">实际支付金额</td>'
			+ '		<td class="table-value-width" contentEditable=true data-actual-money></td>'
			+ '		<td class="table-key-width">币种</td>'
			+ '		<td class="table-value-width"><input type="radio"'
			+ '			name="pay-actual-currency'
			+ payNodeAmount
			+ '" value=0 data-actual-currency>人民币<br><input'
			+ '			type="radio" name="pay-actual-currency'
			+ payNodeAmount
			+ '" value=1 data-actual-currency>美元<br>'
			+ '			<input type="radio" name="pay-actual-currency'
			+ payNodeAmount
			+ '" value=2 data-actual-currency>欧元<br>'
			+ '		</td>'
			+ '	</tr>'
			+ '	<tr>'
			+ '		<td class="table-key-width">支付类型</td>'
			+ '		<td class="table-value-width"><input type="radio"'
			+ '			name="pay-pay-type'
			+ payNodeAmount
			+ '" value=0 data-pay-type>挂账<br><input'
			+ '			type="radio" name="pay-pay-type'
			+ payNodeAmount
			+ '" value=1 data-pay-type>预付<br>'
			+ '			<input type="radio" name="pay-pay-type'
			+ payNodeAmount
			+ '" value=2 data-pay-type>决算款'
			+ '		</td>'
			+ '		<td class="table-key-width">支付申请时间</td>'
			+ '		<td class="table-value-width" data-pay-created-time>系统自动生成</td>'
			+ '	</tr>'
			+ ' <tr>'
			+ '		<td class="table-key-width">付款依据是否归档</td>'
			+ '		<td colspan=3 class="table-value-width">'
			+ ' 		<input type="radio" name="pay-is-credential-filed'
			+ payNodeAmount
			+ '" value="true" data-is-credential-filed>是<br>'
			+ ' 		<input type="radio" name="pay-is-credential-filed'
			+ payNodeAmount
			+ '" value="false" data-is-credential-filed>否'
			+ ' 	</td>'
			+ ' </tr>'
			+ ' <tr>'
			+ '		<td class="table-key-width">支出组成</td>'
			+ '		<td colspan=3 class="table-value-width" contentEditable=true data-composition></td>'
			+ ' </tr>' + '</table>';
	return html;
}

var receiveNodeAmount = 0;
function receiveNodeHtml() {
	var html = '<table data-receive-node class="table-bordered">' + '	<tr>'
			+ '		<td rowspan=6 class="table-key-width">收款节点'
			+ (++receiveNodeAmount)
			+ '<br><a data-remove-receive-node>删除节点</a></td>'
			+ '		<td class="table-key-width">节点类型</td>'
			+ '		<td colspan=3 class="table-value-width"><input type="radio"'
			+ '			name="receive-type'
			+ receiveNodeAmount
			+ '" value=0 data-type>首付款<br><input'
			+ '			type="radio" name="receive-type'
			+ receiveNodeAmount
			+ '" value=1 data-type>进度款<br>'
			+ '			<input type="radio" name="receive-type'
			+ receiveNodeAmount
			+ '" value=2 data-type>尾款<br>'
			+ '			<input type="radio" name="receive-type'
			+ receiveNodeAmount
			+ '" value=3 data-type>一次性款项'
			+ '		</td>'
			+ '	</tr>'
			+ '	<tr>'
			+ '		<td class="table-key-width">节点计划收款金额</td>'
			+ '		<td class="table-value-width" contentEditable=true data-expected-money></td>'
			+ '		<td class="table-key-width">币种</td>'
			+ '		<td class="table-value-width"><input type="radio"'
			+ '			name="receive-expected-currency'
			+ receiveNodeAmount
			+ '" value=0 data-expected-currency>人民币<br><input'
			+ '			type="radio" name="receive-expected-currency'
			+ receiveNodeAmount
			+ '" value=1 data-expected-currency>美元<br>'
			+ '			<input type="radio" name="receive-expected-currency'
			+ receiveNodeAmount
			+ '" value=2 data-expected-currency>欧元<br>'
			+ '		</td>'
			+ '	</tr>'
			+ '	<tr>'
			+ '		<td class="table-key-width">收款条件</td>'
			+ '		<td class="table-value-width" contentEditable=true data-receive-condition></td>'
			+ '		<td class="table-key-width">计划付款日期</td>'
			+ '		<td class="table-value-width"><input class="date-picker"'
			+ '			type="text" data-receive-date></td>'
			+ '	</tr>'
			+ '	<tr>'
			+ '		<td class="table-key-width">实际收款金额</td>'
			+ '		<td class="table-value-width" contentEditable=true data-actual-money></td>'
			+ '		<td class="table-key-width">币种</td>'
			+ '		<td class="table-value-width"><input type="radio"'
			+ '			name="receive-actual-currency'
			+ receiveNodeAmount
			+ '" value=0 data-actual-currency>人民币<br><input'
			+ '			type="radio" name="receive-actual-currency'
			+ receiveNodeAmount
			+ '" value=1 data-actual-currency>美元<br>'
			+ '			<input type="radio" name="receive-actual-currency'
			+ receiveNodeAmount
			+ '" value=2 data-actual-currency>欧元<br>'
			+ '		</td>'
			+ '	</tr>'
			+ '	<tr>'
			+ '		<td class="table-key-width">发票状态</td>'
			+ '		<td class="table-value-width"><input type="radio"'
			+ '			name="receive-invoice-state'
			+ receiveNodeAmount
			+ '" value=0 data-invoice-state>已开<br><input'
			+ '			type="radio" name="receive-invoice-state'
			+ receiveNodeAmount
			+ '" value=1 data-invoice-state>未开</td>'
			+ '		<td class="table-key-width">支付申请时间</td>'
			+ '		<td class="table-value-width" data-receive-invoice-time>系统自动生成</td>'
			+ '	</tr>'
			+ '</table>';
	return html;
}

function createButtonClicked() {
	$('#error-hint-div').hide();
	try {
		var parameters = {};
		$.extend(parameters, checkNumber(), checkName(), checkFinancialFlow(),
				checkIsForeignContract(), checkDescription(), checkObject(),
				checkFundsType(), checkDepartment(), checkOperator(),
				checkProjectNumber(), checkBudgetNumber(), checkMoney(),
				checkCurrency(), checkStartDate(), checkEndDate(),
				checkTargetCompanyName(), checkArchiveMaterial());
		$.extend(parameters, checkPaytimes());
		$.extend(parameters, checkReceiveTimes());
		$('#create-button').off('click');
		createContract(parameters);
	} catch (e) {
		showErrorHint(e);
	}
}

function showErrorHint(e){
	var element = e.element;
	var message = e.message;
	$('#error-hint-text').text(message);
	var hint = $('#error-hint-div');
	hint.show();
	hint.css('position', 'absolute');
	hint.css('top', element.offset().top - 25);
	hint.css('left', element.offset().left - 15);
	$('html,body').animate({
		scrollTop : hint.offset().top
	}, 200);
	$('#error-hint-close').off('click').on('click', function() {
		$('#error-hint-div').hide();
	});
}

function createContract(parameters) {
	$.ajax({
		url : '/contract/create-contract',
		type : 'post',
		contentType : 'application/json',
		data : JSON.stringify(parameters),
		dataType : 'json',
		success : function(data) {
			if(data.success){
				location.href = '/contract/view-contract/' + data.value.ContractID
			}else{
				alert(data.message);
			}
		}
	})
}

function registerContract(parameters) {
	$.ajax({
		url : '/contract/register-contract',
		type : 'post',
		contentType : 'application/json',
		data : JSON.stringify(parameters),
		dataType : 'json',
		success : function(data) {
			if(data.success){
				location.href = '/contract/view-contract/' + parameters.ContractID
			}else{
				alert(data.message);
			}
		}
	})
}

function checkNumber() {
	var number = $('#number').text();
	if (!/^CM-[0-9a-zA-Z]{5}-20[0-9a-zA-Z]{2}-[0-9a-zA-Z]{4}$/.test(number)) {
		throw {
			element : $('#number'),
			message : '合同编号必须满足此格式：CM-☐☐☐☐☐-20☐☐-☐☐☐☐'
		};
	}
	return {
		'Number' : number
	};
}

function checkName() {
	return {
		'Name' : checkEmpty('name', '请填写合同名称')
	};
}

function checkEmpty(id, errorMessage) {
	var value = $('#' + id).text();
	if (!value) {
		throw {
			element : $('#' + id),
			message : errorMessage
		}
	}
	return value;
}

function checkRadio(name, errorMessage) {
	var value = $('input[name="' + name + '"]:checked').val();
	if (!value) {
		throw {
			element : $('input[name="' + name + '"]').closest('td'),
			message : errorMessage
		}
	}
	if ("true" === value) {
		return true;
	}
	if ("false" === value) {
		return false;
	}
	return parseInt(value);
}

function checkFinancialFlow() {
	return {
		'FinancialFlow' : checkRadio('financial-flow', '请选择资金流向')
	};
}

function checkIsForeignContract() {
	return {
		'IsForeignContract' : checkRadio('is-foreign-contract', '请选择是否为涉外合同')
	};
}

function checkDescription() {
	return {
		'Description' : checkEmpty('description', '请填写合同描述')
	};
}

function checkBoxEmpty(name, errorMessage, defaultEmpty) {
	var values = [];
	$('input[name="' + name + '"]:checked').each(function() {
		values.push(parseInt($(this).val()));
	});
	if (!defaultEmpty && !values.length) {
		throw {
			element : $('input[name="' + name + '"]').closest('td'),
			message : errorMessage,
		}
	}
	return values;
}

function arrayToJsonArray(arr, key) {
	var jsonArr = [];
	for (var i = 0; i < arr.length; i++) {
		jsonArr[i] = {};
		jsonArr[i][key] = arr[i];
	}
	return jsonArr;
}

function checkObject() {
	var object = checkBoxEmpty('object', '请勾选合同标的物');
	var objectOther = $('#object-other').val();
	if (object.indexOf(-1) >= 0 && !objectOther) {
		throw {
			element : $('#object-other').closest('td'),
			message : '你勾选了其他选项，请填写内容'
		}
	}
	return {
		'SubjectObjects' : arrayToJsonArray(object, 'SubjectObjectNumber'),
		'SubjectObjectOther' : objectOther
	};
}

function checkFundsType() {
	return {
		'FundsType' : checkRadio('funds-type', '请勾选经费归集类别')
	};
}

function checkDepartment() {
	return {
		'Departments' : arrayToJsonArray(
				checkBoxEmpty('department', '请勾选承办部门'), 'DepartmentNumber')
	}
}

function checkOperator() {
	return {
		'Operator' : checkEmpty('operator', '请填写合同经办人')
	}
}



function checkProjectNumber(defaultEmpty) {
	var projectNumber = $('#project-number').text();
	if ((!defaultEmpty || projectNumber) && !/^PM-[0-9a-zA-Z]{5}-20[0-9a-zA-Z]{2}-[0-9a-zA-Z]{3}$/
			.test(projectNumber)) {
		throw {
			element : $('#project-number'),
			message : '课题号必须满足此格式：PM-☐☐☐☐☐-20☐☐-☐☐☐'
		};
	}
	return {
		'ProjectNumber' : projectNumber
	};
}

function checkBudgetNumber(defaultEmpty) {
	var budgetNumber = $('#budget-number').text();
	if ((!defaultEmpty || budgetNumber) && !/^BM-[0-9a-zA-Z]{5}-20[0-9a-zA-Z]{2}-[0-9a-zA-Z]{4}$/
			.test(budgetNumber)) {
		throw {
			element : $('#budget-number'),
			message : '预算代码必须满足此格式：BM-☐☐☐☐☐-20☐☐-☐☐☐☐'
		};
	}
	return {
		'BudgetNumber' : budgetNumber
	};
}

function isDigital(ch) {
	return /[0-9]/.test(ch);
}

function checkMoneyFormat(money, element) {
	var isError = false;
	if (!money || money.length < 4) {
		isError = true;
	} else {
		var len = money.length;
		if (!isDigital(money[len - 1]) || !isDigital(money[len - 2])
				|| money[len - 3] != '.') {
			isError = true;
		}
		var index = 1;
		for (var i = len - 4; i >= 0; i--) {
			var ch = money[i];
			if (index % 4 === 0 && ch != ',' || index % 4 !== 0
					&& !isDigital(ch)) {
				isError = true;
				break;
			}
			index++;
		}
		if (!isDigital(money[0])) {
			isError = true;
		}
		if (money[0] === '0' && len !== 4) {
			isError = true;
		}
	}
	if (isError) {
		throw {
			element : element,
			message : '合同金额必须满足此格式：1,000,000.00'
		}
	}
}

function checkMoney() {
	var money = $('#money').text();
	checkMoneyFormat(money, $('#money'));
	return {
		'Money' : money
	};
}

function checkCurrency() {
	return {
		'Currency' : checkRadio('currency', '请勾选合同金额币种')
	};
}

function checkDateFormat(date, element) {
	if (!/^[0-9]{4}-[0-9]{2}-[0-9]{2}$/.test(date)) {
		throw {
			element : $(element),
			message : '请按格式填写履行日期：yyyy-MM-dd'
		}
	}
}

function checkStartDate() {
	var startDate = $('#start-date').val();
	checkDateFormat(startDate, $('#start-date').closest('td'));
	return {
		'StartDate' : startDate
	};
}

function checkEndDate() {
	var endDate = $('#end-date').val();
	checkDateFormat(endDate, $('#end-date').closest('td'));
	return {
		'EndDate' : endDate
	};
}

function checkTargetCompanyName() {
	return {
		'TargetCompanyName' : checkEmpty('target-company-name', '请填写对方单位名称')
	};
}

function checkArchiveMaterial(defaultEmpty) {
	var archiveMaterial = checkBoxEmpty('archive-material', '请勾选合同签订归档材料', defaultEmpty);
	var archiveMaterialOther = $('#archive-material-other').val();
	if (archiveMaterial.indexOf(-1) >= 0 && !archiveMaterialOther) {
		throw {
			element : $('#archive-material-other').closest('td'),
			message : '你勾选了其他选项，请填写内容'
		}
	}
	return {
		'ArchiveMaterials' : arrayToJsonArray(archiveMaterial,
				'ArchiveMaterialNumber'),
		'ArchiveMaterialOther' : archiveMaterialOther
	};
}

// ============================================================================

function checkPaytimes() {
	var parameters = []
	var payNodes = $('[data-pay-node]');
	for (var i = 0; i < payNodes.length; i++) {
		parameters.push(checkPayNode(payNodes[i]));
	}

	return {
		'PayTimes' : parameters
	}
}

function checkPayNode(node) {
	var payNode = {};

	$.extend(payNode, checkPayType(node));
	$.extend(payNode, checkPayExpectedMoney(node));
	$.extend(payNode, checkPayExpectedCurrency(node));
	$.extend(payNode, checkPayCondition(node));
	$.extend(payNode, checkPayDate(node));
	$.extend(payNode, checkPayCredential(node));
	$.extend(payNode, checkPayActualMoney(node));
	$.extend(payNode, checkPayActualCurrency(node));
	$.extend(payNode, checkPayPayType(node));
	$.extend(payNode, checkIsCredentialFiled(node));
	$.extend(payNode, checkPayComposition(node));
	return payNode;
}

function checkPayExpectedMoney(node) {
	var money = $(node).find('[data-expected-money]').text();
	checkMoneyFormat(money, $(node).find('[data-expected-money]'));
	return {
		'ExpectedMoney' : money,
	}
}

function checkPayActualMoney(node) {
	var money = $(node).find('[data-actual-money]').text();
	checkMoneyFormat(money, $(node).find('[data-actual-money]'));
	return {
		'ActualMoney' : money,
	}
}

function checkNodeRadio(node, dataType, message) {
	var value = $(node).find('[' + dataType + ']:checked').val();
	if (!value) {
		throw {
			element : $(node).find('[' + dataType + ']').closest('td'),
			message : message
		}
	}
	if ("true" === value) {
		return true;
	}
	if ("false" === value) {
		return false;
	}
	return parseInt(value);
}

function checkPayType(node) {
	var type = checkNodeRadio(node, 'data-pay-node-type', '请勾选节点类型');
	return {
		'Type' : type
	}
}

function checkPayPayType(node) {
	var type = checkNodeRadio(node, 'data-pay-type', '请勾选支付类型');
	return {
		'PayType' : type
	}
}

function checkPayExpectedCurrency(node) {
	return {
		'ExpectedCurrency' : checkNodeRadio(node, 'data-expected-currency',
				'请勾选币种')
	}
}

function checkPayActualCurrency(node) {
	return {
		'ActualCurrency' : checkNodeRadio(node, 'data-actual-currency', '请勾选币种')
	}
}

function checkIsCredentialFiled(node) {
	return {
		'IsCredentialFiled' : checkNodeRadio(node, 'data-is-credential-filed',
				'请勾选付款依据是否归档')
	}
}

function checkPayDate(node) {
	var date = $(node).find('[data-pay-date]').val();
	checkDateFormat(date, $(node).find('[data-pay-date]').closest('td'));
	return {
		'PayDate' : date
	};
}

function checkEmptyFormat(value, element, message) {
	if (!value) {
		throw {
			element : element,
			message : message
		}
	}
}

function checkPayCondition(node) {
	var payCondition = $(node).find('[data-pay-condition]').text();
	checkEmptyFormat(payCondition, $(node).find('[data-pay-condition]'),
			'请填写付款条件');
	return {
		'PayCondition' : payCondition
	}
}

function checkPayCredential(node) {
	var payCredential = $(node).find('[data-pay-credential]').text();
	checkEmptyFormat(payCredential, $(node).find('[data-pay-credential]'),
			'请填写付款依据');
	return {
		'PayCredential' : payCredential
	}
}

function checkPayComposition(node) {
	var payComposition = $(node).find('[data-composition]').text();
	checkEmptyFormat(payComposition, $(node).find('[data-composition]'),
			'请填写支出组成');
	return {
		'Composition' : payComposition
	};
}

// ============================================================================

function checkReceiveTimes() {
	var parameters = []
	var receiveNodes = $('[data-receive-node]');
	for (var i = 0; i < receiveNodes.length; i++) {
		parameters.push(checkReceiveNode(receiveNodes[i]));
	}

	return {
		'ReceiveTimes' : parameters
	}
}

function checkReceiveNode(node) {
	var receiveNode = {};
	$.extend(receiveNode, checkReceiveType(node));
	$.extend(receiveNode, checkReceiveExpectedMoney(node));
	$.extend(receiveNode, checkReceiveExpectedCurrency(node));
	$.extend(receiveNode, checkReceiveCondition(node));
	$.extend(receiveNode, checkReceiveDate(node));
	$.extend(receiveNode, checkReceiveActualMoney(node));
	$.extend(receiveNode, checkReceiveActualCurrency(node));
	$.extend(receiveNode, checkReceiveInvoiceState(node));
	return receiveNode;
}

function checkReceiveType(node) {
	var type = checkNodeRadio(node, 'data-type', '请勾选节点类型');
	return {
		'Type' : type
	}
}

function checkReceiveExpectedMoney(node) {
	var money = $(node).find('[data-expected-money]').text();
	checkMoneyFormat(money, $(node).find('[data-expected-money]'));
	return {
		'ExpectedMoney' : money,
	}
}

function checkReceiveActualMoney(node) {
	var money = $(node).find('[data-actual-money]').text();
	checkMoneyFormat(money, $(node).find('[data-actual-money]'));
	return {
		'ActualMoney' : money,
	}
}

function checkReceiveExpectedCurrency(node) {
	return {
		'ExpectedCurrency' : checkNodeRadio(node, 'data-expected-currency',
				'请勾选币种')
	}
}

function checkReceiveActualCurrency(node) {
	return {
		'ActualCurrency' : checkNodeRadio(node, 'data-actual-currency', '请勾选币种')
	}
}

function checkReceiveInvoiceState(node) {
	return {
		'InvoiceState' : checkNodeRadio(node, 'data-invoice-state', '请勾选发票状态')
	}
}

function checkReceiveDate(node) {
	var date = $(node).find('[data-receive-date]').val();
	checkDateFormat(date, $(node).find('[data-receive-date]').closest('td'));
	return {
		'ReceiveDate' : date
	};
}

function checkReceiveCondition(node) {
	var receiveCondition = $(node).find('[data-receive-condition]').text();
	checkEmptyFormat(receiveCondition,
			$(node).find('[data-receive-condition]'), '请填写收款条件');
	return {
		'ReceiveCondition' : receiveCondition
	}
}