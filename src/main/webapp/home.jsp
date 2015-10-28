<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Events</title>
</head>
<body ng-controller="EventsController">
	<div class="container">
	<input ng-model="filter"
		style="margin-top: 20px; margin-bottom: 20px;" class="form-control" placeholder="Type here title of event...">
		<div class="panel panel-default">
			<div class="panel-heading">Latest Events</div>
			
			<table style="margin-top: 10px" class="table">
				<tr>
					<th>Title</th>
					<th>Author</th>
					<th>Location</th>
					<th>When</th>
				</tr>
			
				<tr ng-repeat="event in events | filter:filter">
					<td>{{event.title}}</td>
					<td>{{event.author}}</td>
					<td>{{event.location}}</td>
					<td>{{event.date_time | date : format}}</td>
					<td>
						<a href="event/edit/{{event.id}}" class="btn btn-primary">Edit</a>
						<danger-button action="remove(event)" name="Remove"></danger-button>
					</td>
				</tr>

			</table>
		</div>
	
	</div>
</body>
</html>