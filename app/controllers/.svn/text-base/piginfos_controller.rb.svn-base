class PiginfosController < ApplicationController
  # GET /piginfos
  # GET /piginfos.xml
  def index
    @piginfos = Piginfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @piginfos }
    end
  end

  # GET /piginfos/1
  # GET /piginfos/1.xml
  def show
    @piginfo = Piginfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @piginfo }
    end
  end

  # GET /piginfos/new
  # GET /piginfos/new.xml
  def new
    @piginfo = Piginfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @piginfo }
    end
  end

  # GET /piginfos/1/edit
  def edit
    @piginfo = Piginfo.find(params[:id])
  end

  # POST /piginfos
  # POST /piginfos.xml
  def create
    @piginfo = Piginfo.new(params[:piginfo])

    respond_to do |format|
      if @piginfo.save
        format.html { redirect_to(@piginfo, :notice => 'Piginfo was successfully created.') }
        format.xml  { render :xml => @piginfo, :status => :created, :location => @piginfo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @piginfo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /piginfos/1
  # PUT /piginfos/1.xml
  def update
    @piginfo = Piginfo.find(params[:id])

    respond_to do |format|
      if @piginfo.update_attributes(params[:piginfo])
        format.html { redirect_to(@piginfo, :notice => 'Piginfo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @piginfo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /piginfos/1
  # DELETE /piginfos/1.xml
  def destroy
    @piginfo = Piginfo.find(params[:id])
    @piginfo.destroy

    respond_to do |format|
      format.html { redirect_to(piginfos_url) }
      format.xml  { head :ok }
    end
  end
end
