<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
          
		  			<div class="x_title">
                    <h2 class="page_title">Edit User<small></small></h2>
                   
                    <div class="clearfix"></div>
                  </div>
			<div class="row">
			   <form:form commandName="user" id="example1" action="updateUser" class="form-horizontal form-label-left">
				<fieldset style="padding: 10px 14px;">
					
					<form:hidden path="userId" id="path"  class="required form-control" />
					
					<div class="col-md-6 col-sm-12 col-xs-12 form-group">
						<div class="form-group">
                                    <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                        Name <span class="symbol required"></span>
                                    </label>
									<div class="col-md-4 col-sm-3 col-xs-12">
										<form:input path="firstName" id="path"  class="required form-control" />
										<form:errors path="firstName" ></form:errors>
									</div>
									<div class="col-md-4 col-sm-3 col-xs-12">
										<form:input path="lastName" class="form-control"/>
										<form:errors path="lastName" ></form:errors>
									</div>
			                    </div>
					</div>
					
					<div class="col-md-6 col-sm-12 col-xs-12 form-group">						
						<form:hidden path="userId" id="path"  class="required form-control" />
					
						<div class="form-group">
							<label class="control-label col-md-4 col-sm-4 col-xs-12">User Name</label>
							
							<div class="col-md-8 col-sm-6 col-xs-12">
								<form:input path="username" id="path"  class="required form-control" readonly="true" />
								<form:errors path="username" ></form:errors>
							</div>
						</div>						  
					 </div>
					 
					 <div class="col-md-6 col-sm-12 col-xs-12 form-group">
						<div class="form-group">
                                    <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                        Password <span class="symbol required"></span>
                                    </label>
									<div class="col-md-8 col-sm-6 col-xs-12">
										<form:password path="password" class="required form-control"/>
										<form:errors path="password" ></form:errors>
									</div>
			            </div>
					</div>
					<div class="col-md-6 col-sm-12 col-xs-12 form-group">
                        <div class="form-group">
                                    <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                        Confirm Password <span class="symbol required"></span>
                                    </label>
									<div class="col-md-8 col-sm-6 col-xs-12">
										<form:password path="repeatPassword" class="required form-control"/>
										<form:errors path="repeatPassword" ></form:errors>
									</div>
			            </div>
                   </div>
					 
					 <div class="col-md-6 col-sm-12 col-xs-12 form-group">
						<div class="form-group">
                                    <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                        E-mail <span class="symbol required"></span>
                                    </label>
									<div class="col-md-8 col-sm-6 col-xs-12">
										<form:input path="email" class="required form-control" readonly="true"/>
										<form:errors path="email" ></form:errors>
									</div>
			                    </div>
					 </div>
					 
					
					<div class="col-md-6 col-sm-12 col-xs-12 form-group">
						<div class="form-group">
                                    <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                        User Type <span class="symbol required"></span>
                                    </label>
									<div class="col-md-8 col-sm-6 col-xs-12">
										<form:select path="userRole.userRoleId"  items="${userRoles }" itemLabel="userRoleName"  itemValue="userRoleId"    class="required form-control"></form:select>
									</div>		
			                    </div>
					</div>
					
				  <div class="col-md-6 col-sm-12 col-xs-12 form-group">
                      <div class="form-group">
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
				  <div class="form-group">
				  <hr>
						<button style="margin-right:30px;" class="btn btn-primary btn-wide pull-right" type="submit" id="">
                                      Update <i class="fa fa-arrow-circle-right"></i>
                        </button>
                   </div>
                  </div>
				</fieldset>
			 </form:form>
				
				</div>
			   </div>
			  </div> 	 
            </div>
          </div>
        </div>
       </div>

     