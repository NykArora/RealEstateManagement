<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="">
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
tr,td {
    height: 20px !important;
}
</style>
<div class="right_col" role="main">
          <div class="">
 <div class="row">
	<div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2 class="page_title">User List<small></small></h2>
                   
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                   <div id="datatable-buttons_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
                   	<div class="dt-buttons btn-group">
                   
                   	</div>
                   	
                   	
                   	<table id="datatable-buttons" class="table table-striped table-bordered dataTable no-footer dtr-inline" role="grid" aria-describedby="datatable-buttons_info" style="width: 100%;">
                      <thead>
                        <tr role="row">
							<th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 60px; font-weight:normal !important" aria-label="Start date: activate to sort column ascending">S.No.</th>
							<th class="sorting_asc" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 161px; font-weight:normal !important" aria-sort="ascending" aria-label="Name: activate to sort column descending">Name</th>
							<th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 248px; font-weight:normal !important" aria-label="Position: activate to sort column ascending">E-mail</th>
							<th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 120px; font-weight:normal !important" aria-label="Office: activate to sort column ascending">User Name</th>
							<th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 120px; font-weight:normal !important" aria-label="Office: activate to sort column ascending">User Type</th>
							<th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 62px; font-weight:normal !important" aria-label="Age: activate to sort column ascending">Enrolled</th>
							
							<th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 120px; font-weight:normal !important" aria-label="Start date: activate to sort column ascending">Status</th>
							<th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 60px; font-weight:normal !important" aria-label="Start date: activate to sort column ascending"></th>
						</tr>
                      </thead>
					  <tbody>
					   <c:forEach var="user" items="${users}" >
                      <c:set var="i" value="${i+1 }" ></c:set>
                        <tr>
                        	<td>
                        	${i}
                        	</td>
                          <td> ${user.firstName }  ${user.lastName }</td>
                          <td>${user.email}</td>
                          <td>${user.username }</td>
                          <td>${user.userRole.userRoleName }</td>
                          <td><fmt:formatDate value="${user.enrollmentDate}" pattern="dd/MM/YYYY"/> </td>
                           <td> 
      <c:choose>
      <c:when test="${user.status eq 1}"><button type="button" class="btn btn-success btn-sm">Active</button></c:when><c:otherwise><button type="button" class="btn btn-danger">Inactive</button></c:otherwise>
      </c:choose></td>
                          <td>
                          <a href="<c:url value='/edit?id=${user.userId}' />" class="btn btn-info btn-sm"><i class="fa fa-pencil"></i> </a>
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

     