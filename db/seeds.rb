admin = User.create(first_name: "Jerson", last_name: "Jabat", mobile_number: "09123456789", email: "admin@test.com", password: "123456", password_confirmation: "123456", role: 1)
admin.save

# create Cinema
cinema_one = Cinema.create(name: "Cinema One")
# Assiang movies

movie1 = Movie.create(title: "doctor strange in the multiverse of madness", cinema_id: cinema_one.id)
# test
seat1 = Seat.create(name: "Seat 1", cinema_id:cinema_one.id, movie_id: movie1.id )
ts1 = TimeSlot.create(name: "10 AM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat1.id )
Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat1.id, time_slot_id: ts1.id )
ts2 = TimeSlot.create(name: "2 PM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat1.id )
Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat1.id, time_slot_id: ts2.id )
ts3 = TimeSlot.create(name: "6 PM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat1.id )
Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat1.id, time_slot_id: ts3.id )
ts4 = TimeSlot.create(name: "10 PM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat1.id )
Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat1.id, time_slot_id: ts4.id )
# Seat 2
seat2 = Seat.create(name: "Seat 2", cinema_id:cinema_one.id, movie_id: movie1.id )
  ts1 = TimeSlot.create(name: "10 AM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat2.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat2.id, time_slot_id: ts1.id )

  ts2 = TimeSlot.create(name: "2 PM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat2.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat2.id, time_slot_id: ts2.id )

  ts3 = TimeSlot.create(name: "6 PM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat2.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat2.id, time_slot_id: ts3.id )

  ts4 = TimeSlot.create(name: "10 PM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat2.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat2.id, time_slot_id: ts4.id )


# Seat 3
seat3 = Seat.create(name: "Seat 3", cinema_id:cinema_one.id, movie_id: movie1.id )

  ts1 = TimeSlot.create(name: "10 AM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat3.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat3.id, time_slot_id: ts1.id )

  ts2 = TimeSlot.create(name: "2 PM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat3.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat3.id, time_slot_id: ts2.id )

  ts3 = TimeSlot.create(name: "6 PM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat3.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat3.id, time_slot_id: ts3.id )

  ts4 = TimeSlot.create(name: "10 PM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat3.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat3.id, time_slot_id: ts4.id )

# Seat 4
seat4 = Seat.create(name: "Seat 4", cinema_id:cinema_one.id, movie_id: movie1.id )

  ts1 = TimeSlot.create(name: "10 AM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat4.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat4.id, time_slot_id: ts1.id )

  ts2 = TimeSlot.create(name: "2 PM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat4.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat4.id, time_slot_id: ts2.id )

  ts3 = TimeSlot.create(name: "6 PM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat4.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat4.id, time_slot_id: ts3.id )

  ts4 = TimeSlot.create(name: "10 PM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat4.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat4.id, time_slot_id: ts4.id )

# Seat 5
seat5 = Seat.create(name: "Seat 5", cinema_id:cinema_one.id, movie_id: movie1.id )

  ts1 = TimeSlot.create(name: "10 AM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat5.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat5.id, time_slot_id: ts1.id )

  ts2 = TimeSlot.create(name: "2 PM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat5.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat5.id, time_slot_id: ts2.id )

  ts3 = TimeSlot.create(name: "6 PM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat5.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat5.id, time_slot_id: ts3.id )

  ts4 = TimeSlot.create(name: "10 PM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat5.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat5.id, time_slot_id: ts4.id )

# Seat 6
seat6 = Seat.create(name: "Seat 6", cinema_id:cinema_one.id, movie_id: movie1.id )

  ts1 = TimeSlot.create(name: "10 AM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat6.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat6.id, time_slot_id: ts1.id )

  ts2 = TimeSlot.create(name: "2 PM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat6.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat6.id, time_slot_id: ts2.id )

  ts3 = TimeSlot.create(name: "6 PM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat6.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat6.id, time_slot_id: ts3.id )

  ts4 = TimeSlot.create(name: "10 PM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat6.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat6.id, time_slot_id: ts4.id )

# Seat 7
seat7 = Seat.create(name: "Seat 7", cinema_id:cinema_one.id, movie_id: movie1.id )

  ts1 = TimeSlot.create(name: "10 AM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat7.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat7.id, time_slot_id: ts1.id )

  ts2 = TimeSlot.create(name: "2 PM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat7.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat7.id, time_slot_id: ts2.id )

  ts3 = TimeSlot.create(name: "6 PM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat7.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat7.id, time_slot_id: ts3.id )

  ts4 = TimeSlot.create(name: "10 PM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat7.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat7.id, time_slot_id: ts4.id )

# Seat 8
seat8 = Seat.create(name: "Seat 8", cinema_id:cinema_one.id, movie_id: movie1.id )

  ts1 = TimeSlot.create(name: "10 AM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat8.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat8.id, time_slot_id: ts1.id )

  ts2 = TimeSlot.create(name: "2 PM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat8.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat8.id, time_slot_id: ts2.id )

  ts3 = TimeSlot.create(name: "6 PM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat8.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat8.id, time_slot_id: ts3.id )

  ts4 = TimeSlot.create(name: "10 PM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat8.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat8.id, time_slot_id: ts4.id )

# Seat 9
seat9 = Seat.create(name: "Seat 9", cinema_id:cinema_one.id, movie_id: movie1.id )

  ts1 = TimeSlot.create(name: "10 AM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat9.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat9.id, time_slot_id: ts1.id )

  ts2 = TimeSlot.create(name: "2 PM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat9.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat9.id, time_slot_id: ts2.id )

  ts3 = TimeSlot.create(name: "6 PM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat9.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat9.id, time_slot_id: ts3.id )

  ts4 = TimeSlot.create(name: "10 PM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat9.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat9.id, time_slot_id: ts4.id )

# Seat 10
seat10 = Seat.create(name: "Seat 10", cinema_id:cinema_one.id, movie_id: movie1.id )

  ts1 = TimeSlot.create(name: "10 AM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat10.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat10.id, time_slot_id: ts1.id )

  ts2 = TimeSlot.create(name: "2 PM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat10.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat10.id, time_slot_id: ts2.id )

  ts3 = TimeSlot.create(name: "6 PM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat10.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat10.id, time_slot_id: ts3.id )

  ts4 = TimeSlot.create(name: "10 PM", cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat10.id )
  
      Ticket.create(cinema_id:cinema_one.id, movie_id: movie1.id, seat_id: seat10.id, time_slot_id: ts4.id )





user = User.create(first_name: "James", last_name: "Bond", mobile_number: "09123456789", email: "user1@test.com", password: "123456", password_confirmation: "123456", role: 0)
user.save