$(function(){
	showAndHideTables();
	addPreRegisterListeners();
	initDatePicker();
})

function showAndHideTables(){
	$('#pay-nodes').hide();
	$('#add-pay-node').hide();
	$('#receive-nodes').hide();
	$('#add-receive-node').hide();
	
	$('#number').parent().children()[0].remove();
	$('#number').remove();
	$('#name').attr('colspan', 3);
}

function addPreRegisterListeners(){
	$('#create-button').off('click').on('click', preRegisterSubmit);
}

function preRegisterSubmit(){
	$('#error-hint-div').hide();
	try {
		var parameters = {};
		$.extend(parameters, checkName(), checkFinancialFlow(),
				checkIsForeignContract(), checkDescription(), checkObject(),
				checkFundsType(), checkDepartment(), checkOperator(),
				checkProjectNumber(true), checkBudgetNumber(true),
				checkMoney(),
				checkCurrency(), checkStartDate(), checkEndDate(),
				checkTargetCompanyName(), checkArchiveMaterial(true)
				);
		// $.extend(parameters, checkPaytimes());
		// $.extend(parameters, checkReceiveTimes());

		createContract(parameters);
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