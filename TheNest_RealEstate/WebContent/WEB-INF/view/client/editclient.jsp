<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<style>
.form-control {
    margin-bottom: 5px;
}
.col-md-3 {
    width: 22%;
}
.form-control {
    margin-bottom: 5px;
    padding: 6px 7px;
    font-size:12px;
}
</style>
<div class="">
<div class="right_col" role="main">
          <div class="">
		   <div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
              	<div class="x_panel">
		  
		  <div class="x_title" style="clear: both;">
                    <h2 class="page_title">Add New Client<small></small></h2>
                   
                    <div class="clearfix"></div>
                  </div>
			<div class="row">
			   <form:form commandName="client"  action="updateclient">
				<fieldset style="padding:5px 12px;">
					
					<form:hidden path="clientId" id="path"  class="required form-control" />
					 
					 <%-- <form:input path="User.userId" value="${User.userId}"/> --%>
					<div class="col-md-6 col-sm-12 col-xs-12 form-group">
						<div class="item form-group">				
								
									<label class="control-label col-md-4 col-sm-4 col-xs-12">Name <span class="symbol required"></span></label>
									
									<div class="col-md-3 col-sm-3 col-xs-12">
										<form:input path="firstName" id="path"  class="required form-control" placeholder="First Name" required="required"/>
										<form:errors path="firstName" ></form:errors>
									</div>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<form:input path="middelName" class="required form-control" placeholder="Middle Name" />
										<form:errors path="middelName" ></form:errors>									
									</div>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<form:input path="lastName" id="path"  class="required form-control" placeholder="Last Name" style="padding-right:20px;" />
										<form:errors path="lastName" ></form:errors>
									
									</div>
								
									  
						</div>
				
						<div class="item form-group">
                                    <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                        E-mail
                                    </label>
									<div class="col-md-8 col-sm-12 col-xs-12">
										<form:input type="email" path="email" id="path"  class="required form-control"  />
										<form:errors path="email" ></form:errors>
									</div>
			                    </div>
					
						<div class="item form-group">
                                    <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                        Primary Contact No. <span class="symbol required"></span>
                                    </label>
									<div class="col-md-8 col-sm-12 col-xs-12">
										<form:input path="contactNumber" id="path"   title="enter numbers  only" minlength="10" maxlength="10" class="form-control" required="required" />
										<form:errors path="contactNumber" ></form:errors>
									</div>
			                    </div>
			
					<div class="item form-group">
                                    <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                        Secondary Contact No.
                                    </label>
									<div class="col-md-8 col-sm-12 col-xs-12">
										<form:input path="secoundaryContactNumber" id="path"  title="enter numbers  only" minlength="10" maxlength="10" class="form-control" required="required"/>
										<form:errors path="secoundaryContactNumber"></form:errors>
									</div>
			                    </div>
					
						
						
						
					<div class="item form-group">
                                    <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                        Sex <span class="symbol required"></span>
                                    </label>
									<div class="col-md-8 col-sm-12 col-xs-12">
									<form:select path="sex" class="form-control" required="true">
									<option value="" > Select </option>
										<form:option value="M">Male</form:option>
										<form:option value="F">Female</form:option>
									</form:select>
									</div>
			                    </div>
			                    
			                    
			                    
			       <div class="item form-group">
                               <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                        Date of Birth 
                               </label>
                                    
								<div class="col-md-8 col-sm-12 col-xs-12">									
									  
											<form:input path="dob" id="myDatepicker2"  class="required form-control" />
											<form:errors path="dob" ></form:errors>
					             </div>										
			              </div>
			              
			              
			              <div class="item form-group">
                                    <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                        Martial status <span class="symbol required"></span>
                                    </label>
									<div class="col-md-8 col-sm-12 col-xs-12">
									<form:select path="maritalStatus" class="form-control" required="true">
									<option value="" > Select </option>
										<form:option value="married">Married</form:option>
										<form:option value="unmarried">UnMarried</form:option>
									
									</form:select>
									</div>
			                    </div>
			                    
			                   <div class="form-group">
                                    <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                        Address1 
                                    </label>
									<div class="col-md-8 col-sm-12 col-xs-12">
                                     <form:input path="Address" id="path"  class="required form-control" />
									<form:errors path="Address" ></form:errors>
									</div>
			            </div>
                   
                     <div class="form-group">
                                    <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                        Address2 
                                    </label>
									<div class="col-md-8 col-sm-12 col-xs-12">
                                     <form:input path="Address1" id="path"  class="required form-control" />
									<form:errors path="Address1" ></form:errors>
									</div>
			            </div>
                   
			              
			              
			                    
			         </div>
				   <div class="col-md-6 col-sm-12 col-xs-12 form-group">
								
                 
				   

								<%-- <div style="display: none" class="item form-group">
                                    <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                        Preferred Contact Method <span class="symbol required"></span>
                                    </label>
									<div class="col-md-8 col-sm-12 col-xs-12" class="form-control">
										 <form:select path="preferredContactMethod" class="form-control">
										 	<form:option value="1">1</form:option>
										 	<form:option value="2">2</form:option>
										 	<form:option value="3">3</form:option>
										 	<form:option value="4">4</form:option>
										 	
										 </form:select>
										
									</div>
			                    </div> --%>
                  
                        
                  
                   
                   
                        
			                   
								<div class="item form-group">				
								
									<label class="control-label col-md-4 col-sm-4 col-xs-12">Zip City and State</label>
									
									<div class="col-md-3 col-sm-3 col-xs-12">
										<form:input path="zip" id="zip"  class="required form-control" placeholder="Zip"   value=""/>
										<form:errors path="zip" ></form:errors>
									</div>
									<div class="col-md-3 col-sm-3 col-xs-12" id="city_wrap">
										<form:input path="city" class="required form-control" id="city" placeholder="City" />
										<form:errors path="city" ></form:errors>									
									</div>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<form:input path="state" id="state"  class="required form-control" placeholder="State" style="padding-right:20px;" />
										<form:errors path="state" ></form:errors>
									
									</div>
								
									  
						</div>
                  
								
			                       <div class="item form-group">
                                    <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                     Budget<span class="symbol required"></span>
                                    </label>
									<div class="col-md-8 col-sm-12 col-xs-12">
									<form:select path="Budget" class="form-control" required="true">
									<option value="" > Select </option>
									    <form:option value="Below-40lk">Below-40lk</form:option>
										<form:option value="40lk-45lk">40lk-45lk</form:option>
										<form:option value="45lk-50lk">45lk-50lk</form:option>
										<form:option value="50lk-55lk">50lk-55lk</form:option>
										<form:option value="55lk-60lk">55lk-60lk</form:option>
										<form:option value="60lk-65lk">60lk-65lk</form:option>
										<form:option value="65lk-70lk">65lk-70lk</form:option>
										<form:option value="75lk-80lk">75lk-80lk</form:option>
										<form:option value="80lk-85lk">80lk-85lk</form:option>
										<form:option value="85lk-90lk">85lk-90lk</form:option>
										<form:option value="90lk-95lk">90lk-95lk</form:option>
										<form:option value="95lk-1cr">95lk-1cr</form:option>
										<form:option value="Above-1cr">Above-1cr</form:option>
									</form:select>
									</div>
			                    </div>
			                    
			                    <div class="item form-group">
                                    <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                        Type of Transaction <span class="symbol required"></span>
                                    </label>
									<div class="col-md-8 col-sm-12 col-xs-12">
									<form:select path="type_of_transaction" class="form-control" required="true">
									<option value="" > Select </option>
										<form:option value="sale">Sale</form:option>
										<form:option value="purchase">Purchase</form:option>
										<form:option value="rent">Rent</form:option>
										<form:option value="other">Other</form:option>
									</form:select>
									</div>
			                    </div>
			                    
			                     <div class="item form-group">
                                    <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                      Area of Interest <span class="symbol required"></span>
                                    </label>
									<div class="col-md-8 col-sm-12 col-xs-12">
									<form:select path="Area_of_interest" class="form-control" required="true">
									<option value="" > Select </option>
										<form:option value="floor">Floor</form:option>
										<form:option value="plot">Plot</form:option>
										<form:option value="villa">Villa</form:option>
										<form:option value="other">Other</form:option>
									</form:select>
									</div>
									
			                    </div>
			                    
			                    
			                    <div class="item form-group">
                                    <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                      Area of Land/BHK
                                    </label>
									<div class="col-md-8 col-sm-12 col-xs-12">
										 <form:input path="Area_of_land" id="path"  class="required form-control"  />
										<form:errors path="Area_of_land"></form:errors>
									
									</div>
			                    </div>
			                    
			                    <div class="item form-group">
                                    <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                       Preferred Location
                                    </label>
									<div class="col-md-8 col-sm-12 col-xs-12">
										 <form:input path="location" id="path"  class="required form-control"  />
										<form:errors path="location" ></form:errors>
									
									</div>
			                    </div>
			                   
			                    <div class="item form-group">
                                    <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                        Last Visit Date To Dealer Office 
                                    </label>
									<div class="col-md-8 col-sm-12 col-xs-12">
										 <form:input path="lastVisitDate" id="visitDatePicker"  class="required form-control"  />
										<form:errors path="lastVisitDate" ></form:errors>
									
									</div>
			                    </div>
			                    
			                    
			                    
			      </div>
                                      </div>
                  
				  <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                    <button class="btn btn-primary btn-wide pull-right" type="submit" value="Save" id="">
                                                             Update  <i class="fa fa-arrow-circle-right"></i>
                                                        </button>
                  </div>
		 </form:form>
            </div>
			</div>
			</div>
			</div>
			
          </div>
        </div>
       
    <script>
    
    $('#myDatepicker2').datetimepicker({
        format: 'MM/DD/YYYY'
    });
    $('#visitDatePicker').datetimepicker({
    	format: 'MM/DD/YYYY'
    }); 
    
