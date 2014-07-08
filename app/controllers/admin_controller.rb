require 'base64'

class AdminController < ApplicationController

  before_filter :authenticate

  def index
    @rsvps = Rsvp.all
  end

  protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == 'admin' && password == Base64.decode64('Z2FiZWhvYmJlcw==\n')
    end
  end

end
