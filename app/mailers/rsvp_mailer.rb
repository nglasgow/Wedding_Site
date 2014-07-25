class RsvpMailer < ActionMailer::Base

  def rsvp_email(primary, guests, message)
    @primary = primary
    @guests  = guests
    @message = message

    subject_prefix = primary.attending? ? "Attending" : "Not Attending"

    mail(:from => '"www.gabeandnicole.com" <no-reply@gabeandnicole.com>', :to => 'rsvp.email', :cc => 'gabe.nicole.wed@gmail.com', :subject => "New RSVP - #{subject_prefix} : #{primary.first_name} #{primary.last_name} + #{@guests.size}")
  end
end
