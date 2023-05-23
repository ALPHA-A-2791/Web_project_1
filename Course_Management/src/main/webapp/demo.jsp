<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri='http://java.sun.com/jsp/jstl/core'  %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Homepage</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.0.4/tailwind.min.css">
<style>
    /* .course-item:hover {
  transform: scale(1.1);
  transition: transform 0.2s ease-in-out;
}
	body{
    	font-family: "Century Gothic", CenturyGothic, Geneva, AppleGothic, sans-serif;
    }
.bg-white{

	background-color: rgba(0, 0, 0,0.5);
} */

/* Modal container */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal content */
.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
  max-width: 500px;
}

/* Close button */
.close {
  color: #aaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: black;
  text-decoration: none;
  cursor: pointer;
}

/* Submit button */
#submitBtn {
  background-color: #4CAF50;
  color: white;
  border: none;
  padding: 10px 20px;
  margin-top: 10px;
  margin-right: 10px;
  border-radius: 5px;
  cursor: pointer;
}

/* Cancel button */
#cancelBtn {
  background-color: #f44336;
  color: white;
  border: none;
  padding: 10px 20px;
  margin-top: 10px;
  border-radius: 5px;
  cursor: pointer;
}

/* Button hover effect */
#submitBtn:hover,
#cancelBtn:hover {
  opacity: 0.8;
}


</style>
</head>
<body class="text-gray-800 antialiased">

<button id="openModalBtn">Open Modal</button>

<div id="customModal" class="modal">
    <div class="modal-content">
      <span class="close">&times;</span>
      <h2>Modal Title</h2>
      <p>Modal content goes here.</p>
      <button id="submitBtn">Submit</button>
      <button id="cancelBtn">Cancel</button>
    </div>
  </div>

    <!-- <nav class="flex items-center justify-between flex-wrap bg-gray-300 p-6">
    <div class="flex items-center flex-shrink-0 text-white mr-6">
      <span class="font-semibold text-xl tracking-tight">Course Management System</span>
    </div>
    <div class="block lg:hidden">

    </div>
    
    
	
	
    
    
    
    
    <div id="nav-content" class="w-full flex-grow lg:flex lg:items-center lg:w-auto hidden lg:block pt-6 lg:pt-0">
      <ul class="list-reset lg:flex justify-end flex-1 items-center">
        <li class="ml-3">
          <a id="add-course-button" class="inline-block bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded cursor-pointer">Add Course</a>
		<form id="add-course-form" class="hidden ml-3" method="post" action="student" style="max-width: 400px;">
			  <div class="mt-4 flex flex-row items-center">
			  	<label for="course-code" class="block text-gray-200 font-bold mb-2 text-white" style="margin-right: 10px;">Course Code:</label>
			  	<div style="flex: 1;">
			    	<input type="text" name="courseCode" id="course-code" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" style="padding: 10px; margin-right: 10px; height: 30px;">
			  	</div>
			  	<button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded mr-2" style="padding: 10px; margin-left: 10px;">Submit</button>
		 		<button type="button" id="cancel-button" class="bg-gray-500 hover:bg-gray-700 text-white font-bold py-2 px-4 rounded" style="padding: 10px;">Cancel</button>
			</div>
		</form>

        </li>
        <li class="mr-3">
          <a class="inline-block text-red-600 no-underline hover:text-gray-200 hover:text-underline py-2 px-4" href="logout">Log Out</a>
        </li>
      </ul>
    </div>
    </nav>
    
     <main>
      <section class="absolute w-full h-full">
      
      <div
          class="absolute top-0 w-full h-full bg-gray-900"
          style="background-image: url('pic.jpg'); background-size: 100% 100%; background-attachment: fixed; background-repeat: no-repeat; "
        ></div>

	<div class="max-w-7xl mx-auto py-6 sm:px-6 lg:px-8">
	    <div class="px-4 py-6 sm:px-0">
	        <h1 class="text-2xl  text-red-600">Registered Courses</h1>
	        <div class="my-4">
	            <div class="grid grid-cols-3 gap-x-8 gap-y-8">
	                <c:forEach var="course" items="${registeredCourses}">
	                    <div class="bg-white rounded-lg shadow-md p-4 relative course-item">
	                        <div class="text-lg font-medium text-gray-900">Course Title: ${course.courseName}</div>
	                        <div class="text-base font-medium text-gray-700">Course Code: ${course.courseCode}</div>
	                        <div class="text-md text-gray-700">Course Teacher: ${course.instructor}</div>
	                    </div>
	                </c:forEach>
	            </div>
	        </div>
	    </div>
	</div>
	



 </section>
    </main> -->
    
   
	
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
    
  
  
  
    // Get the modal element
    var modal = document.getElementById("customModal");

    // Get the button that opens the modal
    var btn = document.getElementById("openModalBtn");

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

    // When the user clicks the button, open the modal
    btn.onclick = function() {
    modal.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    span.onclick = function() {
    modal.style.display = "none";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
    }

    // When the user clicks the submit button, perform some action
    var submitBtn = document.getElementById("submitBtn");
    submitBtn.onclick = function() {
    alert("Form submitted!");
    }

    // When the user clicks the cancel button, close the modal
    var cancelBtn = document.getElementById("cancelBtn");
    cancelBtn.onclick = function() {
    modal.style.display = "none";
    }

   
    
    
    
  </script>
  
</body>
</html>