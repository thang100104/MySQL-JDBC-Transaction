package com.codegym.dao;

import com.codegym.model.User;
import java.sql.SQLException;
import java.util.List;

public interface IUserDAO {
    List<User> selectAllUsers();
    User selectUser(int id);
    boolean updateUser(User user) throws SQLException;
    boolean deleteUser(int id) throws SQLException;

    void addUserTransaction(User user, int[] permissionIds) throws SQLException;
}
