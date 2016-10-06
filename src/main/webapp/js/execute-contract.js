var contract = null;
function initExecuteContract(data){
	disableEdit();
	$('[data-receive-invoice-time]').text('系统自动生成')
	contract = data.value;
	var background = '#FAEBD7';
	for(var i=0; i<contract.PayTimes.length; i++){
		var payNode = contract.PayTimes[i];
		if(payNode.State === 1){
			var nodeID = '[data-pay-node=' + payNode.PayNodeID + ']';
			$(nodeID).find('[data-actual-money]').css('background', background);
			$(nodeID).find('[data-actual-currency]').closest('td').css('background', background);
			$(nodeID).find('[data-pay-type]').closest('td').css('background', background);
			$(nodeID).find('[data-is-credential-filed]').closest('td').css('background', background);
			$(nodeID).find('[data-pay-created-time]').css('background', background);
			$(nodeID).find('[data-composition]').css('background', background);
			
			$(nodeID).find('[data-actual-money]').attr('contenteditable', true);
			$(nodeID).find('[data-actual-currency]').attr('disabled', false);
			$(nodeID).find('[data-pay-type]').attr('disabled', false);
			$(nodeID).find('[data-is-credential-filed]').attr('disabled', false);
			$(nodeID).find('[data-composition]').attr('contenteditable', true);
			$(nodeID).append(createSubmitButton());
			break;
		}
	}
	for(var i=0; i<contract.ReceiveTimes.length; i++){
		var receiveNode = contract.ReceiveTimes[i];
		if(receiveNode.State === 1){
			var nodeID = '[data-receive-node=' + receiveNode.ReceiveNodeID + ']';
			$(nodeID).find('[data-actual-money]').css('background', background);
			$(nodeID).find('[data-actual-currency]').closest('td').css('background', background);
			$(nodeID).find('[data-invoice-state]').closest('td').css('background', background);
			$(nodeID).find('[data-receive-invoice-time]').css('background', background);
			
			$(nodeID).find('[data-actual-money]').attr('contenteditable', true);
			$(nodeID).find('[data-actual-currency]').attr('disabled', false);
			$(nodeID).find('[data-invoice-state]').attr('disabled', false);
			$(nodeID).append(createSubmitButton());
			break;
		}
	}
	initExecuteSubmitListener();
}

function createSubmitButton(){
	return '<tr><td colspan=5><button class="btn btn-primary" id="execute-submit">确认提交</button></td></tr>';
}

function initExecuteSubmitListener(){
	$('#execute-submit').off('click').on('click', executeSubmit);
}

function executeSubmit(){
	for(var i=0; i<contract.PayTimes.length; i++){
		var payNode = contract.PayTimes[i];
		if(payNode.State === 1){
			var nodeID = '[data-pay-node=' + payNode.PayNodeID + ']';
			var payNodeData = {};
			try{
				payNodeData = checkPayNode($(nodeID));
				payNodeData.PayNodeID = payNode.PayNodeID; 
				submitPayNode(payNodeData);
			}catch(e){
				showErrorHint(e);
			}
			break;
		}
	}
	for(var i=0; i<contract.ReceiveTimes.length; i++){
		var receiveNode = contract.ReceiveTimes[i];
		if(receiveNode.State === 1){
			var nodeID = '[data-receive-node=' + receiveNode.ReceiveNodeID + ']';
			var receiveNodeData = {};
			try{
				receiveNodeData = checkReceiveNode($(nodeID));
				receiveNodeData.ReceiveNodeID = receiveNode.ReceiveNodeID; 
				submitReceiveNode(receiveNodeData);
			}catch(e){
				showErrorHint(e);
			}
			break;
		}
	}
}

function submitPayNode(parameters){
	submitNode(parameters, '/contract/execute-pay');
}

function submitReceiveNode(parameters){
	submitNode(parameters, '/contract/execute-receive');
}

function submitNode(parameters, url){
	console.log(parameters)
	$.ajax({
		url : url,
		type : 'post',
		contentType : 'application/json',
		data : JSON.stringify(parameters),
		dataType : 'json',
		success : function(data) {
			if(data.success){
				location.href = '/contract/view-contract/' + getLastPathFromUrl()
			}else{
				alert(data.message);
			}
			
		}
	})
}