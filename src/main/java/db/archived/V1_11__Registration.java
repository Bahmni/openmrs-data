package db.archived;

import com.googlecode.flyway.core.api.migration.jdbc.JdbcMigration;
import org.bahmni.dbmigrate.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Arrays;

public class V1_11__Registration implements JdbcMigration {
    public void migrate(Connection connection) throws Exception {
        HttpRequest http = new HttpRequest(OpenMRSDataProperties.getInstance());
        http.post("/concept", ConceptJson.createConcept("CHIEF COMPLAINT", ConceptDataType.Text, ConceptClass.Symptom));
        http.post("/concept", ConceptJson.createConcept("REGISTRATION FEES", ConceptDataType.Numeric, ConceptClass.Misc));
        http.post("/concept", ConceptJson.createConcept("HEIGHT", ConceptDataType.Numeric, ConceptClass.Test));
        http.post("/concept", ConceptJson.createConcept("WEIGHT", ConceptDataType.Numeric, ConceptClass.Test));
        http.post("/concept", ConceptJson.createConcept("BMI", ConceptDataType.Numeric, ConceptClass.Test));

        http.post("/concept", ConceptJson.createConcept("REGISTRATION_CONCEPTS", ConceptDataType.NA, ConceptClass.ConvSet ,
                new ArrayList<>(Arrays.asList("CHIEF COMPLAINT", "REGISTRATION FEES", "HEIGHT", "WEIGHT", "BMI"))));
    }
}