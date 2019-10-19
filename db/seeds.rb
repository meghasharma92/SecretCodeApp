# Create Admin User

admin = User.create!(first_name:  "Admin",
	     last_name: "User",
             email: "admin@gmail.com",
             password:              "Testing123!",
             password_confirmation: "Testing123!",
             role: 1
		)

codes = []
20.times do |i|
codes << Code.new(code: SecureRandom.hex(10))
end

Code.import codes

member = User.create!(first_name:  "Member",
	     last_name: "User",
             email: "member@gmail.com",
             password:              "Testing123!",
             password_confirmation: "Testing123!"
		)

member.secret_code = Code.last



