<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="">
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type = "text/javascript" src = "https://www.gstatic.com/charts/loader.js"></script>
<%@page import="org.service.IHPIrestInt"%>
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
							<!-- <th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 80px;font-weight:normal !important" aria-label="Office: activate to sort column ascending">Age-Sex</th> -->
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
                         
                        </tr>
                        </c:forEach>
						</tbody>
                    </table>
                    
                    
					</div>
                  </div>
                </div>
</div>
 


 <button onclick="madeAjaxCall()" >show Graph</button>
 <div id = "container" style = "width: 550px; height: 400px; margin: 0 auto">
      </div>
 
             
            </div>
          </div>
        </div>
         
        
        
       </div>
      
       
<script type="text/javascript">

google.charts.load('current', {packages: ['corechart','line']});  

function madeAjaxCall(){
$.ajax({
type: "GET",
url: "http://localhost:8080/TheNest_RealEstate/list",
contentType:"application/json; charset=utf-8",
dataType:"json",
success: function(data){ 
	alert(data);
	var ds = data;
	 var keyvaluearray ="";
	  var arr = new Array();
        if(ds!=null){
        	var myObj =ds;
        	
        	for (x in myObj) {
        	  
        		alert("key--"+x+"--myObj--value--"+myObj[x]);
        	   
        	    keyvaluearray = "['"+x+"',"+value+"]";
        	    
        	    alert('keyvaluearray '+keyvaluearray);
        	    
        	    keyvaluearray +=keyvaluearray;
        	    
        	     var newarr = arr.push(keyvaluearray);
        	     
        	     alert('keyvaluearray '+keyvaluearray);
        	}
        	
         
          
        }
    },
    error: function(jqXHR, textStatus, errorThrown){
        alert('error: ' + textStatus + ': ' + errorThrown);
    }
});
return false;
};


function drawChart(x,value) {
    // Define the chart to be drawn. 
    alert("key--1"+x+"--myObj--value--2"+value); 
    
   
   
      
     //arr +=arr; 
     
     newarr += newarr+",";
     
     alert('newarr '+newarr[0]);
     alert('newarr '+newarr[1]);
     alert('newarr '+newarr[2]);
     
     
     alert("newarray"+newarr);
    
    var data = new google.visualization.DataTable();
    data.addColumn('string', 'Month');
    data.addColumn('number', 'High');
    data.addColumn('number', 'Low');
    data.addColumn('number', 'Medium');
    data.addColumn('number', 'Average');
    data.addRows([
        ['Jan',  7.0, 0.2, 0.9, 3.9 ],
        ['Feb',  6.9, 0.8, 0.6, 4.2],
        ['Mar',  9.5,  5.7, 3.5, 5.7],
        ['Apr',  14.5, 11.3, 8.4, 8.5],
        ['May',  18.2, 17.0, 13.5, 11.9],
        ['Jun',  21.5, 22.0, 17.0, 15.2],
        
        ['Jul',  25.2, 24.8, 18.6, 17.0],
        ['Aug',  26.5, 24.1, 17.9, 16.6],
        ['Sep',  23.3, 20.1, 14.3, 14.2],
        ['Oct',  18.3, 14.1, 9.0, 10.3],
        ['Nov',  13.9,  8.6, 3.9, 6.6],
        ['Dec',  9.6,  2.5,  1.0, 4.8]
     ]);
    
    // Set chart options
    var options = {'title' : 'Highest Property Index/Ratio',
       hAxis: {
          title: 'Month/Year'
       },
       vAxis: {
          title: 'Ratio'
       },   
       'width':850,
       'height':400,
       curveType: 'function'
    };

    // Instantiate and draw the chart.
    var chart = new google.visualization.LineChart(document.getElementById('container'));
    chart.draw(data, options);
   
 }
 
google.charts.setOnLoadCallback(drawChart);

</script>

     