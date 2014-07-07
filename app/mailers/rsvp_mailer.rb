class RsvpMailer < ActionMailer::Base

  def rsvp_email(primary, guests, message)
    @primary = primary
    @guests  = guests
    @message = message

    subject_prefix = primary.attending? ? "Attending" : "Not Attending"

    mail(:from => '"gabeandnicole.com" <noreply@gabeandnicole.com>', :to => 'nicoldg@uw.edu', :cc => 'gabe.ginobili@gmail.com', :subject => "New RSVP - #{subject_prefix} : #{primary.first_name} #{primary.last_name} + #{@guests.size}")
  end

end
