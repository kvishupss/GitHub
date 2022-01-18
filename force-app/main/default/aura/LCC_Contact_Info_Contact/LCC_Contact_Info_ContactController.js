({
	execute : function(component, event, helper) {
		// TODO: Review the migrated code
		var x, y;
x = ''+component.get('v.sObjectInfo.Account.Name')+' \n';
var y = ''+component.get('v.sObjectInfo.Account.AccountNumber')+'';
helper.showTextAlert(component, 'Account name :' + x + 'Acc No. :' + y);


	},

	accept : function(component, event, helper) {
		$A.get("e.force:closeQuickAction").fire();
	}
})