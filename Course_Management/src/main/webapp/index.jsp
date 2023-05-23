<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="theme-color" content="#000000" />
    <link rel="shortcut icon" href="assets/landingpage/img/favicon.ico" />
    <link
      rel="apple-touch-icon"
      sizes="76x76"
      href="assets/landingpage/img/apple-icon.png"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
    />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/gh/creativetimofficial/tailwind-starter-kit/compiled-tailwind.min.css"
    />
    <title>Login</title>
    <style>
    
    *{
      margin: 0;
      padding: 0;
    }
    body{

      background-image: url('pic.jpg');
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-size: 100% 100%;
      font-family: cursive;

    }
    
    
.bg-gray-300 {
	--darkreader-bg--tw-bg-opacity: 1;
	background-color: rgba(0,0,0,0.6);
}
    
.afnan{
	font-size: 18px;
	font-weight: bold;
	background-color: #ff6b6b;
	border-radius: 5px;	
}
    </style>
  </head>
  <body class="text-gray-800 antialiased">
  
   <nav class="flex items-center justify-between flex-wrap bg-gray-300 p-6">
    <div class="flex items-center flex-shrink-0 text-white mr-6">
      <span class="font-semibold text-xl tracking-tight">Course Management System</span>
    </div>
    <div class="block lg:hidden">

    </div>
    
    
    </nav>
  
  <!--  
    <nav
      class="top-0 absolute z-50 w-full flex flex-wrap items-center justify-between px-2 py-3 "
    >
      <div
        class="container px-4 mx-auto flex flex-wrap items-center justify-between"
      >
        
        
      </div>
    </nav>
    -->
    
    <main>
      <section class="absolute w-full h-full">
        <div
          class="absolute top-0 w-full h-full bg-gray-900"
          style="background-image: url('pic.jpg'); background-size: 100% 100%; background-attachment: fixed; background-repeat: no-repeat; "
        ></div>
        <div class="container mx-auto px-4 h-full">
          <div class="flex content-center items-center justify-center h-full">
            <div class="w-full lg:w-4/12 px-4">
              <div
                class="relative flex flex-col min-w-0 break-words w-full mb-6 shadow-lg rounded-lg bg-gray-300 border-0"
              >
                <div class="rounded-t mb-0 px-6 py-6">
               		<h1 style ="text-align: center; font-size: 26px; font-weight: bold;">Login Here</h1>  
                  <div class="text-center mb-3">
                    
                  </div>
                  
                  
                </div>
                <div class="flex-auto px-4 lg:px-10 py-10 pt-0">
                  
                  <form action="login" method="post">
                    <div class="relative w-full mb-3">
                      <label
                        class="block uppercase text-gray-700 text-sm font-bold mb-2"
                        for="grid-password"
                        >User Id</label
                      ><input
                        type="text"
                        name="email" 
                        id="email" 
                        class="border-0 px-3 py-3 placeholder-gray-400 text-gray-700 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full"
                        placeholder="User Id"
                        style="transition: all 0.15s ease 0s;"
                      />
                    </div>
                    <div class="relative w-full mb-3">
                      <label
                        class="block uppercase text-gray-700 text-sm font-bold mb-2"
                        for="grid-password"
                        >Password</label
                      ><input
                        type="password"
                        name="password" 
                        id="password"
                        class="border-0 px-3 py-3 placeholder-gray-400 text-gray-700 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full"
                        placeholder="Password"
                        style="transition: all 0.15s ease 0s;"
                      />
                    </div>
                    <div>
                      <label class="inline-flex items-center cursor-pointer"
                        ><input
                          id="customCheckLogin"
                          type="checkbox"
                          class="form-checkbox border-0 rounded text-gray-800 ml-1 w-5 h-5"
                          style="transition: all 0.15s ease 0s;"
                        /><span class="ml-2 text-sm font-semibold text-gray-700"
                          >Remember me</span
                        ></label
                      >
                    </div>
                    <div class="text-center mt-6 ">
                      <button
                        class="bg-gray-900 text-white active:bg-gray-700 text-sm font-bold uppercase px-6 py-3 rounded shadow hover:shadow-lg outline-none focus:outline-none mr-1 mb-1 w-full"
                        type="submit"
                        style="transition: all 0.15s ease 0s;"
                      >
                        Sign In
                      </button>
                    </div>
                    <% String error = request.getParameter("error"); %>
  <% if (error != null) { %>
    <p><%= error %></p>
  <% } %>
                  </form>
                  <div class="w-1/2 text-right" style="padding-top: 10px; font-size: 20px;">
                  <a href="#pablo" class="text-gray-300"
                    ><small>Create new account</small></a
                  >
                </div>
                </div>
              </div>
              <div class="flex flex-wrap mt-6">
                <div class="w-1/2">
                  <a href="#pablo" class="text-gray-300"
                    ><small>Forgot password?</small></a
                  >
                </div>
                
              </div>
            </div>
          </div>
        </div>
        
      </section>
    </main>
    
    <footer style ="font-family: sans-serif;">
<p>Created by AFnaN & Alogmir. © 2023</p>
</footer>
    
  </body>
  <script>
    function toggleNavbar(collapseID) {
      document.getElementById(collapseID).classList.toggle("hidden");
      document.getElementById(collapseID).classList.toggle("block");
    }
  </script>
</html>
    