var contract = null;
var tdID = null;
var defaultText = '请填写审核意见';
var color = '#FAEBD7';
function initCommentTable(data) {
	contract = data.value;
	var pageTitle = '';
	switch(contract.State){
	case 0:
		tdID = 'PreRegisterContractManagerComments';
		pageTitle = '合同管理员预审批';
		hideNumber();
		break;
	case 1:
		tdID = 'PreRegisterProjectManagerComments';
		pageTitle = '项目分管领导预审批';
		hideNumber();
		break;
	case 2:
		break;
	case 3:
		tdID = 'FormalRegisterContractManagerComments';
		pageTitle = '合同管理员正式审批';
		break;
	case 4:
		tdID = 'FormalRegisterProjectManagerComments';
		pageTitle = '项目分管领导正式审批';
		break;
	case 5: // 合同正在执行中，进行付款节点或者收款节点审核
		initNodeComment();
		break;
	case 6:
		break;
	}

	disableEdit();
	$('#' + tdID).attr('contenteditable', true);
	$('#' + tdID).text(defaultText);
	$('#' + tdID).css('background', color)
	$('#' + tdID).off('click').on('click', function(){
		if($('#' + tdID).text() === defaultText){
			$('#' + tdID).text('');
		}
	});
	$('#title').text(pageTitle);
} 

function initNodeComment(){
	var payNodes = contract.PayTimes;
	for(var i=0; i<payNodes.length; i++){
		var node = payNodes[i];
		var tableID = '[data-pay-node=' + node.PayNodeID + ']';
		if(node.State === 2 || node.State === 3){
			tdID = 'pay-node-comment';
			$(tableID).append('<tr><td>付款节点审批</td><td>' + (node.State===2?'合同管理员':'项目分管领导') + '审核意见</td><td colspan=3 id="' + tdID + '"></td></tr>')
			$($(tableID).find('td')[0]).css('background', color);
		}
	}
	var receiveNodes = contract.ReceiveTimes;
	for(var i=0; i<receiveNodes.length; i++){ 
		var node = receiveNodes[i];
		var tableID = '[data-receive-node=' + node.ReceiveNodeID + ']';
		if(node.State === 2 || node.State === 3){
			tdID = 'receive-node-comment';
			$(tableID).append('<tr><td>收款节点审批</td><td>' + (node.State===2?'合同管理员':'项目分管领导') + '审核意见</td><td colspan=3 id="' + tdID + '"></td></tr>')
			$($(tableID).find('td')[0]).css('background', color);
		}
	}
}

function hideNumber(){
	$('#number').parent().children()[0].remove();
	$('#number').remove();
	$('#name').attr('colspan', 3);
}

function initCommentListener() {
	$('#comment-button').off('click').on('click', submitComment);
}

function submitComment() {
	var comment = $('#' + tdID).text();
	if(!comment || comment === defaultText){
		alert('请填写审核意见再提交。')
		return;
	}
	$('#comment-button').off('click');
	$.ajax({
		url : '/contract/comment-contract',
		type : 'post',
		contentType : 'application/json',
		data : JSON.stringify({
			CommentType : getSearchArgs('comment-type'),
			ContractID : getLastPathFromUrl(),
			Comment : comment
		}),
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