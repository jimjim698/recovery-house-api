class ApplicationController < ActionController::Base
  #include ActionController::HttpAuthentication::Token::ControllerMethods
  # include Knock::Authenticable


  def get_current_user
     User.find_by(username:request.headers['HTTP_AUTHORIZATION'])
  end 





end
