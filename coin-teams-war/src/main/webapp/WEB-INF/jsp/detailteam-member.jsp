<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://teamfn" prefix="teamfn" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="teams"%>
<teams:genericpage>
<!-- = TeamContainer -->
<div class="section" id="TeamContainer">
	<!-- = Header -->
	<div id="Header">
		<p class="back"><a href="home.shtml?teams=my">&lt; <spring:message code='jsp.detailteam.Back' /> to teams</a></p>
		<h1 class="team-title"><c:out value="${team.name}" /></h1>
		<p class="team-option">
			<a class="button-secondary" id="LeaveTeam" href="doleaveteam.shtml?team=${team.id}"><spring:message code='jsp.detailteam.Leave' /></a>
		</p>
		<br class="clear" />
	<!-- / Header -->
	</div>
	<!-- = Content -->
	<div id="Content">
		<p>
			<c:set var="noDescription"><spring:message code='jsp.general.NoDescription' /></c:set>
			<c:out value="${team.description}" default="${noDescription}"/>
		</p>
		<form>
			<table class="team-table">
				<thead>
					<tr>
						<th><spring:message code='jsp.detailteam.Name' /></th>
						<th><spring:message code='jsp.detailteam.Admin' /></th>
						<th><spring:message code='jsp.detailteam.Manager' /></th>
						<th><spring:message code='jsp.detailteam.Member' /></th>
					</tr>
				</thead>
				<tbody>
				<c:if test="${fn:length(team.members) > 0 }">
					<c:forEach items="${team.members}" var="member">
						<tr>
							<td><c:out value="${member.name}" /></td>
							<td><input id="0_${member.id}" type="checkbox" name="adminRole" value="1" <c:if test="${teamfn:contains(member.roles, admin)}" > checked</c:if> disabled /></td>
							<td><input id="1_${member.id}" type="checkbox" name="managerRole" value="1" <c:if test="${teamfn:contains(member.roles, manager)}" > checked</c:if> disabled /></td>
							<td></td>
						</tr>
					</c:forEach>
				</c:if>
				</tbody>
			</table>
		</form>
	<!-- / Content -->
	</div>
<!-- / TeamContainer -->
</div>
</teams:genericpage>