<?php 

require_once 'core/init.php';

// Require header
require_once 'includes/header.php';

if (isset($_POST['action']))
    {
        // Xử lý POST action
        $action = trim(addslashes(htmlspecialchars($_POST['action'])));
		
		if ($action == 'add_reg')
		{
			//Xu ly cac gia tri
			$user_register = trim(htmlspecialchars(addslashes($_POST['user_register'])));
			$email_register = trim(htmlspecialchars(addslashes($_POST['email_register'])));
			$pass_register = trim(htmlspecialchars(addslashes($_POST['pass_register'])));
			$repass_register = trim(htmlspecialchars(addslashes($_POST['repass_register'])));

			// Các biến xử lý thông báo
			$show_alert = '<script>$("#formRegister .alert").removeClass("hidden");</script>';
			$hide_alert = '<script>$("#formRegister .alert").addClass("hidden");</script>';
			$success = '<script>$("#formRegister .alert").attr("class", "alert alert-success");</script>';

			// Kiểm tra tên đăng nhập
			$sql_check_un_exist = "SELECT username FROM accounts WHERE username = '$user_register'";
		
			if ($user_register == '' || $email_register == '' || $pass_register == '' || $repass_register == '') {
				echo $show_alert.'Vui lòng điền đầy đủ thông tin.';
			} else if (strlen($user_register) < 6 || strlen($user_register) > 32) {
				echo $show_alert.'Tên đăng nhập nằm trong khoảng 6-32 ký tự.';
			} else if (preg_match('/\W/', $user_register)) {
				echo $show_alert.'Tên đăng nhập không chứa kí tự đặc biệt và khoảng trắng.';
			} else if ($db->num_rows($sql_check_un_exist)) {
				echo $show_alert.'Tên đăng nhập đã tồn tại.';
			} else if (strlen($pass_register) < 6) {
				echo $show_alert.'Mật khẩu quá ngắn.';
			} else if ($pass_register != $repass_register) {
				echo $show_alert.'Mật khẩu nhập lại không khớp.';
			} else {
				$pass_register = md5($pass_register);
				$sql_add_acc = "INSERT INTO accounts VALUES (
					'',
					'$user_register',
					'$pass_register',
					'',
					'$email_register',
					'0',
					'0',
					'$date_current',
					'',
					'',
					''
				)";
				$db->query($sql_add_acc);
				$db->close();

				echo $show_alert.$success.'Thêm tài khoản thành công.';
				new Redirect($_DOMAIN); // Trở về trang đăng nhập
			}
		}
	}
	?>
	<div class="container">
	        <div class="row">
		        <div class="col-md-6">
			        <form method="POST" id="formRegister" onsubmit="return false;">
				        <div class="form-group">
					        <div class="input-group">
			  			        <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
			  			        <input type="text" class="form-control" placeholder="Tên đăng nhập" id="user_register">
					        </div>
				        </div>

                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
                                <input type="email" class="form-control" placeholder="Email" id="email_register">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                                <input type="password" class="form-control" placeholder="Mật khẩu" id="pass_register">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                                <input type="password" class="form-control" placeholder="Nhập lại mật khẩu" id="repass_register">
                            </div>
                        </div>

                        <div class="form-group">
                            <button type="submit" class="btn btn-primary">Đăng Ký</button>
                        </div>

                        <div class="form-group">
                            Bạn đã có tài khoản? <a href="signin.php">Đăng Nhập</a>
                        </div>
                        <div class="alert alert-danger hidden"></div>
			        </form>
		        </div>
	        </div>
        </div>
<?php require_once 'includes/footer.php'; ?>


	



	
