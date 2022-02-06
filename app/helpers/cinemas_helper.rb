module CinemasHelper

  def booked_available(id)
    if id.present?
      "SOLD"
    else
      "AVAILABLE"
    end
  end

  #admin
  def book_by(id)
    if id.present?
      user = User.find(id)
      "#{user.first_name} #{user.last_name}"
    else
      "AVAILABLE"
    end
  end
end