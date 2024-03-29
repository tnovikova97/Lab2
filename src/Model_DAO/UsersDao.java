package Model_DAO;

import Beans.UsersBean;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import static Database.DBConnection.createConnection;

public class UsersDao {

    public static ArrayList<UsersBean> checkLogin(String login) {
        ArrayList<UsersBean> usersBeans = new ArrayList<UsersBean>();
        String query = null;

        if (login!=null) {
            query = "select * from users where login =' "+ login +"'order by id";
        }

        try {
            Connection connection = createConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);

            while (resultSet.next()){
                int id = resultSet.getInt(1);
                String username = resultSet.getString(2);
                String surname = resultSet.getString(3);
                String email = resultSet.getString(4);
                String login1 = resultSet.getString(5);
                String password = resultSet.getString(6);
                String role = resultSet.getString(7);
                UsersBean usersBean = new UsersBean(id, username, surname, email, login1, password, role);
                usersBeans.add(usersBean);

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return usersBeans;
    }
}
