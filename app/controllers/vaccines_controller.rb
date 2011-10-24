class VaccinesController < ApplicationController
  # GET /vaccines
  # GET /vaccines.xml
  def index
    @vaccines = Vaccine.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vaccines }
    end
  end

  # GET /vaccines/1
  # GET /vaccines/1.xml
  def show
    @vaccine = Vaccine.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vaccine }
    end
  end

  # GET /vaccines/new
  # GET /vaccines/new.xml
  def new
    @vaccine = Vaccine.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vaccine }
    end
  end

  # GET /vaccines/1/edit
  def edit
    @vaccine = Vaccine.find(params[:id])
  end

  # POST /vaccines
  # POST /vaccines.xml
  def create
    @vaccine = Vaccine.new(params[:vaccine])

    respond_to do |format|
      if @vaccine.save
        format.html { redirect_to(@vaccine, :notice => 'Vaccine was successfully created.') }
        format.xml  { render :xml => @vaccine, :status => :created, :location => @vaccine }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vaccine.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vaccines/1
  # PUT /vaccines/1.xml
  def update
    @vaccine = Vaccine.find(params[:id])

    respond_to do |format|
      if @vaccine.update_attributes(params[:vaccine])
        format.html { redirect_to(@vaccine, :notice => 'Vaccine was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vaccine.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vaccines/1
  # DELETE /vaccines/1.xml
  def destroy
    @vaccine = Vaccine.find(params[:id])
    @vaccine.destroy

    respond_to do |format|
      format.html { redirect_to(vaccines_url) }
      format.xml  { head :ok }
    end
  end
end
