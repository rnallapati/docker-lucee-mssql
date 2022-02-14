<cfoutput>
    #now()# <br><br><br>
</cfoutput>


<cfquery name="getInfo" datasource="cf_mssql">
    sp_help
</cfquery>


<cfdump  var="#getInfo#">