<div class="navbar">
	<div class="logo">
		Admin Panel
	</div>
	<div class="logout-user">
		<div class="username">${username}</div>
		<div class="logout">
			<form action="logout" method="post">
			<input type="submit" value="Logout"> <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
		</div>
	</form>
	</div>
</div>
