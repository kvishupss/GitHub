({
	add : function(cmp, event, helper) {
        console.log("Addition in action");
        var n1 = cmp.get("v.var1");
        var n2 = cmp.get("v.var2");
        var result = parseFloat(n1) + parseFloat(n2);
        cmp.set("v.result", result);
		
	},
    subt : function(cmp, event, helper) {
        console.log("Subtraction in action");
        var n1 = cmp.get("v.var1");
        var n2 = cmp.get("v.var2");
        var result = parseInt(n1) - parseInt(n2);
       
        if(result<0){
            alert("Warning!!! -First number should be larger.");
       				 }
        else{
        cmp.set("v.result", result);
        	}
	},
    mul : function(cmp, event, helper){
        console.log("multiplication in action");
        var n1 = cmp.get("v.var1");
        var n2 = cmp.get("v.var2");
        var result = parseInt(n1) * parseInt(n2);
        cmp.set("v.result", result);
    },
    div : function(cmp, event, helper){
        console.log("division in action");
        var n1 = cmp.get("v.var1");
        var n2 = cmp.get("v.var2");
        var result = parseInt(n1) / parseInt(n2);

        cmp.set("v.result", result);
    },
    ref : function(cmp, event, helper){
        console.log("refresh in action");
        cmp.set("v.var1", null);
        cmp.set("v.var2", null);
        cmp.set("v.result", null);
        cmp.set("v.result", cmp.find("testInput").get("v.value"));
        console.log('$$$ ',cmp.find("testInput").get("v.value"));
    },
})