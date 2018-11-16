// VMware vRealize Orchestrator action sample
//
// Get Configuration Element.
// 
// For vRO/VRA 6.x/7.x
//
// Action Inputs:
// configPath - string - Configuration Path
// configName - string - Configuration Name
// Return type: string - Configuration Element
// Selva Jaganathan VMware Inc.

var configElement = undefined;
for each(configElement in Server.getConfigurationElementCategoryWithPath(configPath).configurationElements){
	if(configElement.name == configName){
		return configElement;
	}
}
return configElement;