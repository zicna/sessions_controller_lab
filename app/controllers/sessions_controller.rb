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
    # do NOT forget that in ruby "" => 'true', only 'nil' and 'false' => 'false'
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
