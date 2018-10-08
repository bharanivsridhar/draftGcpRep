/**
 * 
 */

function validateForm() {
	alert('hi');
	
	var resource = {
			id:document.forms["form1"]["mid"].value,
			firstName:document.forms["form1"]["firstName"].value,
			middleName:document.forms["form1"]["middleName"].value,
			lastName:document.forms["form1"]["lastName"].value,
			listOfTechWorkedOn:document.forms["form1"]["tech1"].value + ":"+ document.forms["form1"]["tech2"].value + ":"+ document.forms["form1"]["tech3"].value + ":"+ document.forms["form1"]["tech4"].value,
			certification:document.forms["form1"]["certi1"].value + ":"+ document.forms["form1"]["certi2"].value + ":"+ document.forms["form1"]["certi3"].value + ":"+ document.forms["form1"]["certi4"].value,
			projects:document.forms["form1"]["proj1"].value +":"+document.forms["form1"]["proj2"].value +":"+document.forms["form1"]["proj3"].value +":"+document.forms["form1"]["proj4"].value,
			applicationWorkLoadType:document.forms["form1"]["appType1"].value +":"+ document.forms["form1"]["appType2"].value +":"+ document.forms["form1"]["appType3"].value +":"+ document.forms["form1"]["appType4"].value
	}
   
	UserAction(resource);
	alert('data'+JSON.stringify(resource));

}

function getDetails(){
	alert("form2")
	var idorName = document.forms["form2"]["midName"].value;
	alert(idorName);
	document.getElementById("form3").style.display="";
	parseDetails();
	document.getElementById("button1").submit();
	
}


function parseDetails(){
	alert("form3")
	let technologies = "java:spring:oracle:angular"
	var technologiesArray = technologies.split(":")
	var certificateionArray ;
	var projectsArray;
	var applnWkLoadArray;

	document.forms["form3"]["mid"].value = 'M1048131'
	document.forms["form3"]["firstName"].value = 'BHARANI'
	document.forms["form3"]["middleName"].value = 'VENBAKKAM'
	document.forms["form3"]["lastName"].value = 'SRIDHAR'
		
		
	document.forms["form3"]["tech1"].value = technologiesArray[0]
	document.forms["form3"]["tech2"].value = technologiesArray[1]
	document.forms["form3"]["tech3"].value = technologiesArray[2]
	document.forms["form3"]["tech4"].value = technologiesArray[3]
	
	document.forms["form3"]["certi1"].value = technologiesArray[0]
	document.forms["form3"]["certi2"].value = technologiesArray[1]
	document.forms["form3"]["certi3"].value = technologiesArray[2]
	document.forms["form3"]["certi4"].value = technologiesArray[3]
	
	document.forms["form3"]["proj1"].value = technologiesArray[0]
	document.forms["form3"]["proj2"].value = technologiesArray[1]
	document.forms["form3"]["proj3"].value = technologiesArray[2]
	document.forms["form3"]["proj4"].value = technologiesArray[3]
	
	document.forms["form3"]["appType1"].value = technologiesArray[0]
	document.forms["form3"]["appType2"].value = technologiesArray[1]
	document.forms["form3"]["appType3"].value = technologiesArray[2]
	document.forms["form3"]["appType4"].value = technologiesArray[3]
}

function isNullOrEmpty(data,field){
	if(data === null || data === 'undefined' || data === ''){
		document.getElementById("tech1").style.display="none";
	}
	return data
}


function UserAction(resource) {
	$(function() {
        $('#form1').submit(function(event) {
            //event.preventDefault(); // prevent this form from being submited
            var userJson = JSON.stringify(jQuery('#form1').serializeArray());
            $.ajax({
                type: "POST",
                url: "http://localhost:8080/resourcetechnologymapping/addResource",
                data: JSON.stringify(resource),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function(data){
                     alert(data);//handle it in a proper way
                },
                failure: function(errMsg) {
                   alert(errMsg);//handle it in a proper way
                }
            });
            return false;
        });
    });

    
}





