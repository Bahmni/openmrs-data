package org.bahmni.dbmigrate;

import org.apache.commons.codec.binary.Base64;
import org.apache.http.client.fluent.Request;
import org.apache.http.client.fluent.Response;
import org.apache.http.entity.ContentType;

import java.io.IOException;

public class HttpRequest {

    private OpenMRSDataProperties properties;

    public HttpRequest(OpenMRSDataProperties properties) {
        this.properties = properties;
    }

    public void post(String relativeUrl, String postContent) throws IOException {
        Response execute = Request.Post(properties.getOpenMRSUrl() + relativeUrl)
                .addHeader("Content-Type", "application/json")
                .addHeader("Accept", "application/json")
                .addHeader("Authorization", basicAuthHeader())
                .bodyString(postContent, ContentType.APPLICATION_JSON)
                .execute();
        System.out.println(execute.returnContent().asString());
    }

    private String basicAuthHeader() {
        return "Basic " + new String(Base64.encodeBase64(identity()));
    }

    private byte[] identity() {
        return (properties.getOpenMRSUser() + ":" + properties.getOpenMRSPassword()).getBytes();
    }
}
