<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.0/jquery.js"></script> 
<style>

.form-horizontal .control-label{
margin-right:-20px;
}

</style>

<div class="">
	<div class="right_col" role="main">
		<div class="">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="x_panel">

						<div class="x_title" style="clear: both;">
							<h2 class="page_title">
								Create Interior Design<small></small>
							</h2>

							<div class="clearfix"></div>
						</div>
						

						<form:form commandName="interiordesign"  name="interiordesign"
							class="form-horizontal form-label-left">
							<fieldset style="padding: 13px 0 13px 9px;">

								<form:hidden path="Interior_Id" id="path"
									class="required form-control" />
									
								<div class="row">

									<div class="col-md-6 col-sm-12 col-xs-12 form-group">
										<div class="item form-group">
											<label class="control-label col-md-4 col-sm-4 col-xs-12">
												Name <span class="symbol required"></span>
											</label>
											<div class="col-md-4 col-sm-3 col-xs-12">
												<form:input path="firstName" id="path"
													class="required form-control" placeholder="First Name" minlength="3"  required="true"/>
												<form:errors path="firstName"></form:errors>
											</div>
											<div class="col-md-4 col-sm-3 col-xs-12">
												<form:input path="lastName" minlength="3" class="form-control"
													placeholder="Last Name" />
												<form:errors path="lastName"></form:errors>
											</div>

										</div>
									</div>

									<div class="col-md-6 col-sm-12 col-xs-12 form-group">

										<div class="item form-group">
											<label class="control-label col-md-4 col-sm-4 col-xs-12">User
												Name</label>
											<div class="col-md-8 col-sm-6 col-xs-12">
												<form:input path="username" id="username" minlength="3" maxlength="10"
													class="required form-control" placeholder="Username"  required="true" />
												<form:errors path="username"></form:errors>
												<span id="usererror" style="color:red"></span>
											</div>
										</div>

									</div>


									<div class="col-md-6 col-sm-12 col-xs-12 form-group">
										<div class="item form-group">
											<label class="control-label col-md-4 col-sm-4 col-xs-12">
												Password <span class="symbol required"></span>
											</label>
											<div class="col-md-8 col-sm-6 col-xs-12">
												<form:password path="password" class="required form-control" id="password" minlength="6"  placeholder="Password"  required="true" />
												<form:errors path="password"></form:errors>
											</div>
										</div>
									</div>

									<div class="col-md-6 col-sm-12 col-xs-12 form-group">
										<div class="item form-group">
											<label class="control-label col-md-4 col-sm-4 col-xs-12">
												Password Confirmation <span class="symbol required"></span>
											</label>
											<div class="col-md-8 col-sm-6 col-xs-12">
												<form:password path="repeatPassword"
													class="required form-control" id="confirmpassword"  minlength="6"  placeholder="Confirm Password"  required="true" />
												<form:errors path="repeatPassword"></form:errors>
											</div>
										</div>
									</div>

									<div class="col-md-6 col-sm-12 col-xs-12 form-group">
										<div class="item form-group">
											<label class="control-label col-md-4 col-sm-4 col-xs-12">
												E-mail <span class="symbol required"></span>
											</label>
											<div class="col-md-8 col-sm-6 col-xs-12">
												<form:input path="email" id="email" class="required form-control" pattern="[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)" title="enter correct email format"  placeholder="E-mail"   required="true" />
												<form:errors path="email"></form:errors>
												<span id="emailerror" style="color:red"></span>
											</div>
										</div>
									</div>



									<div class="col-md-6 col-sm-12 col-xs-12 form-group">
										<div class="item form-group">
											<label class="control-label col-md-4 col-sm-4 col-xs-12">
												Status <span class="symbol required"></span>
											</label>
											<div class="col-md-8 col-sm-6 col-xs-12">
												<form:select path="status" class="required form-control">
													<form:option value="1" label="Active"></form:option>
													<form:option value="0" label="Inactive"></form:option>
												</form:select>
											</div>
										</div>
									</div>
									
									
									<div class="col-md-12 col-sm-12 col-xs-12 form-group">
									<div class="item form-group">
									<hr>
									<button style="margin-right:30px;" class="btn btn-primary btn-wide pull-right" type="submit" id="button">
										Create User <i class="fa fa-arrow-circle-right"></i>
									</button>
									</div>
									
								</div>
									
								</div>
								
								
							</fieldset>
							<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.0/jquery.js"></script>
							  <label for="zip">Zip:</label>
  <input id="zip" name="zip"/>
  <label for="city">City:</label>
  <div id="city_wrap"><input id="city" name="city"/></div>
  <label for="state">State:</label>
  <input id="state" name="state"/> -->
						</form:form>


					</div>
				</div>

			</div>
		</div>
	</div>
</div>
<script type="text/javascript">

$("#confirmpassword").change(function(){
	var password=$("#password").val();
	var comfirmpassword=$("#confirmpassword").val();
	if(password==comfirmpassword){
		
		
		return true;
		
	}
	else
		{
		alert("Password doesn't match confirmation ");
		return false;
		
		}


});


$('#button').click( function (){
	
	var password=$("#password").val();
	var comfirmpassword=$("#confirmpassword").val();
	if(password==comfirmpassword){
		
		document.userform.action='enrollment';
		document.userform.sublit();
		return true;
		
	}
	else
		{
		alert("Password doesn't match confirmation ");
		return false;
		
		}

	
});
/* 
$("#password").change(function(){
	var password=$("#password").val();
	var comfirmpassword=$("confirmpassword").val();
	if(password==comfirmpassword){
		return true;
		$("button").css("disabled", "disabled");
	}


});
 */
</script>


<script>
 $(document).ready(function(){
  $("#username").change(function(){
   $.ajax({
     type: 'post',
     url: 'getuserStatus',
     data: {
     username:$(this).val()
     },
     success: function (response) {
      if(response=="false"){
       $("#usererror").text("User Name already exists.Try a different User Name");
       $("#button").attr('disabled','disabled');
      }
      else{
       $("#usererror").text("");
       $("#button").removeAttr('disabled');
      }
      
       
      
     }
    });

   
   
  });
  $("#email").change(function(){
  
   $.ajax({
     type: 'post',
     url: 'getemailStatus',
     data: {
     email:$(this).val()
     },
     success: function (response) {
      if(response=="false"){
       $("#emailerror").text("Email already exists.Try a different Email");
       $("#button").attr('disabled','disabled');
      }
      else{
       $("#emailerror").text("");
       $("#button").removeAttr('disabled');
      }
      
       
      
     }
    });

   
   
  });
 });
</script>




