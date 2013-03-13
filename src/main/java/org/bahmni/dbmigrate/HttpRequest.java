package org.bahmni.dbmigrate;

import org.apache.commons.codec.binary.Base64;
import org.apache.http.client.fluent.Request;
import org.apache.http.client.fluent.Response;
import org.apache.http.entity.ContentType;

import java.io.IOException;

public class HttpRequest {

    private String uri;

    public HttpRequest(String uri) {
        this.uri = uri;
    }

    public void post(String postContent) throws IOException {
        Response execute = Request.Post(uri)
                .addHeader("Content-Type", "application/json")
                .addHeader("Accept", "application/json")
                .addHeader("Authorization", "Basic " + new String(Base64.encodeBase64("admin:Hello123".getBytes())))
                .bodyString(postContent, ContentType.APPLICATION_JSON)
                .execute();
        System.out.println(execute.returnContent().asString());
    }
}
