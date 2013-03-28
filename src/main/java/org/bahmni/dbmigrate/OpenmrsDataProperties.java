package org.bahmni.dbmigrate;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

public class OpenmrsDataProperties {

    private final Properties properties;

    public OpenmrsDataProperties() throws IOException {
        String propertyFile = System.getenv("OPENMRS_PROP_FILE");
        if (propertyFile == null) throw new IllegalArgumentException("Environment variable OPENMRS_PROP_FILE missing.");
        FileInputStream propFile =  new FileInputStream(propertyFile);

        properties = new Properties(System.getProperties());
        properties.load(propFile);
    }

    public String getOpenmrsUrl() {
        return get("openmrs.url");
    }

    public String getOpenmrsUser() {
        return get("openmrs.user");
    }

    public String getOpenmrsPassword() {
        return get("openmrs.password");
    }

    private String get(String key) {
        return (String) properties.get(key);
    }
}