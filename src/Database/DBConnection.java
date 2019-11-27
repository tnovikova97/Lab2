package Database;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    public static Connection createConnection()
    {
        Connection connection = null;
        String url = "jdbc:postgresql://localhost:5432/jewelry?useUnicode=true&characterEncoding=utf8";
        // URL
        String username = "postgres";
        // username
        String password = "0000";
        // password

        try
        {
            try
            {
                Class.forName("org.postgresql.Driver");
                //загрузка postgre драйверов.
                // Различны для разных БД
            }
            catch (ClassNotFoundException e)
            {
                e.printStackTrace();
            }

            connection = DriverManager.getConnection(url, username, password);
            //попытка подключиться к базе данных
            System.out.println("Printing connection object "+connection);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }

        System.out.println("connected");
        return connection;
    }
}