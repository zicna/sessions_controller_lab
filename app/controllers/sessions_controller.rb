class SessionsController < ApplicationController
  def new
  end

  def create
    # raise params.inspect
    # byebug
    if !params[:name] || params[:name] == ''
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end




    # if params[:name]
    #   session[:name] = params[:name]
    #   redirect_to '/'
    # elsif !params[:name]
    #   redirect_to '/login'
    # elsif params[:name] == ''
    #   byebug
    #   redirect_to '/login'
    # end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end
end
