package db.migration;

import com.googlecode.flyway.core.migration.java.JavaMigration;
import org.bahmni.dbmigrate.*;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.ArrayList;
import java.util.Arrays;

public class V1_11__Registration implements JavaMigration {

    public void migrate(JdbcTemplate jdbcTemplate) throws Exception {
        HttpRequest http = new HttpRequest(new OpenmrsDataProperties());
        http.post("/concept", ConceptJson.createConcept("CHIEF COMPLAINT", ConceptDataType.Text, ConceptClass.Symptom));
        http.post("/concept", ConceptJson.createConcept("REGISTRATION FEES", ConceptDataType.Numeric, ConceptClass.Misc));
        http.post("/concept", ConceptJson.createConcept("HEIGHT", ConceptDataType.Numeric, ConceptClass.Test));
        http.post("/concept", ConceptJson.createConcept("WEIGHT", ConceptDataType.Numeric, ConceptClass.Test));
        http.post("/concept", ConceptJson.createConcept("BMI", ConceptDataType.Numeric, ConceptClass.Test));

        http.post("/concept", ConceptJson.createConcept("REGISTRATION_CONCEPTS", ConceptDataType.NA, ConceptClass.ConvSet ,
                new ArrayList<>(Arrays.asList("CHIEF COMPLAINT", "REGISTRATION FEES", "HEIGHT", "WEIGHT", "BMI"))));
    }
}
