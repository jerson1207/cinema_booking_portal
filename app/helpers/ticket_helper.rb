module TicketHelper

  def available_ticket(id)
    user = User.find(id)
    if id.present?
      return "#{user.first_name} #{user.last_name}"
    else
      return "available"
    end
  end
end
