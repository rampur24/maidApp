class ServiceTypeNameController < ApplicationController
  def new		
    @servicetypename = ServiceTypeName.new
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @servicetypename }
    end
  end

  def create
  	#debugger
   @servicetypename = ServiceTypeName.new(service_params)
     #respond_to do |format|
     if @servicetypename.save
        flash[:notice] = 'Message is successfully created.'
  		  redirect_to index_path
      else
        render "new"
      #end
     end
  end

  def show
    @servicetypename = ServiceTypeName.find(params[:id])
  end

  def index
	  @servicetypenames = ServiceTypeName.all	
  end

  def edit
    @servicetypename = ServiceTypeName.find(params[:id])
  end

  def update
    @servicetypename = ServiceTypeName.find(params[:id])
   if @servicetypename.update(service_params)
      flash[:notice] = "ServiceTypeName was successfully updated"
      redirect_to index_path
   else
    render 'edit'
   end
 end

 def destroy
  #debugger
   @servicetypename = ServiceTypeName.find(params[:id])
   @servicetypename.destroy
   redirect_to index_path
 end

  def all_item
    @servicetypename = ServiceTypeName.all
  
    render :json => @servicetypename.to_json

  end

  private
  def service_params
    params.require(:service_type_name).permit(:servicetypeId, :ServiceName, :ServiceType, :Servicedescription, :ServiceStatus)
  end

end
