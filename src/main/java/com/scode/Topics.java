package com.scode;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;

/**
 * Servlet implementation class Topics
 */
@WebServlet("/topics")
public class Topics extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Connection con;
    private PreparedStatement stmt;
    private int id;
    private String topic;
    private ArrayList<Integer> al;
    private int nextNumber;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
	public void init() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/jam","root","");
			stmt = con.prepareStatement("select topic from topics where id = ?");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		al = new ArrayList<Integer>();
		al.add(1);
	}
    public Topics() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		while(true) {
			nextNumber = (int)(Math.random()*(70-1+1)+1);  
			if(al.size() == 70)
				break;
			if(!al.contains(nextNumber)) {
				al.add(nextNumber);
				break;
			}

		}
		System.out.println(al);
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		id = Integer.parseInt(request.getParameter("id"));
		try {
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			if(rs.next()) {
				topic = rs.getString(1);
//				out.print(topic);
				String outHTML = """
						<!DOCTYPE html>
				<html>

				<head>
					<title>Topic</title>
					<meta name="viewport" content="width=device-width, initial-scale=1">
					<link rel="stylesheet" href="./styles.css">
				</head>

				<body>
							<div id="header">
								<p align="center">
									<font color="white" size="200">JAM</font>
								</p>
							</div>
							<hr />
							<div style="background-color:white" align="center">
								<font color="teal" size="150" id="topicId">Topic-%d</font><br />
								<font size="150" id="topic">%s</font>
								<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
								<div id="countdown">Time left: 120 seconds</div>
								<br />
								<font size="150" id="next">Next number is %d</font>
							</div>
					</div>

				</body>
				<script type="module" src="topicpage.js"></script>

				<html>
						""";
				out.println(outHTML.formatted(id,topic,nextNumber));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	public void destroy() {
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
