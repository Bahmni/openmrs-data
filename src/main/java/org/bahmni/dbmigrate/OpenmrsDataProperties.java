package org.bahmni.dbmigrate;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class OpenMRSDataProperties {
    private final Properties properties;
    private static OpenMRSDataProperties instance;

    public static OpenMRSDataProperties getInstance() throws IOException {
        if (instance == null) instance = new OpenMRSDataProperties();

        return instance;
    }

    private OpenMRSDataProperties() throws IOException {
        String propertiesFile = System.getProperty("propertiesFile");

        properties = new Properties();
        try (InputStream in = this.getClass().getResourceAsStream(propertiesFile)) {
            properties.load(in);
        }
    }

    public String getOpenMRSUrl() {
        return properties.getProperty("openmrs.url");
    }

    public String getOpenMRSUser() {
        return properties.getProperty("openmrs.user");
    }

    public String getOpenMRSPassword() {
        return properties.getProperty("openmrs.password");
    }
}