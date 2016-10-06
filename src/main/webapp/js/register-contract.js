var contract = null;
function initRegister(data){
	contract = data.value;
	switch(contract.FinancialFlow){
	case 0:
		financialIn();
		break;
	case 1:
		financialOut();
		break;
	}
	initRegisterAddPayNodeListener();
	
	initRegisterAddReceiveNodeListener();
	$('input[name="financial-flow"]').on('change', function(){
		emptyAllNodes();
		switch(parseInt($('input[name="financial-flow"]:checked').val())){ 
			case 0:
				financialIn();
				break;
			case 1:
				financialOut();
				break;
		}
	});
	
	$('#register-button').off('click').on('click', registerButtonClicked);
}

function initRegisterAddPayNodeListener() {
	$('#add-pay-node').off('click').on('click', addRegisterPayNode);
}

function initRegisterAddReceiveNodeListener() {
	$('#add-receive-node').off('click').on('click', addRegisterReceiveNode);
}

function addRegisterPayNode(){
	addPayNode();
	$('[data-actual-money]').closest('tr').hide();
	$('[data-pay-type]').closest('tr').hide();
	$('[data-is-credential-filed]').closest('tr').hide();
	$('[data-composition]').closest('tr').hide();
}

function addRegisterReceiveNode(){
	addReceiveNode();
	$('[data-actual-money]').closest('tr').hide();
	$('[data-invoice-state]').closest('tr').hide();
}

function financialIn(){
	$('#add-pay-node').hide();
	$('#add-receive-node').show();
}
function financialOut(){
	$('#add-pay-node').show();
	$('#add-receive-node').hide();
}

function registerButtonClicked(){
	$('#error-hint-div').hide();
	try {
		var parameters = {ContractID:contract.ContractID};
		$.extend(parameters, checkNumber(), checkName(), checkFinancialFlow(),
				checkIsForeignContract(), checkDescription(), checkObject(),
				checkFundsType(), checkDepartment(), checkOperator(),
				checkProjectNumber(), checkBudgetNumber(), checkMoney(),
				checkCurrency(), checkStartDate(), checkEndDate(),
				checkTargetCompanyName(), checkArchiveMaterial());
		$.extend(parameters, checkRegisterPaytimes());
		$.extend(parameters, checkRegisterReceiveTimes());

		$('#register-button').off('click');
		registerContract(parameters);
	} catch (e) {
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
}

function checkRegisterPaytimes() {
	var parameters = []
	var payNodes = $('[data-pay-node]');
	for (var i = 0; i < payNodes.length; i++) {
		parameters.push(checkRegisterPayNode(payNodes[i]));
	}

	return {
		'PayTimes' : parameters
	}
}

function checkRegisterPayNode(node) {
	var payNode = {};

	$.extend(payNode, checkPayType(node));
	$.extend(payNode, checkPayExpectedMoney(node));
	$.extend(payNode, checkPayExpectedCurrency(node));
	$.extend(payNode, checkPayCondition(node));
	$.extend(payNode, checkPayDate(node));
	$.extend(payNode, checkPayCredential(node));
//	$.extend(payNode, checkPayActualMoney(node));
//	$.extend(payNode, checkPayActualCurrency(node));
//	$.extend(payNode, checkPayPayType(node));
//	$.extend(payNode, checkIsCredentialFiled(node));
//	$.extend(payNode, checkPayComposition(node));
	return payNode;
}

function checkRegisterReceiveTimes() {
	var parameters = []
	var receiveNodes = $('[data-receive-node]');
	for (var i = 0; i < receiveNodes.length; i++) {
		parameters.push(checkRegisterReceiveNode(receiveNodes[i]));
	}

	return {
		'ReceiveTimes' : parameters
	}
}

function checkRegisterReceiveNode(node) {
	var receiveNode = {};
	$.extend(receiveNode, checkReceiveType(node));
	$.extend(receiveNode, checkReceiveExpectedMoney(node));
	$.extend(receiveNode, checkReceiveExpectedCurrency(node));
	$.extend(receiveNode, checkReceiveCondition(node));
	$.extend(receiveNode, checkReceiveDate(node));
//	$.extend(receiveNode, checkReceiveActualMoney(node));
//	$.extend(receiveNode, checkReceiveActualCurrency(node));
//	$.extend(receiveNode, checkReceiveInvoiceState(node));
	return receiveNode;
}