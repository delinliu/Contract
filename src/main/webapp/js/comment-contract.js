var contract = null;
var tdID = null;
var defaultText = '请填写审核意见';
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
	case 5:
		break;
	case 6:
		break;
	}

	disableEdit();
	$('#' + tdID).attr('contenteditable', true);
	$('#' + tdID).text(defaultText);
	$('#' + tdID).css('background', '#FAEBD7')
	$('#' + tdID).off('click').on('click', function(){
		if($('#' + tdID).text() === defaultText){
			$('#' + tdID).text('');
		}
	});
	$('#title').text(pageTitle);
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
	console.log(comment)
	if(!comment || comment === defaultText){
		alert('请填写审核意见再提交。')
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