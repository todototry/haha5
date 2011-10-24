class MatingsController < ApplicationController
  # GET /matings
  # GET /matings.xml
  def index
    @matings = Mating.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @matings }
    end
  end

  # GET /matings/1
  # GET /matings/1.xml
  def show
    @mating = Mating.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mating }
    end
  end

  # GET /matings/new
  # GET /matings/new.xml
  def new
    @mating = Mating.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mating }
    end
  end

  # GET /matings/1/edit
  def edit
    @mating = Mating.find(params[:id])
  end

  # POST /matings
  # POST /matings.xml
  def create
    @mating = Mating.new(params[:mating])

    respond_to do |format|
      if @mating.save
        format.html { redirect_to(@mating, :notice => 'Mating was successfully created.') }
        format.xml  { render :xml => @mating, :status => :created, :location => @mating }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mating.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /matings/1
  # PUT /matings/1.xml
  def update
    @mating = Mating.find(params[:id])

    respond_to do |format|
      if @mating.update_attributes(params[:mating])
        format.html { redirect_to(@mating, :notice => 'Mating was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mating.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /matings/1
  # DELETE /matings/1.xml
  def destroy
    @mating = Mating.find(params[:id])
    @mating.destroy

    respond_to do |format|
      format.html { redirect_to(matings_url) }
      format.xml  { head :ok }
    end
  end
end
