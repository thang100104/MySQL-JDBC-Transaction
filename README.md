# MySQL JDBC Transaction

Bài thực hành nâng cấp ứng dụng quản lý User để sử dụng JDBC Transaction.

## Mục tiêu
Đảm bảo việc:
1. Thêm User vào bảng `users`
2. Gán Permission vào bảng `user_permission`

được thực hiện trong cùng một transaction.

Nếu một bước lỗi, toàn bộ thao tác sẽ `rollback()`.

## Chức năng chính
- Hiển thị danh sách User
- Thêm User
- Chọn nhiều quyền: Add, Edit, Delete, View
- Sửa User
- Xóa User
- JDBC Transaction với `setAutoCommit(false)`, `commit()`, `rollback()`

## Cơ sở dữ liệu
Chạy file:

`database.sql`

để tạo:
- `users`
- `permission`
- `user_permission`

## Cấu hình MySQL
Mở:
`src/main/java/com/codegym/dao/UserDAO.java`

và sửa:
```java
private final String jdbcUsername = "root";
private final String jdbcPassword = "password";
```

## Build
```bash
mvn clean package
```

Deploy:
`target/user-management.war`

Truy cập:
`http://localhost:8080/user-management/users`
