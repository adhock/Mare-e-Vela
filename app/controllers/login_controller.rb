class LoginController < ApplicationController

  def login
    session[:user_id] = nil
    if request.post?
      user = User.authenticate(params[:login],params[:password])
      if user
        session[:user_id] = user.id
        redirect_to users_url
      else
        flash[:error] = "Utilisateur ou mot de passe obsolete!"
      end
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "Vous etes deconnecter"
    redirect_to :action=> "login"
  end

end
