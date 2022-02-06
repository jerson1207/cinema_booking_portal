admin = User.new(first_name: "Jerson", last_name: "Jabat", mobile_number: "09123456789", email: "admin@test.com", password: "123456", password_confirmation: "123456", role: 1)
admin.save

user = User.new(first_name: "James", last_name: "Bond", mobile_number: "09123456789", email: "user1@test.com", password: "123456", password_confirmation: "123456", role: 0)
user.save