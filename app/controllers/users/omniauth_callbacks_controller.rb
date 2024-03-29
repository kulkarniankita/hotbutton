class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
#devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
def twitter
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    # binding.pry
    @user = User.find_for_twitter_oauth(request.env["omniauth.auth"].except("extra"))

    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Twitter") if is_navigational_format?
    else
      session["devise.twitter_data"] = request.env["omniauth.auth"]
      # binding.pry
      redirect_to new_user_registration_url
    end
  end


end
