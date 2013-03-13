package db.migration;

import com.googlecode.flyway.core.migration.java.JavaMigration;
import org.bahmni.dbmigrate.ConceptClass;
import org.bahmni.dbmigrate.ConceptDataType;
import org.bahmni.dbmigrate.ConceptJson;
import org.bahmni.dbmigrate.HttpRequest;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.ArrayList;
import java.util.Arrays;

public class V1_11__Registration implements JavaMigration {

    public void migrate(JdbcTemplate jdbcTemplate) throws Exception {
        HttpRequest http = new HttpRequest("http://localhost:8080/openmrs/ws/rest/v1/concept");
        http.post(ConceptJson.createConcept("CHIEF COMPLAINT", ConceptDataType.Text, ConceptClass.Symptom));
        http.post(ConceptJson.createConcept("REGISTRATION FEES", ConceptDataType.Numeric, ConceptClass.Misc));
        http.post(ConceptJson.createConcept("HEIGHT", ConceptDataType.Numeric, ConceptClass.Test));
        http.post(ConceptJson.createConcept("WEIGHT", ConceptDataType.Numeric, ConceptClass.Test));

        http.post(ConceptJson.createConcept("REGISTRATION_CONCEPTS", ConceptDataType.Numeric, ConceptClass.Test ,
                new ArrayList<String>(Arrays.asList("CHIEF COMPLAINT", "REGISTRATION FEES", "HEIGHT", "WEIGHT"))));
    }
}
