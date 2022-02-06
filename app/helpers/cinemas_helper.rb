module CinemasHelper

  def booked_available(id)
    if id.present?
      "SOLD"
    else
      "AVAILABLE"
    end
  end


end
