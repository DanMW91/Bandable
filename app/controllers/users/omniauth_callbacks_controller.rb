class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  skip_before_action :verify_authenticity_token, only: :passthru

  def passthru
    # binding.pry
    # TODO: Write the logic to read request.env["omniauth.auth"]. - Put a `binding.pry` here and investigate the content of that variable. You can then implement a sign in / sign up logic, based on what you have in DB
  # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, kind: "Spotify") if is_navigational_format?
    else
      session["devise.spotify_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

  def failure
    redirect_to root_path
  end
end
