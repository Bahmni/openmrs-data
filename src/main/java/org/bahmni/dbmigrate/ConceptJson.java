package org.bahmni.dbmigrate;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.List;

public class ConceptJson {

    public static String createConcept(String name, ConceptDataType dataType, ConceptClass conceptClass, List<String> setMembers) throws JSONException {
        JSONObject jsonObject = new JSONObject();

        jsonObject.append("names", new JSONObject().put("name", name).put("locale", "en")
                .put("conceptNameType", "FULLY_SPECIFIED"))
                .put("datatype", dataType)
                .put("conceptClass", conceptClass);

        if (setMembers == null || setMembers.size() < 1) return jsonObject.toString();

        jsonObject.put("set", true)
                .put("setMembers", setMembers);

        return jsonObject.toString();
    }

    public static String createConcept(String name, ConceptDataType dataType, ConceptClass conceptClass) throws JSONException {
        return createConcept(name, dataType, conceptClass, null);
    }

}
