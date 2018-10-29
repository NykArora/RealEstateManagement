<%-- 
<%@page import="org.dto.User"%> --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
         <div class="top_nav" style="position: fixed;
    z-index: 100;
    overflow: hidden;">
         <div style="height: 228px;
    background-color: #f8f8f8;">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="<c:url value="/resources/img.jpg" ></c:url>" alt="">
                
                    ${sessionScope.user.firstName }
                    
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="javascript:;"> Profile</a></li>
                    <li>
                      <a href="javascript:;">
                        <span class="badge bg-red pull-right">50%</span>
                        <span>Settings</span>
                      </a>
                    </li>
                    <li><a href="javascript:;">Help</a></li>
                    <li><a href="logout"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                  </ul>
                </li>
           
              </ul>
            </nav>
            
            
          </div>
         <div class="col-md-12 col-sm-6 col-xs-12 tab-pane fade active in   ">
          <div class="x_content">
          <div class="row">
				<div class="col-md-8 col-sm-12 col-xs-12">
					<div class="x_panel">

						<%-- <form:form commandName="user"  name="userform" class="form-horizontal form-label-left" > --%>
							<fieldset style="padding: 9px 0 5px 5px;">

								
									
								<div class="row">

									<div class="col-md-12 col-sm-12 col-xs-12 form-group">
										<div class="item form-group">
											<label class="control-label col-md-4 col-sm-4 col-xs-12">
												CASE MANAGER 
											</label>
											<div class="col-md-6 col-sm-6 col-xs-12">
												<label class="control-label">
												TONI RODRIQUEZ,RN
											</label>
											</div>
											

										</div>
									</div>
									
									<div class="col-md-12 col-sm-12 col-xs-12 form-group">

										<div class="item form-group">
											<label class="control-label col-md-4 col-sm-4 col-xs-12">PHYSICIAN</label>
											<div class="col-md-4 col-sm-6 col-xs-12">
												<label class="control-label ">CINDY MARIKA,DO</label>
												
												
											</div>
										</div>

									</div>


									<div class="col-md-12 col-sm-12 col-xs-12 form-group">

										<div class="item form-group">
											<label class="control-label col-md-4 col-sm-4 col-xs-12">CONSENT ON FILE</label>
											<div class="col-md-8 col-sm-6 col-xs-12">
												<label class="control-label">XYZ</label>
												
												
											</div>
										</div>

									</div>

									<div class="col-md-12 col-sm-12 col-xs-12 form-group">

										<div class="item form-group">
											<label class="control-label col-md-4 col-sm-4 col-xs-12">CONSENT DOCUMENTED</label>
											<div class="col-md-8 col-sm-6 col-xs-12">
												<label class="control-label ">XYZ</label>
												
												
											</div>
										</div>

									</div>

									<div class="col-md-12 col-sm-12 col-xs-12 form-group">

										<div class="item form-group">
											<label class="control-label col-md-4 col-sm-4 col-xs-12">HIPPA RELEASE</label>
											<div class="col-md-8 col-sm-6 col-xs-12">
												<label class="control-label ">XYZ</label>										
											</div>
										</div>							
									</div> 
								           
								</div>
							</fieldset>
					</div>
				</div>
				
				<div class="col-md-4 col-sm-12 col-xs-12 form-group">
				<div class="x_panel">
							
				<fieldset style="padding: 70px  13px 70px 13px;">
				
				
				<div class="row">
				
                     
                        <div class="col-md-4">
                        <button type="button" id="strbtn" class="btn btn-primary btn-block" data-container="body" data-toggle="popover" data-placement="left" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus." data-original-title="" title="">
                       <i class="fa fa-phone"></i> Start Call
                      </button></div>  
                       <div class="col-md-4"><button type="button" id="pausebtn" class="btn btn-primary btn-block" data-container="body" data-toggle="popover" data-placement="top" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus." data-original-title="" title="">
                       <i class="fa fa-pause"></i> Pause 
                      </button></div>   
                      <div class="col-md-4"> <button type="button" id="completebtn" class="btn btn-primary btn-block" data-container="body" data-toggle="popover" data-placement="bottom" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
                       <span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span> End Call
                      </button></div> <br>
             
                  </div>
				
				</fieldset>
				
				  <div class="x_content" style="height:33px;margin-top: -56px;">
                  
                 
                <%--  <form:hidden path="timeInterval" class="form-group"  id="timeinterval" />
                  <form:hidden path="callDate"  id="datebtn"  />
                 --%>  <center><div style="color:red; margin-top: 10px;" id="currenttime"><span id="time"></span> Seconds</div><div id="showdateTime"> <span id="Timecheck" style="color:red;  margin-top: 10px;"></span></div></center>
                   
              </div>       
				</div>
				
			</div>
			  </div>
			  </div>
			  </div>
          </div>
        </div>