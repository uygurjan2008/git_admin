<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="../css/bootstrap-3.2.0/dist/css/bootstrap.min.css">

<link href="../data/kindeditor/themes/default/default.css" rel="stylesheet" />
<link rel="stylesheet" href="css/index.css">

<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/index.js"></script>
<script src="../data/kindeditor/kindeditor-all-min.js"></script>





</head>
<body>
	<div class="all">
		<div class="top"></div>
		<div class="down">
			<div class="left">
				<div>
					<a class="info btn  btn-block">systeminfo</a>
				</div>
				<div>
					<a class="version btn  btn-block">system version</a>
				</div>
				<div>
					<a class="databases btn  btn-block">databases</a>
				</div>
				<div>
					<a class="post btn   btn-block">post a blog</a>
				</div>
				<div>
					<a class="editor btn   btn-block">editor</a>
				</div>
				<div>
					<a class="page btn   btn-block">new page</a>
				</div>



			</div>
			<div class="right"></div>

		</div>



	</div>
	<div class="hidden" style="display: none;" id="source">
		<!-- info -->
		<div id="info">
			<div align="center"
				style="width: 250px; height: 150px; border: 1px solid; border-radius: 50px; box-shadow: 0 0 0 10px #26bbca;">

				<img src="img/1.jpg" alt="" />
				
			</div>
		</div>

		<!-- database -->

		<div id="database">
			<div align="center">
				<%
					String username = "root";
					String password = "root";

					String Driver = "com.mysql.jdbc.Driver";
					String url = "jdbc:mysql://127.0.0.1:3306/cart";

					try {
						Class.forName(Driver);

						String sql = "select * from cart";
						Connection conn = DriverManager.getConnection(url, username,
								password);

						Statement stmt = conn.createStatement();
						ResultSet rs = stmt.executeQuery(sql);
						while (rs.next()) {
				%>

				<div style="width: 100%; height: 160px;margin-top:10px;">
					<img src="<%=rs.getString("pic")%>" width="250" height="150" >
						 <label for=""><%=rs.getString("name")%></label>
					<label><%=rs.getString("price")%></label>
				</div>

				<%
					}

					} catch (Exception e) {

						System.out.println(e);

					}
				%>





			</div>
		</div>

		<div id="post">

			<div style="width: 220px;height:150px;">
				<form>
					<div>
						<label for="">A</label> <input type="text" />
					</div>
					<div>
						<label for="">A</label> <input type="text" />
					</div>
					<div>
						<label for="">A</label> <input type="text" />
					</div>

					<div>
						<a class="btn btn-info submit">submit</a>
					</div>
				</form>
			</div>



		</div>

		<div id="editor">
			<form>
				<label for="">picture:</label><input type="file" name="file" /> <label
					for="">name</label><input type="text" name="name" /> <label for="">desc</label><input
					type="text" name="desc" />

			</form>

		</div>


		<!-- version -->

		<div id="version">

			<p>system version 1.0</p>


		</div>


		<!-- page -->
		<div id="page">
		
		<label for="">A</label><input type="text" />
		<label for="">A</label><input type="text" />
		<label for="">A</label><input type="text" />
		<label for="">A</label><input type="text" />
		<label for="">A</label><input type="text" />
		<label for="">A</label><input type="text" />
		
		
		
		</div>



	</div>



</body>
</html>