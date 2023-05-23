<%@ page language="java" %>
<%@ taglib prefix="c" uri='http://java.sun.com/jsp/jstl/core'  %>
<!DOCTYPE html>
<html>
  <head>
    <title>Course Management System</title>
    <!-- Include the Tailwind CSS stylesheet -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.0.2/dist/tailwind.min.css">
    <style>
    
.student-container {
  background-color: white;
  border-radius: 10px;
  padding: 10px;
  margin-bottom: 8px;
  box-shadow: 0 2px 4px rgba(0,0,0,0.1);
}

body {
  background-image: url('pic1.jpg');
  background-repeat: no-repeat;
  background-size: cover;
  background-position: center;
  height: 100%;
  min-height: 100vh;
  font-family: cursive;
  color: #f9fafb;
}
    
.bg-clr{
  border: 2px solid #E42F1C;
  background-color: rgba(0, 0, 0,0.6);
}

.bg-gray-300 {
	--darkreader-bg--tw-bg-opacity: 1;
	
}
   
</style>
</head>

  <body>
  
   <nav class="flex items-center justify-between flex-wrap  p-6">
    <div class="flex items-center flex-shrink-0 text-white mr-6">
      <span class="font-semibold text-3xl tracking-tight">Course Management System</span>
    </div>
   
    </nav>
  
  
    <div class="max-w-2xl mx-auto px-4 py-3">
      <h1 class="text-2xl font-black mb-4 text-gray-200">Course Information</h1>
      <div class="bg-clr rounded-lg shadow-md p-6 mb-8">
        <p class="text-xl font-black">Instructor: <%= request.getAttribute("instructor") %></p>
        <p class="text-lg font-black">Course Title: <%= request.getAttribute("courseTitle") %></p>
        <p class="text-lg font-black">Course Code: <%= request.getAttribute("courseCode") %></p>
        
      </div>
      <h2 class="text-2xl font-black mb-2  text-gray-200">Enrolled Students</h2>
      <ul >
      <c:forEach var="student" items="${students}">
        
        <div class="student-container bg-clr">
    <h3 class="text-lg mb-2 font-black ">Name: ${student.name}</h3>
    <p class="text-sm font-black ">Reg. No: ${student.email}</p>
  </div>
         </c:forEach>
      </ul>
    </div>
    
    <footer style ="font-family: sans-serif;">
	<p>Created by AFnaN & Alogmir. © 2023</p>
	</footer>
    
  </body>
</html>