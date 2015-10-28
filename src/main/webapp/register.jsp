<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body ng-controller="EventController">
	<div class="container">
		<p ng-show="message.length" class="alert alert-info">{{message}}</p>
	
		<form novalidate name="form" ng-submit="submit()" role="form">
			<div class="form-group">
				<label for="title">Title:</label> 
				<input ng-model="event.title" type="text" class="form-control" name="title" id="title"
					required ng-maxlength="50">
				<span ng-show="form.$submitted && form.title.$error.required" class="form-control alert-danger">
					Title field is required!
				</span>
				<span ng-show="form.$submitted && form.title.$error.maxlength" class="form-control alert-danger">
					Title is too long!
				</span>
			</div>
			<div class="form-group">
				<label for="location">Location:</label> 
				<input ng-model="event.location" type="text" class="form-control" 
						name="location" id="location" required>
				<span ng-show="form.$submitted && form.location.$error.required" class="form-control alert-danger">
					Location field is required!
				</span>
			</div>
			<div class="form-group">
				<label for="date">When:</label> 
				<input ng-model="event.date_time" type="date" class="form-control" 
					name="date" id="date" required>
				<span ng-show="form.$submitted && form.date.$error.required" class="form-control alert-danger">
					Date field is required!
				</span>
			</div>
			<div class="form-group">
				<label for="author">Author:</label> 
				<input ng-model="event.author" type="text" class="form-control" 
					name="author" id="author" required ng-maxlength="100">
				<span ng-show="form.$submitted && form.author.$error.required" class="form-control alert-danger">
					Author field is required!
				</span>
				<span ng-show="form.$submitted && form.title.$error.maxlength" class="form-control alert-danger">
					Author is too long! Must have only 100 characters.
				</span>
			</div>
			<div class="form-group">
				<label for="description">Description:</label> 
				<textarea ng-model="event.description" style="height: 200px" name="description" 
						class="form-control" id="description" required></textarea>
				<span ng-show="form.$submitted && form.description.$error.required" class="form-control alert-danger">
					Description field is required!
				</span>
			</div>
			
			<button type="submit" class="btn btn-default" ng-disabled="form.$invalid">Save</button>
			<a href="home.jsp" class="btn btn-danger">Cancel</a>
		</form>
	</div>
</body>
</html>