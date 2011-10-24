#encoding: UTF-8
#
class UsersController < ApplicationController

  load_and_authorize_resource

  # GET /users
  # GET /users.xml
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  # GET /users/1
  # GET /users/1.xml
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    @user = User.new

    @user.ip = request.remote_ip
    @user.starttime = 0.day.from_now
    @user.deadline = 1.year.from_now
    @user.state = 1 

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user.to_xml }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to(@user, :notice => 'User was successfully created.') }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(@user, :notice => 'User was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end

  # user login page, handler.
  # user should input the username and password
  def login
    if params[:username] !=nil && params[:password] != nil
      #find the user from db
      @user = User.find_by_username(params[:username])
      if @user !=nil &&  @user.password == params[:password]
        session[:user] = @user
        respond_to do |format|
          logger.info "user:#@user.username logged in"
          flash[:notice] = "登录成功!"
          format.html {redirect_to :action=>"index"}
          format.xml {head :ok}
        end

      elsif @user != nil && @user.password != params[:password]
        respond_to do |format|
          flash[:error] = "用户名密码/错误,请重新登录!"
          format.html {redirect_to :action=>"login"}
        end
      else
        redirect_to login_url 
      end
      #if user inputs the username and  password. 
    else
      flash[:notice] = "请填写用户名/密码."
    end
  end


  def change
    # @user=User.find(params[:id])
    if session[:user] == nil
      @newuser = nil;
      redirect_to :action => :login,:notice =>"请输入用户名和密码："
    else
      @newuser = User.new 
      flash[:notice] = "请输入您的新密码"
      session[:user]
    end
    if params[:user] == nil
      return
    end
    if params[:user][:password] != nil && params[:user][:newpassword]!= nil
      @newuser = session[:user]
      @result=User.find(@newuser.id)
      if params[:user][:password] == @result.password
        @result.password=params[:user][:newpassword]
        session[:user].password = params[:user][:newpassword]
        @result.update_attribute(:password,params[:user][:newpassword])
        flash[:notice] = "密码修改成功"
      else
        flash[:notice] = "原密码错误，请重新输入"
      end
    else
      flash[:error] = "else" 
    end
  end


  # the following action design for loging out the current user.
  # step:1 checking if is there any user status is log in.
  # step:2 if there is a users' status is log in, then get the session of the current user
  # step:3 clear the session. loging out.
  def logout
    if session[:user] != nil
      session[:user]=nil
    end
    flash[:notice]="请先登录"
    redirect_to login_url
  end

end

