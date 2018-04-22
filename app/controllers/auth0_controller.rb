class Auth0Controller < ApplicationController
  include LogoutHelper
  def logout
      reset_session
      redirect_to logout_url.to_s
  end

  def callback
    session[:userinfo] = request.env['omniauth.auth']
    find_or_create_user!
    redirect_to '/books'
  end

  def failure
    @error_msg = request.params['message']
  end

  private

    def find_or_create_user!
        email_id=session[:userinfo]["info"]["email"]
        User.find_or_create_by!(email: email_id)
    end
end
