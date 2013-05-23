package db.migration;

import com.googlecode.flyway.core.api.migration.jdbc.JdbcMigration;
import org.bahmni.dbmigrate.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class V1_18__ConfigureScheduledTasks implements JdbcMigration {
    private static final String DeleteScheduledTasks = "delete from scheduler_task_config where name = ?";
    private static final String UpdateSchedulerLogin = "update global_property set property_value = ? where property = ?";

    public void migrate(Connection connection) throws Exception {
        deleteTask(connection, "Update Concept Index");
        deleteTask(connection, "Auto Close Visits Task");
        updateGlobalProperty(connection, "scheduler.username", OpenMRSDataProperties.getInstance().getOpenMRSUser());
        updateGlobalProperty(connection, "scheduler.password", OpenMRSDataProperties.getInstance().getOpenMRSPassword());
    }

    private void updateGlobalProperty(Connection connection, String propertyName, String propertyValue) throws SQLException {
        try (PreparedStatement preparedStatement = connection.prepareStatement(UpdateSchedulerLogin)) {
            preparedStatement.setString(1, propertyValue);
            preparedStatement.setString(2, propertyName);
            preparedStatement.executeUpdate();
        }
    }

    private void deleteTask(Connection connection, String taskName) throws SQLException {
        try (PreparedStatement preparedStatement = connection.prepareStatement(DeleteScheduledTasks)) {
            preparedStatement.setString(1, taskName);
            preparedStatement.executeUpdate();
        }
    }
}