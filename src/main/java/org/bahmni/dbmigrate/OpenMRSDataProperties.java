package org.bahmni.dbmigrate;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

public class OpenMRSDataProperties {
    private static OpenMRSDataProperties instance;
    private static Properties properties;

    public static OpenMRSDataProperties getInstance() throws IOException {
        if (instance == null) instance = new OpenMRSDataProperties();

        String propertyFile = System.getenv("OPENMRS_PROP_FILE");
        if (propertyFile == null) throw new IllegalArgumentException("Environment variable OPENMRS_PROP_FILE missing.");
        FileInputStream propFile =  new FileInputStream(propertyFile);

        properties = new Properties(System.getProperties());
        properties.load(propFile);
        return instance;
    }

    public String getOpenMRSUrl() {
        throw new RuntimeException("Not used right now");
    }

    public String getOpenMRSUser() {
        return "admin";
    }

    public String getOpenMRSPassword() {
        return properties.getProperty("openmrs.password");
    }
}