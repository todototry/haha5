class DiseasedescsController < ApplicationController
  # GET /diseasedescs
  # GET /diseasedescs.xml
  def index
    @diseasedescs = Diseasedesc.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @diseasedescs }
    end
  end

  # GET /diseasedescs/1
  # GET /diseasedescs/1.xml
  def show
    @diseasedesc = Diseasedesc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @diseasedesc }
    end
  end

  # GET /diseasedescs/new
  # GET /diseasedescs/new.xml
  def new
    @diseasedesc = Diseasedesc.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @diseasedesc }
    end
  end

  # GET /diseasedescs/1/edit
  def edit
    @diseasedesc = Diseasedesc.find(params[:id])
  end

  # POST /diseasedescs
  # POST /diseasedescs.xml
  def create
    @diseasedesc = Diseasedesc.new(params[:diseasedesc])

    respond_to do |format|
      if @diseasedesc.save
        format.html { redirect_to(@diseasedesc, :notice => 'Diseasedesc was successfully created.') }
        format.xml  { render :xml => @diseasedesc, :status => :created, :location => @diseasedesc }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @diseasedesc.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /diseasedescs/1
  # PUT /diseasedescs/1.xml
  def update
    @diseasedesc = Diseasedesc.find(params[:id])

    respond_to do |format|
      if @diseasedesc.update_attributes(params[:diseasedesc])
        format.html { redirect_to(@diseasedesc, :notice => 'Diseasedesc was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @diseasedesc.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /diseasedescs/1
  # DELETE /diseasedescs/1.xml
  def destroy
    @diseasedesc = Diseasedesc.find(params[:id])
    @diseasedesc.destroy

    respond_to do |format|
      format.html { redirect_to(diseasedescs_url) }
      format.xml  { head :ok }
    end
  end
end
