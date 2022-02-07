admin = User.new(first_name: "Jerson", last_name: "Jabat", mobile_number: "09123456789", email: "admin@test.com", password: "123456", password_confirmation: "123456", role: 1)
admin.save

# create Cinema
cinema_one = Cinema.create(name: "Cinema One")
# Assiang movies
Movie.create(title: "doctor strange in the multiverse of madness", cinema_id: cinema_one.id)
Movie.create(title: "Spider-man: No way home", cinema_id: cinema_one.id)
Movie.create(title: "Ethernals", cinema_id: cinema_one.id)
Movie.create(title: "Shang Chi and the legends of the ten rings", cinema_id: cinema_one.id)
Movie.create(title: "Spider-man far from home", cinema_id: cinema_one.id)



user = User.new(first_name: "James", last_name: "Bond", mobile_number: "09123456789", email: "user1@test.com", password: "123456", password_confirmation: "123456", role: 0)
user.save