<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<title>Thêm User bằng Transaction</title>
<style>
body{font-family:Arial;background:#f8fafc}
.box{width:520px;margin:50px auto;background:white;padding:28px;border-radius:8px}
input[type=text],input[type=email]{width:100%;padding:10px;box-sizing:border-box;margin-bottom:12px}
.permissions{display:flex;gap:15px;flex-wrap:wrap;margin:8px 0 18px}
button{padding:10px 18px;background:#27ae60;color:white;border:0;border-radius:4px}
</style>
</head>
<body>
<div class="box">
<h2>Thêm mới User</h2>
<form action="${pageContext.request.contextPath}/users?action=create" method="post">
<label>Tên:</label>
<input type="text" name="name" required>

<label>Email:</label>
<input type="email" name="email" required>

<label>Quốc gia:</label>
<input type="text" name="country" required>

<div class="form-group">
<label>Quyền hạn (Permissions):</label>
<div class="permissions">
<label><input type="checkbox" name="permissions" value="1"> Thêm (Add)</label>
<label><input type="checkbox" name="permissions" value="2"> Sửa (Edit)</label>
<label><input type="checkbox" name="permissions" value="3"> Xoá (Delete)</label>
<label><input type="checkbox" name="permissions" value="4"> Xem (View)</label>
</div>
</div>

<button type="submit">Lưu thông tin</button>
</form>
<p><a href="${pageContext.request.contextPath}/users">Quay lại danh sách</a></p>
</div>
</body>
</html>
