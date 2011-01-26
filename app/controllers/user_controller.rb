class UserController < ApplicationController

  before_filter :login_required, :only => []

  def register
    @user = User.new(
      :email => params[:email],
      :password => params[:password],
      :password_confirmation => params[:confirm]
    )
    if request.post?
      if @user.save
        session[:user] = User.authenticate(@user.email, params[:password])
        render :text => "Signup successful, welcome!"
      else
        render :text => @user.errors.first[1], :status => 400
      end
    end
  end

  def login
    if request.post?
      if session[:user] = User.authenticate(params[:email], params[:password])
        render :text => "Login successful, welcome!"
      else
        render:text => "Login unsuccessful", :status => 400
      end
    end
  end

  def logout
    session[:user] = nil
    redirect_to :controller => "search", :action => "index"
  end

  def forgot_password
    # TODO(dmac): implement this
    #if request.post?
      #user = User.find_by_email(params[:user][:email])
      #if user and user.send_new_password
        #flash[:message]  = "A new password has been sent by email."
        #redirect_to :action => "login"
      #else
        #flash[:warning]  = "Couldn't send password"
      #end
    #end
  end

  def change_password
    # TODO(dmac): implement this
    #@user=session[:user]
    #if request.post?
      #@user.update_attributes(:password => params[:user][:password],
                              #:password_confirmation => params[:user][:password_confirmation])
      #if @user.save
        #flash[:message]="Password Changed"
      #end
    #end
  end
end
