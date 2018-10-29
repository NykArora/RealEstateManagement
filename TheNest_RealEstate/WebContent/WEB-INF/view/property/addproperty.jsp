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
                    <h2 class="page_title">Add New Property<small></small></h2>
                   
                    <div class="clearfix"></div>
                  </div>
			<div class="row">
			   <form:form commandName="property"  action="saveproperty" >
				<fieldset style="padding:5px 12px;">
					
					
					<div class="col-md-6 col-sm-12 col-xs-12 form-group">
					
				
						<div class="item form-group">
                                    <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                        PropertyName
                                    </label>
									<div class="col-md-8 col-sm-12 col-xs-12">
										<form:input type="text" path="propertyname" id="path"  class="required form-control"  />
										<form:errors path="propertyname" ></form:errors>
									</div>
			                    </div>
					
					
					<div class="item form-group">
                                    <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                        Property Category <span class="symbol required"></span>
                                    </label>
									<div class="col-md-8 col-sm-12 col-xs-12">
									<form:select path="propertycategory" class="form-control" required="true">
									<option value="" > Select </option>
										<form:option value="M">Male</form:option>
										<form:option value="F">Female</form:option>
									</form:select>
									</div>
			                    </div>
					
					
						<div class="item form-group">
                                    <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                        Property Description <span class="symbol required"></span>
                                    </label>
									<div class="col-md-8 col-sm-12 col-xs-12">
										<form:input path="propertydescription" id="path"   title="enter numbers  only" minlength="10" maxlength="10" class="form-control" required="required" />
										<form:errors path="propertydescription" ></form:errors>
									</div>
			                    </div>
			
					<div class="item form-group">
                                    <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                        Property Image
                                    </label>
									<div class="col-md-8 col-sm-12 col-xs-12">
										<form:input path="propertyimage" id="path"  title="enter numbers  only" minlength="10" maxlength="10" class="form-control" required="required"/>
										<form:errors path="propertyimage"></form:errors>
									</div>
			                    </div>
					
						
						
						
					
			                    
			                    
			                    
			       <div class="item form-group">
                               <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                     Property Price
                               </label>
                                    
								<div class="col-md-8 col-sm-12 col-xs-12">									
									  
											<form:input path="properyprize"   class="required form-control" />
											<form:errors path="properyprize" ></form:errors>
					             </div>										
			              </div>
			              
			            
			                    
			      </div>
                                      </div>
                  
				  <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                    <button class="btn btn-primary btn-wide pull-right" type="submit" id="">
                                                               Add Property<i class="fa fa-arrow-circle-right"></i>
                                                        </button>
                  </div>
				</fieldset>
				
				  <input type="hidden"  value="${sessionScope.user.userId }"/ >
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

             