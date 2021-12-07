<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

	<div style="margin-left:50px">
	<h2>Explore Content</h2>
	<hr style="width:220px;margin-left:0;height:2px;border:none;color:#828282;background-color:#828282;"/>
	</div>
	<div class="">

		<div class="">

			<%@ page import="model.Content"%>
			<%@ page import="java.util.ArrayList"%>
			<%
			ArrayList<Content> contents = (ArrayList<Content>)request .getAttribute("contents");
			System.out.println(contents.size());
			for (Content content : contents) {
			%>

			<div style="margin-left:50px">
			<a href="ViewContentDetail?post_id=<%=content.getId()%>" style="font-style:italic;font-size:24px;font-family:Times New Roman;color:#639cb4;"><%=content.getTitle()%></a>
			<div class="brief">
				<p> <%= content.getBrief() %></p>
			</div>
			<p style="font-size:16px;font-family:Tiemes New Roman;color:#828282;"><%=content.getCreateDate()%></p>
			</div>
			<br> <br>
			<%
			}
			%>
		</div>
	</div>
