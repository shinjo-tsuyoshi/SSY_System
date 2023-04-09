
$(function() {
	
	$('.icon').click(function(){
	  	$(this)
	    .toggleClass('eye')
	    .toggleClass('eye-solid');
	    
		let input = $(this).prev('input');
	    if (input.attr('type') == 'text') {
	      input.attr('type','password');
	    } else {
	      input.attr('type','text');
	    }
	})
	
  $('.toggle-pass').on('click', function() {
    $(this).toggleClass('fa-eye fa-eye-slash');
    var input = $(this).prev('input');
    if (input.attr('type') == 'text') {
      input.attr('type','password');
    } else {
      input.attr('type','text');
    }
  });
});

/**********************************************************************************
 * [概要] 初期表示
 * [詳細] 
 **********************************************************************************/
function do_show() {

	/*-------------------------------------------------------------------------
	  [概要] 確認ボタンイベント
	-------------------------------------------------------------------------*/
	$('.js-next-btn').on('click', function() {
		
		// エラーチェック
		if(!check_error()) {
			return;
		}
		
		// ticket_issueへ入力された値を渡す
		sessionStorage.setItem("longinId", $('#longinId').val());
		sessionStorage.setItem("longinPw", $('#longinPw').val());
			
		$(this).attr("href", "./ticket_issue.jsp");
	});
}

/**********************************************************************************
 * [概要] エラーチェック処理
 * [詳細]
 * return true 正常, false エラー
 **********************************************************************************/
function check_error() {
	
	if($('#longinId').val() == "" || $('#longinId').val() == "") {
		window.confirm( "ログインIDを入力してください。" );
		return false;
	}
	
	if($('#longinPw').val() == "" || $('#longinPw').val() == "") {
		window.confirm( "パスワードを入力してください。" );
		return false;
	}
	
	return true;
}