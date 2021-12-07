<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="model.Content" %> 
    <%@ page import="model.User" %>  
   
	<style type="text/css">
    <%@include file="/resources/css/post.css" %>
	</style>
   <% Content content = (Content)request.getAttribute("content"); %>
   <% User user = (User)request.getAttribute("user"); %>
   <% int  total = (int)request.getAttribute("total"); %>

    <div class="container_post">
        <div class="card_header">
            <div class="col_one"> 
                <div class="item1">
                    <i class="fa fa-user icon"  aria-hidden="true"></i>
                </div>
                <div class="item2">
                    <span class="text"><%= user.getUsername() %></span>
                    <div class=""><%= content.getCreateDate() %></div>
                </div>
            </div>
            <div class="col_two"> 
                <div><strong><%=total%></strong> posts</div>
            </div>
        
          
        </div>
        
        <div class="card_body">
            <div class="row_body">
                <div class="col1"><span class="label label-success span"><%= content.getTitle() %></span></div>
                <div class="col2"><h1 class="title"> <%= content.getBrief() %> </h1></div>
            </div>
           	 <p class="content"> <%= content.getContent() %> </p>
        
        </div>
     
    </div>