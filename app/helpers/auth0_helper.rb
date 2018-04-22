module Auth0Helper
  private 
    def user_signed_in?
        session[:userinfo].present?
    end
    
    def authenticate_user!
        if user_signed_in?
            @current_user=build_user
        else
            redirect_to root_path
        end
    end
    
    def current_user
        @current_user
    end

    def build_user
        user_info=session[:userinfo]["info"]
        email_id=user_info["email"]
        user=User.find_by(email: email_id)
        user.name=user_info["name"]
        user.image=user_info["image"]
        user
    end
end