</script>
<script>
$(document).ready(function(){

//when the user clicks off of the zip field:
$('#zip').keyup(function(){
  if($(this).val().length == 5){
  var zip = $(this).val();
  var city = '';
  var state = '';
  //make a request to the google geocode api
  $.getJSON('http://maps.googleapis.com/maps/api/geocode/json?address='+zip)
  .success(function(response){
    //find the city and state
    var address_components = response.results[0].address_components;

    $.each(address_components, function(index, component){
      var types = component.types;
      $.each(types, function(index, type){
        if(type == 'locality') {
          city = component.long_name;
        }
        if(type == 'administrative_area_level_1') {
          state = component.short_name;
        }
      });
    });
    //pre-fill the city and state
    var cities = response.results[0].postcode_localities;
    if(cities) {
      //turn city into a dropdown if necessary
      var $select = $(document.createElement('select'));
      console.log(cities);
      $.each(cities, function(index, locality){
        var $option = $(document.createElement('option'));
        $option.html(locality);
        $option.attr('value',locality);
        if(city == locality) {
          $option.attr('selected','selected');
        }
        $select.append($option);
      });
      $select.attr('id','city');
      $('#city_wrap').html($select);
    } else {
      $('#city').val(city);
    }
    $('#state').val(state);
  });
  }
});
});
</script>

             