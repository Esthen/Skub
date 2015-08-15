class HomeController < ApplicationController
  def code
  end

  def session_upgrade
    if (params.has_key?(:key) && Code.where("key = '#{params[:key]}'").empty? == false)
      session[:key] = 413
      redirect_to new_registration_path(:account)
    else
      session[:key] = 612
      redirect_to action: 'code'
    end
  end
end
