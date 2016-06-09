<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<spring:url value="/resources/asset/icon/" var="iconPath"/>

<div id="tableWrapper">
	<ul id="table-menu">
	<li class="sort">Name</li>
	<li class="sort">Email</li>
	<li class="sort">Gender</li>
	<li class="sort">At work</li>
	</ul>
	
			<table id="employeesTab">
				
				
				<c:if test="${!empty employees}">
				<c:forEach items="${employees}" var="curEmployee">
					<tr class="employee-row" data="${curEmployee.id}">
						<td>${curEmployee.name}</td>
						<td>${curEmployee.contact.email}</td>
						<td>
							<img src="${iconPath.concat(curEmployee.sex == 'FEMALE' ? 'woman.png' : 'man.png')}" alt="${curEmployee.sex}"/>
						</td>
						<td class="status"><img src="${iconPath.concat('no.png')}" alt="NO"/></td>
						<td class="delete-emp">
							<img src="/EmployeeOrganizer/resources/asset/icon/deleteEmployee.png" alt="delete">
						</td>
					</tr>
					<tr class="employee-shifts">
						<td colspan="5"><img src="/EmployeeOrganizer/resources/asset/icon/shifts.png" alt="shifts"></td>
					</tr>
				</c:forEach>
				</c:if>		
			</table>
</div>	