class ContactMailer < ActionMailer::Base
  default from: "no-replay@gabeandnicole.com"

  def inbound_email(email, subject, message)
    @subject = subject
    @message  = message
    mail(:from => email, :to => 'nicoledg@uw.edu', :cc => 'gabe.ginobili@gmail.com', :subject => "Message from gabeandnicole.com: #{subject}")
  end

end
