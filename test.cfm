<cfscript>
    dump(session);

    newMappings = getApplicationSettings().mappings;
	application action='update' mappings='#newMappings#';

    dump(session);
</cfscript>