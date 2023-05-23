<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Homepage</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.0.4/tailwind.min.css">
    <style>
    
     .coursde-item:hover {
  transform: scale(1.1);
  transition: transform 0.2s ease-in-out;
}
	body{
		margin: 0;
	    padding: 0;
    	font-family: cursive;
    	position: relative;
   		color: #f9fafb;
    }
    nav{
    	position: fixed;
    	top: 0;
    	left: 0;
    	width: 100%;
    	height: 80px;
    	padding: 10px 90px;
    	box-sizing: border-box;
    	background: rgba(0,0,0,0.6);
    	border-bottom: 1px solid #fff;
    }
    nav.heading{
    	padding: 22px 20px;
    	height: 80px;
    	float: left;
    	
    	text-transform: uppercase;
    	color: #f9fafb;
    }
    nav ul{
    	list-style: none;
    	float: right;
    	margin: 0;
    	padding: 0;
    	display: flex;
    }
    nav ul li a{
    	line-height: 20px;
    	color: #fff;
    	padding: 12px 20px;
    	text-decoration: none;
    	font-size: 14px;
    	font-weight: blox;
    	text-transform: uppercase;
    }
    nav ul li a:hover{
    	background: rgba(0,0,0,0.7);
    	border-radius: 6px;
    }
    
    section{
    
    	background: url(pic1.jpg);
    	background-size: 100% 100%;
    	background-position: center;	
    	width: 100%;
    	height: 100vh;
    	background-repeat: no-repeat;
    }
    
.bg-white{
	border: 2px solid #E42F1C;
	background-color: rgba(0, 0, 0,0.6);
}

h1{
    color: #f9fafb;
    top: 113px;
    left: 620px;
    position: absolute;
    display: block;
    padding-left: 10px;
    padding-right: 10px;
    background-color: rgba(0, 0, 0,0.6);
    font-size: 28px;
    font-weight: bold;
    font-family: cursive;
}


.nav-ul{
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 10px;
}

.nav-farhad{
	display: flex;
	align-items: center;
	justify-content: space-between;

}

.submit-farhad{
    padding: 3px 8px;
    margin-left: 10px;
    }
    
    .cancel-farhad{
    padding: 3px 8px;
    margin-left: 5px;
    }
    
    .afnan{
    	font-size: 18px;
    	font-weight: bold;
    	background-color: #ff6b6b;
    	border-radius: 5px;	
    }
    
    .alomgir{
	  	top: 113px;
	    left: 1135px;
	    position: absolute;
	    display: block;
	    font-size: 18px;
	    color: #f9fafb;
    
    }
    
    .clr{
    }
    
    </style>
</head>
<body class="bg-gray-100">
<nav class = "nav-farhad">
    
      <div class ="heading" style="font-size: 26px;
        font-weight: bold;">Course Management System</div>
        <ul class = "nav-ul">        
	        <li class="mr-3">
	          		<a class="inline-block text-white-600 text-underline hover:text-gray-200 afnan"  href="logout" >Log Out</a>
	        </li>
      </ul>
      
</nav>

<section>

<div class="max-w-7xl mx-auto py-6 sm:px-6 lg:px-8">
    <div class="px-4 py-6 sm:px-0">
      <div class="flex items-center justify-between">
        <h1 >All Courses</h1>
        <a href="create_course" class="px-4 py-2 text-white bg-blue-500 rounded hover:bg-blue-600 alomgir">Add New Course</a>
</div>
      </div>
        <div class="my-4">
            <div class="grid grid-cols-4 gap-x-8 gap-y-8 " style="
    margin-top: 120px;">
                <c:forEach var="course" items="${Courses}">
                  
                    <a href="course?courseCode=${course.courseCode}">
                		<div class="bg-white rounded-lg shadow-md p-4 relative course-item">
              
	                    	<div class = "text-lg font-bold">Course Title: ${course.courseName}</div>
	                        <div class = "text-lg font-bold" >Course Code: ${course.courseCode}</div>
	                        <div class = "text-lg font-bold">Instructor Name: ${course.instructor}</div>
	                        <div class = "text-lg font-bold" >Enrolled ${course.noOfStudents} Students</div>
                    	</div>
					</a>
                   
                </c:forEach>
            </div>
        </div>
    </div>
</div>
</section>

<footer style ="font-family: sans-serif;">
<p>Created by AFnaN & Alogmir. © 2023</p>
</footer>

</body>
</html>