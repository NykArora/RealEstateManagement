<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<style>
.box #container {
    background: #fff none repeat scroll 0 0;
    box-shadow: 0 4px 7px rgba(0, 0, 0, 0.2);
    margin: 0 auto 40px;
    max-width: 900px;
    width: 90%;
}
.card {
 
  box-shadow: 0 4px 7px rgba(0, 0, 0, 0.2);
 
  margin:0 auto 40px;
 
}
.group::after {
    clear: both;
    content: ".";
    display: block;
    height: 0;
    visibility: hidden;
}

#header {
    background: #525252 none repeat scroll 0 0;
    margin: 0 auto;
}

#header #logo {
    float: left;
    font-size: 1.65em;
    padding: 0.75em 0 0 0.825em;
}
#header #logo a {
    color: #fff;
}
#header #logo img {
    height: 45px;
}
.ribbonbox {
    box-shadow: 0 0 8px rgba(0, 0, 0, 0.3);
    position: relative;
    z-index: 90;
}
label{
color:#333 !important;
font-size:16px !important;
}

.form-control {
	border-radius: 0px !important;
	width: 100%;
	background-color:#fff !important;
	border:1px solid #ccc !important;
	font-size:14px !important;
	
}

span.psw1 {
    float: left;
    padding-top: 16px;
    
}

span.psw {
    float: right;
    padding-top: 16px;
}





div.panel {
    padding: 0 18px;
    background-color: white;
    max-height: 0;
    overflow: hidden;
    transition: max-height 0.2s ease-out;
}



</style>

<div id="container" style="max-width: 480px;border:1px solid #ccc; width:100%;background-color:#fff;" class="animate form login_form card">

         <!--  <section class="login_content"> -->
           <form:form commandName="user" action="login" class="form-signin" >
           <div id="header" class="group ribbonbox"   style="height: 75px;">
				<h2 id="logo" style="color:#fff !important" >
					<!-- <i class="fa fa-medkit"></i> --> &nbsp; The Nest-Real Estate
				</h2>
			
			</div>
           
           
              
               <div class="container" style="padding:20px;">
              	
              <div class="form-group">
              <label class="control-label" style="text-align:left !important">User Name</label>
                <form:input required="true" class="form-text form-control" id="path" path="username" />
					<form:errors path="username" ></form:errors>
				</div>	
              <div class="form-group">
              <label class="control-label" style="text-align:left !important">Password</label>
                <form:password   class="form-text form-control"  value=""  id="path" path="password" required="true"  />
					<form:errors path="password" ></form:errors>
				 </div>
				 <span style="color:red" > ${error } </span> 
					   
			   
			  <!--   
			   <div class="form-group" style="margin-top:10px;">
			   			<span class="accordion" style="color:blue;cursor:pointer;font-size:16px !important;">Password Hints and Tips <i class="fa fa-caret-right"></i></span>
						<div class="panel" style="background-color:#F2F3F4;padding:0 !important">
						
							<span class="password-ins-body-header" style="font-weight:bold">Password must contain:</span><br>
							<span style="text-transform:none;">
								 <span>
								 <i class="fa fa-circle" style="font-size:8px"></i> <label style="font-size:11px !important"> Minimum of 8 characters</label>
							</span><br />
							
							
						
						  
						</div>
						
						
			   
			   </div>
			    -->
			 <script>
				var acc = document.getElementsByClassName("accordion");
				var i;
				
				for (i = 0; i < acc.length; i++) {
				  acc[i].onclick = function() {
				    this.classList.toggle("active");
				    var panel = this.nextElementSibling;
				    if (panel.style.maxHeight){
				      panel.style.maxHeight = null;
				    } else {
				      panel.style.maxHeight = panel.scrollHeight + "px";
				    } 
				  }
				}
				</script>  
			
					 
				 
				 
              <div class="form-group">
               <input style="padding:10px 0;font-size:16px" type="submit" class="btn btn-success submit btn-block" value="Login"/>
              </div>

              <div class="clearfix"></div>
              
              
               <div class="field" style="padding-top:10px;"></div>
								 <div class="text-align-center padding-15" style="width: 80%;padding-left: 22%;">
								   <hr style="background-color:#333 " />
								 </div>
								<span class="psw1"> <a href="forget_password" style="color:blue">Forgot Password?</a></span>
							<!-- 	<span class="psw"> <a href="#" style="color:blue">Forgot Username?</a></span> -->

								<div class="clearfix"></div>

              
              </div>
              <div class="separator">
                <div class="clearfix"></div>
               

              
              </div>
           </form:form>
          <!-- </section> -->
        </div>


