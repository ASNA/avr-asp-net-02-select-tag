﻿<%@ Application Language="AVR" %>

<script runat="server">

	BegSr Application_Start
		DclSrParm sender Type(*Object)
		DclSrParm e Type(EventArgs)

		// Code that runs on application startup
        DclFld ActiveDBNameKey  Type(*String)
        DclFld DBName        Type(*String) 

        ActiveDBNameKey = System.Configuration.ConfigurationManager.AppSettings["DefaultDBName"]
        DBName = System.Configuration.ConfigurationManager.AppSettings[ActiveDBNameKey]
        Application['dbname'] = DBName
	EndSr

	BegSr Application_End
		DclSrParm sender Type(*Object)
		DclSrParm e Type(EventArgs)

		//  Code that runs on application shutdown

	EndSr
        
	BegSr Application_Error
		DclSrParm sender Type(*Object)
		DclSrParm e Type(EventArgs)
        
	EndSr

	BegSr Session_Start
		DclSrParm sender Type(*Object)
		DclSrParm e Type(EventArgs)

	EndSr

	BegSr Session_End
		DclSrParm sender Type(*Object)
		DclSrParm e Type(EventArgs)

		// Code that runs when a session ends. 
		// Note: The Session_End event is raised only when the sessionstate mode
		// is set to InProc in the Web.config file. If session mode is set to StateServer 
		// or SQLServer, the event is not raised.

	EndSr

       
</script>
