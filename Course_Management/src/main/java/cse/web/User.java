package cse.web;


public class User {
		private int userId ;
		private String username;
		private String email;
		private int userType;
		public String img;
		
		public User(int userId, String username, String email,int userType, String img) {
			super();
			this.userId = userId;
			this.username = username;
			this.email = email;
			this.userType = userType;
			this.img = img;
			
		}

		public int getUserId() {
			return userId;
		}

		public String getUsername() {
			return username;
		}

		public String getEmail() {
			return email;
		}


		public int getUserType() {
			return userType;
		}
		public String getimg() {
			return img;
		}
		
		
		
}
	

