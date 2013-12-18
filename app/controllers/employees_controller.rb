class EmployeesController < ApplicationController
before_filter :authorise

  # GET /employees
  # GET /employees.json
  def index
	@employees = Employee.order(:name)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @employees }
    end
  end

  # GET /employees/1
  # GET /employees/1.json
  def show
    @employee = Employee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @employee }
    end
  end
  
  def searchEmployee
		@employees = Employee.paginate(:page => params[:page], :per_page => 5).search params[:q]
		unless @employees.empty?
			render 'index'
		else
			flash[:notice] = 'No employees mathchs that search'
			render 'index'# or whatever view is needed
		end
	flash[:notice] = nil
	end

  # GET /employees/new
  # GET /employees/new.json
  def new
    @employee = Employee.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @employee }
    end
  end

  # GET /employees/1/edit
  def edit
    @employee = Employee.find(params[:id])
  end

  # POST /employees
  # POST /employees.json
  def create
    @employee = Employee.new(params[:employee])

    respond_to do |format|
      if @employee.save	
		Blogmailer.registerEmployee(@employee).deliver
		format.html { redirect_to employees_url, notice: "Employee #{@employee.name} was successfully created." }
        format.json { render json: @employee, status: :created, location: @employee }
      else
        format.html { render action: "new" }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /employees/1
  # PUT /employees/1.json
  def update
    @employee = Employee.find(params[:id])

    respond_to do |format|
      if @employee.update_attributes(params[:employee])
        #format.html { redirect_to @employee, notice: 'Employee was successfully updated.' }
		format.html { redirect_to employees_url, notice: "Employee #{@employee.name} was successfully created." }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    @employee = Employee.find(params[:id])
    begin
		@employee.destroy
		flash[:notice] = "Employee #{@employee.name} deleted"
	rescue Exception => e
		flash[:notice] = e.message
	end


    respond_to do |format|
      format.html { redirect_to employees_url }
      format.json { head :no_content }
    end
  end
end
