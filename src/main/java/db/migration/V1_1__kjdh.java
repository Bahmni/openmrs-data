package db.migration;

import com.googlecode.flyway.core.migration.java.JavaMigration;
import org.apache.commons.codec.binary.Base64;
import org.apache.http.client.fluent.Request;
import org.apache.http.entity.ContentType;
import org.springframework.jdbc.core.JdbcTemplate;

public class V1_1__kjdh implements JavaMigration {

    public void migrate(JdbcTemplate jdbcTemplate) throws Exception {
        Request.Post("http://localhost:8080/openmrs/ws/rest/v1/concept")
                .addHeader("Content-Type", "application/json")
                .addHeader("Accept", "application/json")
                .addHeader("Authorization", "Basic " + new String(Base64.encodeBase64("admin:Hello123".getBytes())))
                .bodyString("{\n" +
                        " \"names\": [{\"name\": \"sushi\",\"locale\":\"en\", \"conceptNameType\":\"FULLY_SPECIFIED\"}],\n" +
                        " \"datatype\": \"N/A\",\n" +
                        " \"conceptClass\": \"Test\"\n" +
                        "}", ContentType.APPLICATION_JSON)
                .execute();
    }
}
