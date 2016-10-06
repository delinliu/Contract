function getContractFromServer(ContractID, callback) {
	$.ajax({
		url : '/contract/get-contract',
		data : {
			ContractID : ContractID
		},
		success : function(data) {
			showContract(data);
			if(callback){
				callback(data);
			}
		}
	})
}

function showContract(data) {
	var contract = data.value;
	console.log(contract)
	$('#title').text('合同表' + (contract['Number']?contract['Number']:''));
	fillContract(contract);
}

function disableEdit() {
	$('[contenteditable]').attr('contenteditable', false);
	$('input').attr('readOnly', true)
	$('input[type=radio]').attr('disabled', true);
	$('input[type=checkbox]').attr('disabled', true);
	$('input[type=select]').attr('disabled', true);
	$('.date-picker').datetimepicker('remove');
	$('[data-remove-pay-node]').remove();
	$('[data-remove-receive-node]').remove();
	$('#add-pay-node').remove();
	$('#add-receive-node').remove();
}