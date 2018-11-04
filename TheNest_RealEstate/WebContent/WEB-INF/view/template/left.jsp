
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"> <span>The Nest-RealEstate</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src='<c:url value="/resources/img.jpg" ></c:url>' alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2>${sessionScope.user.firstName }</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3></h3>
                <ul class="nav side-menu">
                
                <c:if test="${sessionScope.user.userRole.userRoleId==1 }">
                
                  <li><a href="dashboard"><i class="fa fa-home"></i> Dashboard <!-- <span class="fa fa-chevron-down"></span> --></a>
                 <!--    <ul class="nav child_menu">
                      <li><a href="/dashboard">Dashboard</a></li>
                    </ul> -->
                  </li>
                  <li><a href="userlist"><i class="fa fa-users"></i> Users <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="userlist">User List</a></li>
                      <li><a href="createuser">Create New User</a></li>
                      
                    </ul>
                  </li>
                  </c:if>
                  
                     <c:if test="${sessionScope.user.userRole.userRoleId==3 }"> 
                    <li><a  href="Clientlist"> Clients </a>
                  </li>
                   </c:if>
                   
                   <c:if test="${sessionScope.user.userRole.userRoleId==4 }">
                    <li><a  href="patient_panding_for_consent"> Patients </a>
                  </li>
                   </c:if>
                  <li><a href="Clientlist"><i class="fa fa-users"></i> Clients <span class="fa fa-chevron-down"></span></a> 
                  <ul class="nav child_menu">
                 <li><a  href="createclient">Add New Client </a></li>
                 </ul>
                  </li>
                  
                  <li><a href="addproperty"><i class="fa fa-users"></i>Property <span class="fa fa-chevron-down"></span></a> 
                  <ul class="nav child_menu">
                 <li><a  href="addproperty">Add New Property </a></li>
                  </ul>
                  </li>
                  
               <li><a href="interiordesign"><i class="fa fa-users"></i>Interior Design<span class="fa fa-chevron-down"></span></a> 
                  <ul class="nav child_menu">
                 <li><a href="interiordesign">Add New Interior Design</a></li>
                  </ul>
                  </li>
                </ul>
              </div>
             

            </div>
          
          </div>
        </div>