class ContactMailer < ActionMailer::Base
  default from: "admin@gabeandnicole.com"

  def inbound_email(email, subject, message)
    @subject = subject
    @message  = message
    mail(:from => email, :to => 'nicole@gabeandnicole.com', :cc => 'gabe.nicole.wed@gmail.com', :subject => "Message from gabeandnicole.com: #{subject}")
  end

end
