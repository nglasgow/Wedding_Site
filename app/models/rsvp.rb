class Rsvp < ActiveRecord::Base

  attr_accessible :first_name, :last_name, :primary, :phone, :email, :attending, :using_shuttle, :title, :guest_of_id
  has_one :Rsvp

  def to_s
    if primary
      "#{title} #{first_name} #{last_name} email: '#{email}' phone: '#{phone}' attending: '#{attending}' using_shuttle: '#{using_shuttle}'"
    else
      "#{title} #{first_name} #{last_name}"
    end
  end

  def attending?
    "yes" == attending
  end

end
