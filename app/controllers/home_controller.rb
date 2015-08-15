class HomeController < ApplicationController
  def code
  end

  def session_upgrade
    if (params.has_key?(:key) && Code.where("key = '#{params[:key]}'").empty? == false)
      # session upgrade
      # redirect to user creation
      render plain: params[:key]
    else
      redirect_to action: 'code'
    end
  end
end
