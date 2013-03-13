package org.bahmni.dbmigrate;

import java.io.IOException;
import java.util.Properties;

public class OpenmrsDataProperties {

    private final Properties properties;

    public OpenmrsDataProperties() throws IOException {
        properties = new Properties();
        properties.load(OpenmrsDataProperties.class.getResourceAsStream("/openmrs-data.properties"));
    }

    public String getOpenmrsUrl() {
        return get("openmrsUrl");
    }

    public String getOpenmrsUser() {
        return get("openmrsUser");
    }

    public String getOpenmrsPassword() {
        return get("openmrsPassword");
    }

    private String get(String key) {
        return (String) properties.get(key);
    }
}
