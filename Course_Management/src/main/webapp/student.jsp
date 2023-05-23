<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri='http://java.sun.com/jsp/jstl/core'  %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.0.4/tailwind.min.css">
<style>
    .course-item:hover {
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
    	height: 60px;
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
	background-color: rgba(0, 0,0,0.6);
}

h1{
    color: #f9fafb;
    top: 113px;
    left: 520px;
    position: absolute;
    display: block;
    font-size: 28px;
    font-weight: bold;
    font-family: cursive;
    padding:10px;
    border: 1px;
    radius: 10px;
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


.add-course{
	top: 113px;
    left: 1150px;
    position: absolute;
    display: block;		

}


.card{
	top: 35px;
    left: 1050px;
    position: absolute;
    display: block;
}

.pic{
 	margin: 10px;
	padding: 15px;
	position: absolute;
    display: flex;
    flex-direction: column;
	top: 60px;
	align-items: center;
	gap:5px;	
   
}
   
.profile-pic{
	width: 100px;
	radius: 50%;

}
</style>
</head>
<body  >

<nav class = "nav-farhad">
    
      <div class ="heading" style="font-size: 26px;
        font-weight: bold;">Course Management System</div>
        <ul class = "nav-ul">
	        <li> 
	        	<a id="add-course-button" class="inline-block bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded cursor-pointer">Add Course</a>
	        	
	        </li>
	        <!--  
	        <li>
			<form id="add-course-form" class="hidden ml-3" method="post" action="student" style="max-width: 400px;">
				  <div class="flex flex-row items-center">
				  	<label for="course-code" class="block text-gray-200 font-bold mb-2 text-white" style="margin-right: 10px;">Course Code:</label>
					  	<div style="flex: 1;">
					    	<input type="text" name="courseCode" id="course-code" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" style="padding: 10px; margin-right: 10px; height: 30px;">
					  	</div>
				  	<button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded mr-2 submit-farhad">Submit</button>
			 		<button type="button" id="cancel-button" class="bg-gray-500 hover:bg-gray-700 text-white font-bold py-2 px-4 rounded cancel-farhad">Cancel</button>
				  </div>
			</form>
			
			</li>
			-->
	        <li class="mr-3">
	          		<a class="inline-block text-white-600 font-bold no-underline hover:text-gray-200 hover:text-underline py-2 px-4 afnan" href="logout" >Log Out</a>
	        </li>
      </ul>
      
    </nav>
    <% String image = (String)request.getAttribute("img"); %>
    
    
    
   <div class= "pic">
   
    <% 
    	out.println("<img src='" +image + "' class='profile-pic'>");
    %>
   
    <h3 style= " display: inline;"><%= request.getAttribute("name") %></h3>
    
   </div>
   
    <h1 >REGISTERED COURSES</h1>
    
	
		<form id="add-course-form" class="hidden ml-3" method="post" action="student" style="max-width: 300px;">
		<div class= "card max-w-md mx-auto my-8 bg-gray-800 p-6 rounded shadow-md flex-col justify-center items-center">
				  <div class="mb-4">
      <label for="title" class="block font-medium text-gray-200">Course Title</label>
      <input type="text" id="title" name="title" class="form-input mt-0.5 block w-full rounded-md border-gray-300 shadow-sm bg-gray-700 text-gray-100"  required>
    </div>
    <div class="mb-4">
      <label for="code" class="block font-medium text-gray-200">Course Code</label>
      <input type="text" id="code" name="courseCode" class="form-input mt-1 block w-full rounded-md border-gray-300 shadow-sm bg-gray-700 text-gray-100" required>
    </div>
    <!--  
    <div class="mb-4">
      <label for="instructor" class="block font-medium text-gray-200">Instructor</label>
      <select id="instructor" name="instructor" class="form-select mt-1 block w-full rounded-md border-gray-300 shadow-sm bg-gray-700 text-gray-100" style="height: 3rem;" required>
        <option value="">Select an instructor</option>
        <c:forEach items="${teachers}" var="teacher">
      <option value="${teacher.id}">${teacher.name}</option>
    </c:forEach>
      </select>
    </div>
    -->
	<button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded mr-2 submit-farhad">Submit</button>
	<button type="button" id="cancel-button" class="bg-gray-500 hover:bg-gray-700 text-white font-bold py-2 px-4 rounded cancel-farhad">Cancel</button>
	 </div>
	</form>
		
	</div>        
	 

    <section>  
    
<div class="max-w-7xl mx-auto py-6 sm:px-6 lg:px-8">
    <div class="px-4 py-10 sm:px-0">
        
        <div class="my-4">
            <div class="grid grid-cols-4 gap-x-8 gap-y-8" style="
    margin-top: 141px; ">
                <c:forEach var="course" items="${registeredCourses}">
                    <div class="bg-white rounded-lg shadow-md p-4 relative course-item" style ="left: 86px;
    top: 25px;">
                        <div class="text-lg font-bold text-gray-900">Course Title: ${course.courseName}</div>
                        <div class="text-base font-semibold text-slate-950">Course Code: ${course.courseCode}</div>
                        <div class="text-md font-extrabold ">Course Teacher: ${course.instructor}</div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>


<div id="card-container" style="display: none;">
  <form method="post" action="create_course">
    <div class="mb-4">
      <label for="title" class="block font-medium text-gray-200">Course Title</label>
      <input type="text" id="title" name="title" class="form-input mt-1 block w-full rounded-md border-gray-300 shadow-sm bg-gray-700 text-gray-100"  required>
    </div>
    <div class="mb-4">
      <label for="code" class="block font-medium text-gray-200">Course Code</label>
      <input type="text" id="code" name="code" class="form-input mt-1 block w-full rounded-md border-gray-300 shadow-sm bg-gray-700 text-gray-100" required>
    </div>
    <div class="mb-4">
      <label for="instructor" class="block font-medium text-gray-200">Instructor</label>
      <select id="instructor" name="instructor" class="form-select mt-1 block w-full rounded-md border-gray-300 shadow-sm bg-gray-700 text-gray-100" style="height: 3rem;" required>
        <option value="">Select an instructor</option>
        <c:forEach items="${teachers}" var="teacher">
      <option value="${teacher.id}">${teacher.name}</option>
    </c:forEach>
      </select>
    </div>
    <button type="submit" class="px-4 py-2 text-white bg-blue-500 rounded-md hover:bg-blue-600 ml-auto">Create Course</button>
  </form>
    <div class="card-footer">
      <button id="cancel-btn">Cancel</button>
    </div>
  </div>



  <script>
  const addCourseButton = document.getElementById("add-course-button");
  const addCourseForm = document.getElementById("add-course-form");
  const cancelButton = document.getElementById("cancel-button");
  const submitButton = document.getElementById("submit-button");
  
  addCourseButton.addEventListener("click", () => {
    addCourseButton.classList.toggle("hidden");
    addCourseForm.classList.toggle("hidden");
    
  });

  cancelButton.addEventListener("click", () => {
    addCourseForm.reset();
    addCourseButton.classList.toggle("hidden");
    addCourseForm.classList.toggle("hidden");
  });

  submitButton.addEventListener("click", () => {
    const courseCode = document.getElementById("course-code").value;
    if (courseCode) {
      const xhr = new XMLHttpRequest();
      xhr.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
          location.reload();
        }
      };
      xhr.open("POST", "/add-course", true);
      xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
      xhr.send(`courseCode=${courseCode}`);
    }
  });
  
  
</script>
 </section>
   
   <!-- <footer style ="font-family: sans-serif;">
<p>Created by AFnaN & Alogmir. © 2023</p>
</footer> -->
   
</body>
</html>