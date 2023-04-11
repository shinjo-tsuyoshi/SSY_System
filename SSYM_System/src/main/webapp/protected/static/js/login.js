/**********************************************************************************
 * [概要] パスワード表示処理
 * [詳細] 目玉アイコンクリック時にパスワードが表示・非表示になる
 * 
 **********************************************************************************/
$(function() {
	
	$('#eye_icon').click(function(){
		// classを追加したり削除する
	  	$(this)
	    .toggleClass('eye')
	    .toggleClass('eye-solid');
	    
	    // ログインボタン
		let inputLogin = $('#longinPw');
		// 登録ボタン
		let inputInsert = $('#userInsertPw');
		
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