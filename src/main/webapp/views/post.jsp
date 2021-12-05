<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="model.Content" %>  
  <% Content content = (Content)request.getAttribute("content"); %>
 
  
     <div id="page-wrapper">
        <div>
	        <div id="post">
	             <h1><%= content.getTitle() %> </h1>
	             <%= content.getContent() %>
	        </div>
        </div>
    </div>