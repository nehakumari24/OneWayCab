$(document).ready(function() {
	    $('#datepicker').datepicker({ minDate: 0 });
	});

var series = [
	{name: 'Company A', product: 'A1'},
	{name: 'Company A', product: 'A2'},
	{name: 'Company A', product: 'A3'},
	{name: 'Company B', product: 'B1'},
	{name: 'Company B', product: 'B2'}
	]

	$(".company").change(function(){
		var company = $(this).val();
		var options =  '<option value=""><strong>Products</strong></option>';
		$(series).each(function(index, value){
			if(value.name == company){
				options = '<option value="'+value.product+'">'+value.product+'</option>';
			}
		});
		
		$('.product').html(options);
	});

var citiesByState = {
		MadhyaPradesh: ["Bhopal", "Indore", "Gwalior", "Jabalpur"],
		Jharkhand: ["Ranchi", "Tata", "Bokaro", "Dhanbad"],
		Maharashtra: ["Mumbai", "Pune", "Nagpur", "Nashik"]
	}

	    function changecat(value) {
	        if (value.length == 0) document.getElementById("category").innerHTML = "<option></option>";
	        else {
	            var catOptions = "";
	            for (categoryId in citiesByState[value]) {
	                catOptions += "<option>" + citiesByState[value][categoryId] + "</option>";
	            }
	            document.getElementById("category").innerHTML = catOptions;
	        }
	        if (value.length == 0) document.getElementById("category2").innerHTML = "<option></option>";
	        else {
	            var catOptions = "";
	            for (categoryId in citiesByState[value]) {
	                catOptions += "<option>" + citiesByState[value][categoryId] + "</option>";
	            }
	            document.getElementById("category2").innerHTML = catOptions;
	        }
	    }