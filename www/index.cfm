<cfoutput>
    #now()# <br><br><br>
</cfoutput>


<cfquery datasource="cf_maria">
    DROP TABLE IF EXISTS account_statuses;
</cfquery>

<cfquery datasource="cf_maria">
    CREATE TABLE account_statuses (
    id int(9) NOT NULL,
    created datetime NOT NULL,
    updated datetime DEFAULT NULL,
    status varchar(128) NOT NULL,
    deleted tinyint(1) NOT NULL DEFAULT '0'
    );
</cfquery>

<cfquery datasource="cf_maria">
    INSERT INTO account_statuses (id, created, updated, status, deleted) VALUES
    (1, CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'Active', 0),
    (2, CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'Deactivated', 0),
    (3, CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'Pending', 0);
</cfquery>


<cfquery name="acct" datasource="cf_maria">
    select *
    from account_statuses;
</cfquery>

<cfdump var="#acct#">
