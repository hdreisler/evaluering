class CustomercompaniesController < ApplicationController
  # GET /customercompanies
  # GET /customercompanies.json
  def index
    @customercompanies = Customercompany.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @customercompanies }
    end
  end

  # GET /customercompanies/1
  # GET /customercompanies/1.json
  def show
    @customercompany = Customercompany.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @customercompany }
    end
  end

  # GET /customercompanies/new
  # GET /customercompanies/new.json
  def new
    @customercompany = Customercompany.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @customercompany }
    end
  end

  # GET /customercompanies/1/edit
  def edit
    @customercompany = Customercompany.find(params[:id])
  end

  # POST /customercompanies
  # POST /customercompanies.json
  def create
    @customercompany = Customercompany.new(params[:customercompany])

    respond_to do |format|
      if @customercompany.save
        format.html { redirect_to @customercompany, :notice => 'Customercompany was successfully created.' }
        format.json { render :json => @customercompany, :status => :created, :location => @customercompany }
      else
        format.html { render :action => "new" }
        format.json { render :json => @customercompany.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /customercompanies/1
  # PUT /customercompanies/1.json
  def update
    @customercompany = Customercompany.find(params[:id])

    respond_to do |format|
      if @customercompany.update_attributes(params[:customercompany])
        format.html { redirect_to @customercompany, :notice => 'Customercompany was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @customercompany.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /customercompanies/1
  # DELETE /customercompanies/1.json
  def destroy
    @customercompany = Customercompany.find(params[:id])
    @customercompany.destroy

    respond_to do |format|
      format.html { redirect_to customercompanies_url }
      format.json { head :ok }
    end
  end
end
