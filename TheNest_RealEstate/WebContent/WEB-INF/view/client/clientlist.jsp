<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="">
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="right_col" role="main">
          <div class="">
 <div class="row">
	<div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2 class="page_title">Client List<small></small></h2>
                   
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                   <div id="datatable-buttons_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
                   	<div class="dt-buttons btn-group">
                   
                   	</div>
                   	
                   	
                   	<table id="datatable-buttons" class="table table-striped table-bordered dataTable no-footer dtr-inline" role="grid" aria-describedby="datatable-buttons_info" style="width: 100%;">
                      <thead>
                        <tr role="row">
							<th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 60px;font-weight:normal !important" aria-label="Start date: activate to sort column ascending">S.No.</th>
							<th class="sorting_asc" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 180px;font-weight:normal !important" aria-sort="ascending" aria-label="Name: activate to sort column descending">Name</th>
							<!-- <th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 230px;font-weight:normal !important" aria-label="Position: activate to sort column ascending">E-mail</th> -->
							 <th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 80px;font-weight:normal !important" aria-label="Office: activate to sort column ascending">Contact Number</th> 
							 <th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 80px;font-weight:normal !important" aria-label="Office: activate to sort column ascending">Address</th> 		
							 <th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 80px;font-weight:normal !important" aria-label="Office: activate to sort column ascending">Budget</th> 
							 <th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 80px;font-weight:normal !important" aria-label="Office: activate to sort column ascending">type_of_transaction</th> 	
							 <th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 80px;font-weight:normal !important" aria-label="Office: activate to sort column ascending">Area_of_interest</th>
							 <th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 80px;font-weight:normal !important" aria-label="Office: activate to sort column ascending">Area_of_land</th>
							 <th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 80px;font-weight:normal !important" aria-label="Office: activate to sort column ascending">location</th>		
							 <th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 80px;font-weight:normal !important" aria-label="Office: activate to sort column ascending">lastVisitDate</th>			
							 <th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 80px;font-weight:normal !important" aria-label="Office: activate to sort column ascending">Edit Client Details</th> 
							<!-- <th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 160px;font-weight:normal !important" aria-label="Age: activate to sort column ascending">Blood Group</th> -->
					        
						</tr>
                      </thead>
					  <tbody>
					   <c:forEach var="client" items="${clients}" >
                      <c:set var="i" value="${i+1 }" ></c:set>
                        <tr>
                        	<td>
                        	${i}
                        	</td>
                                  <td> ${client.firstName }  ${client.lastName }</td>
                         <%--  <td>${patient.email}</td> --%>
                                  <td>${client.contactNumber }</td> 
                          
                                  <td>${client.address }</td> 
                                  <td>${client.budget }</td> 
                                  <td>${client.type_of_transaction }</td> 
                                  <td>${client.area_of_interest }</td> 
                                  <td>${client.area_of_land }</td> 
                                  <td>${client.location }</td> 
                                  <td>${client.lastVisitDate }</td> 
                                         
                        <%--   <td>${client.age }-${client.sex }</td> --%>
                        <%--   <td>${patient.bloodGroup} </td> --%>
                      <td>
                          <a href="<c:url value='/editClient?id=${client.clientId}' />" class="btn btn-info btn-sm"><i class="fa fa-pencil"></i> </a>
                          </td>
                        </tr>
                        </c:forEach>
						</tbody>
                    </table>
					</div>
                  </div>
                </div>
</div>

             
            </div>
          </div>
        </div>
       </div>

     