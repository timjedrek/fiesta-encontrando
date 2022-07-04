class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :current_password)
  end 
end

### I commented out the reference to this controller in the routes file.  Not sure why this was here in the first place.
### The intention I beleive for this file is to allow sign-in using a username in addition to the email. 
### But the ruby erb file that has the form has the field set as an email field so it checks for validity.
