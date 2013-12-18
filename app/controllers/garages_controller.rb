class GaragesController < ApplicationController
before_filter :authorise, :except => [:index]

  # GET /garages
  # GET /garages.json
  def index
    @garages = Garage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @garages }
    end
  end

  # GET /garages/1
  # GET /garages/1.json
  def show
    @garage = Garage.find(params[:id])
	@garages = Garage.near(@garage.address, 60, :order => :distance, :units => :km)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @garage }
    end
  end
  
  def searchGarage
		@garages = Garage.paginate(:page => params[:page], :per_page => 5).search params[:q]
		unless @garages.empty?
			render 'index'
		else
			flash[:notice] = 'No garages mathchs that search'
			render 'index'# or whatever view is needed
		end
	flash[:notice] = nil
	end

  # GET /garages/new
  # GET /garages/new.json
  def new
    @garage = Garage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @garage }
    end
  end

  # GET /garages/1/edit
  def edit
    @garage = Garage.find(params[:id])
  end

  # POST /garages
  # POST /garages.json
  def create
    @garage = Garage.new(params[:garage])

    respond_to do |format|
      if @garage.save
        format.html { redirect_to @garage, notice: 'Garage was successfully created.' }
        format.json { render json: @garage, status: :created, location: @garage }
      else
        format.html { render action: "new" }
        format.json { render json: @garage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /garages/1
  # PUT /garages/1.json
  def update
    @garage = Garage.find(params[:id])

    respond_to do |format|
      if @garage.update_attributes(params[:garage])
        format.html { redirect_to @garage, notice: 'Garage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @garage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /garages/1
  # DELETE /garages/1.json
  def destroy
    @garage = Garage.find(params[:id])
    @garage.destroy

    respond_to do |format|
      format.html { redirect_to garages_url }
      format.json { head :no_content }
    end
  end
end
