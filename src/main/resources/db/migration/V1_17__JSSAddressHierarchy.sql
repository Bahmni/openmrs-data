insert into global_property (`property`, `property_value`, `description`, `uuid`)
values ('layout.address.format', '<org.openmrs.layout.web.address.AddressTemplate>
                                         <nameMappings class="properties">
                                              <property name="postalCode" value="Location.postalCode"/>
                                              <property name="longitude" value="Location.longitude"/>
                                              <property name="address2" value="Location.address2"/>
                                              <property name="address1" value="Location.address1"/>
                                              <property name="startDate" value="PersonAddress.startDate"/>
                                              <property name="country" value="Location.country"/>
                                        <property name="countyDistrict" value="Location.district"/>
                                        <property name="address3" value="Tehsil"/>
                                              <property name="endDate" value="personAddress.endDate"/>
                                              <property name="stateProvince" value="Location.stateProvince"/>
                                              <property name="latitude" value="Location.latitude"/>
                                              <property name="cityVillage" value="Location.cityVillage"/>
                                            </nameMappings>
                                            <sizeMappings class="properties">
                                              <property name="postalCode" value="10"/>
                                              <property name="longitude" value="10"/>
                                              <property name="address2" value="40"/>
                                              <property name="address1" value="40"/>
                                              <property name="startDate" value="10"/>
                                              <property name="country" value="10"/>
                                              <property name="endDate" value="10"/>
                                              <property name="stateProvince" value="10"/>
                                              <property name="latitude" value="10"/>
                                              <property name="cityVillage" value="10"/>
                                            </sizeMappings>
                                            <lineByLineFormat>
                                              <string>address1</string>
                                              <string>address2</string>
                                              <string>cityVillage stateProvince country postalCode</string>
                                              <string>latitude longitude</string>
                                              <string>startDate endDate</string>
                                            </lineByLineFormat>
                                          </org.openmrs.layout.web.address.AddressTemplate>', 'XML description of address formats', uuid());