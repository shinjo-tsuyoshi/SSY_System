/**********************************************************************************
 * [概要] パスワード表示処理
 * [詳細] 目玉アイコンクリック時にパスワードが表示・非表示になる
 **********************************************************************************/
$(function() {
	
		// ログインボタン
		let inputLoginId = $('#longinId');
		let inputLoginPw = $('#longinPw');
		// 登録ボタン
		let inputInsertId = $('#userInsertId');
		let inputInsertPw = $('#userInsertPw');

	
	$('#eye_icon').click(function(){
		// classを追加したり削除する
	  	$(this)
	    .toggleClass('eye')
	    .toggleClass('eye-solid');
	    		
		// ログイン画面typeの変更分岐
	    if (inputLogin.attr('type') == 'text') {
	      inputLogin.attr('type','password');
	    } else {
	      inputLogin.attr('type','text');
	    }
	    
		// 登録画面typeの変更分岐
	   	if (inputInsert.attr('type') == 'text') {
	      inputInsert.attr('type','password');
	    } else {
	      inputInsert.attr('type','text');
	    }
	})
	
	/*-------------------------------------------------------------------------
	  [概要] 入力チェックイベント
	  [詳細] 半角英数字のみ入力可能処理
	-------------------------------------------------------------------------*/
	// ログインID半角文字の場合
    $(inputLoginId)
    .off(".inputcontrol.alphanum")
    .on("keyup.inputcontrol.alphanum", function(){
      $(this).val($(this).val().replace(/[^0-9a-zA-Z]/g,""));
    });
    
    // ログインPw半角文字の場合
    $(inputLoginPw)
    .off(".inputcontrol.alphanum")
    .on("keyup.inputcontrol.alphanum", function(){
      $(this).val($(this).val().replace(/[^0-9a-zA-Z]/g,""));
    });
    
    // 登録ID半角文字の場合
    $(inputInsertId)
    .off(".inputcontrol.alphanum")
    .on("keyup.inputcontrol.alphanum", function(){
      $(this).val($(this).val().replace(/[^0-9a-zA-Z]/g,""));
    });
    
    // 登録Pw半角文字の場合
    $(inputInsertPw)
    .off(".inputcontrol.alphanum")
    .on("keyup.inputcontrol.alphanum", function(){
      $(this).val($(this).val().replace(/[^0-9a-zA-Z]/g,""));
    });

});

/**********************************************************************************
 * [概要] 初期表示
 * [詳細] 
 **********************************************************************************/
function do_show() {

	/*-------------------------------------------------------------------------
	  [概要] ログインボタンイベント
	-------------------------------------------------------------------------*/
	$('#js-next-btn').on('click', function() {
		
		// エラーチェック
		if(!check_error()) {
			return;
		}
		
		// ticket_issueへ入力された値を渡す
		sessionStorage.setItem("longinId", $('#longinId').val());
		sessionStorage.setItem("longinPw", $('#longinPw').val());
			
		$(this).attr("href", "./ticket_issue.jsp");
	});

	/*-------------------------------------------------------------------------
	  [概要] 登録ボタンイベント
	-------------------------------------------------------------------------*/
	$('#js-insert-btn').on('click', function() {
		
		// エラーチェック
		if(!check_error()) {
			return;
		}
		
		// ticket_issueへ入力された値を渡す
		sessionStorage.setItem("userInsertId", $('#userInsertId').val());
		sessionStorage.setItem("userInsertPw", $('#userInsertPw').val());
			
		$(this).attr("href", "./ticket_issue.jsp");
	});

}

/**********************************************************************************
 * [概要] エラーチェック処理
 * [詳細]
 * return true 正常, false エラー
 **********************************************************************************/
function check_error() {
	// ログイン・登録のID値がない場合
	if($('#longinId').val() == "" || $('#userInsertId').val() == "") {
		window.confirm( "ログインIDを入力してください。" );
		return false;
	}
	// ログイン・登録の値がない場合
	if($('#longinPw').val() == "" || $('#userInsertPw').val() == "") {
		window.confirm( "パスワードを入力してください。" );
		return false;
	}
	
	return true;
}