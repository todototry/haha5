#encoding:UTF-8
class ComsController < ApplicationController
  # GET /coms
  # GET /coms.xml
  def index
    @coms = Com.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @coms }
    end
  end

  # GET /coms/1
  # GET /coms/1.xml
  def show
    @com = Com.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @com }
    end
  end

  # GET /coms/new
  # GET /coms/new.xml
  def new
    @com = Com.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @com }
    end
  end

  # GET /coms/1/edit
  def edit
    @com = Com.find(params[:id])
  end

  # POST /coms
  # POST /coms.xml
  #本action在用户登录之后创建和完善自己公司的信息
  #   =1.检查是否登录
  #   =2.是管理员还是普通用户 决定userid
  #   =3.model 检测数据类型
  #   =4.将用户填写的数据注入 数据库
  #   =5.入库
  def create
    @com = Com.new(params[:com])
    if session[:user] != nil
      if session[:user].level == 0
        flash[:error] = "你不能为用户创建信息！，不过可以更改，请移步：/coms/：id/edit页面"
        return
      else 
        @com.user_id = session[:user].id
        respond_to do |format|
          if @com.save
            format.html { redirect_to(@com, :notice => 'Com was successfully created.') }
            format.xml  { render :xml => @com, :status => :created, :location => @com }
          else
            format.html { render :action => "new" }
            format.xml  { render :xml => @com.errors, :status => :unprocessable_entity }
          end
        end
      end
    end
  end

  # PUT /coms/1
  # PUT /coms/1.xml
  def update
    @com = Com.find(params[:id])

    respond_to do |format|
      if @com.update_attributes(params[:com])
        format.html { redirect_to(@com, :notice => 'Com was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @com.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /coms/1
  # DELETE /coms/1.xml
  def destroy
    @com = Com.find(params[:id])
    @com.destroy

    respond_to do |format|
      format.html { redirect_to(coms_url) }
      format.xml  { head :ok }
    end
  end
end
