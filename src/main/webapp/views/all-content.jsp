<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% int total = (int)request .getAttribute("totalPost"); %>
 

  	<div id = "post-list" >
  	
  	</div>
	   <div id="pagination" style="margin-left: 50%;">
	</div>

   
  <script>
  var serviceURL = '/WebMVCProject/ListContentServlet?pageNO=1&numPage=4&total=2';
  
  $( document ).ready(function() {
	  $('#pagination').bootpag({
		    total: <%= total / 5 + 1%>,          
		    page: 1,            
		    maxVisible: 5,     
		    leaps: true,
		    href: "#result-page-{{number}}",
		})

	
	  $.ajax({
          type: "GET",
          url: serviceURL,
          data: JSON.stringify(""),
          contentType: "application/json; charset=utf-8",
          dataType: 'html',
          success: function(data) {
              $('#post-list').load(serviceURL);
          },
          error: function(data, errorThrown) {
              alert(errorThrown);
          }
      });	});
 
  
  $('#pagination').on("page", function(event, num){
	    console.log(num);
	    serviceURL = '/WebMVCProject/ListContentServlet?numPage=4&pageNO=' + num.toString();
	    $.ajax({
	          type: "GET",
	          url: serviceURL,
	          data: JSON.stringify(""),
	          contentType: "application/json; charset=utf-8",
	          dataType: 'html',
	          success: function(data) {
	              $('#post-list').load(serviceURL);
	          },
	          error: function(data, errorThrown) {
	              alert(errorThrown);
	          }
	      });
	});
  </script>