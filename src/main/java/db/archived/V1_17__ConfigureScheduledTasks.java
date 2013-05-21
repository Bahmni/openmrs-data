package db.archived;

import com.googlecode.flyway.core.api.migration.jdbc.JdbcMigration;
import org.bahmni.dbmigrate.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class V1_17__ConfigureScheduledTasks implements JdbcMigration {
    private static final String DeleteScheduledTasks = "delete from scheduler_task_config where name = ?";
    private static final String UpdateSchedulerLogin = "update property_value set property_value = ? from global_property where property = ?";

    public void migrate(Connection connection) throws Exception {
        deleteTask(connection, "Update Concept Index");
        deleteTask(connection, "Auto Close Visits Task");
        updateSchedulerProperty(connection, "scheduler.username", OpenMRSDataProperties.getInstance().getOpenMRSUser());
        updateSchedulerProperty(connection, "scheduler.password", OpenMRSDataProperties.getInstance().getOpenMRSPassword());
    }

    private void updateSchedulerProperty(Connection connection, String propertyName, String propertyValue) throws SQLException {
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