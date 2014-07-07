class HomeController < ApplicationController

  def registry
    @macys_url = 'http://www1.macys.com/registry/wedding/guest/?registryId=2169579'
    @bed_bath_beyond_url = 'http://www.bedbathandbeyond.com/store/giftregistry/view_registry_guest.jsp?pwsToken=&eventType=Wedding&registryId=541140643&pwsurl='
  end

  def inbound_email
    errors = validate_inbound_email params
    respond_to do |format|
      if errors.empty? && ContactMailer.inbound_email(params[:email], params[:subject], params[:message]).deliver
        flash[:notice] = 'Email successfully sent!'
        format.html { redirect_to(contact_path) }
      else
        flash[:error] = "There was a problem sending your email: "
        flash[:error] += errors.join "\n" unless errors.empty?
        format.html { redirect_to(contact_path) }
      end
    end
  end

  def validate_inbound_email params
    errors = []
    errors << "Email can't be blank.  " if params[:email].blank?
    errors << "Name can't be blank.  " if params[:name].blank?
    errors << "Subject can't be blank.  " if params[:subject].blank?
    errors << "Message can't be blank." if params[:message].blank?
    errors
  end

end
