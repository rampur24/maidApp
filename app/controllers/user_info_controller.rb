class UserInfoController < ApplicationController
 def new_user		
    @userinfo = UserInfo.new
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @userinfo }
    end
  end

  def create_user
  	#debugger
    @userinfo = UserInfo.new(user_params)
     if @userinfo.save
        flash[:notice] = 'Message is successfully created.'
  		  redirect_to index_user_path
      else
        render "new_user"
      #end
     end
   end

 def edit_user
    @userinfo = UserInfo.find(params[:id])
  end

  def update_user
    @userinfo = UserInfo.find(params[:id])
   if @userinfo.update(user_params)
      flash[:notice] = "userinfo was successfully updated"
      redirect_to index_user_path
    else
     render 'edit_user'
    end
  end

  def show_user
    @userinfo = UserInfo.find(params[:id])
  end

  def index_user
	@userinfos = UserInfo.all	
  end

  def destroy_user
  #debugger
   @userinfo = UserInfo.find(params[:id])
   @userinfo.destroy
   redirect_to index_user_path
 end

  def all_user_item
    # puts "--------"
    # puts "Mohar"
    # puts "#{params}"
    # puts"++++++++++"
    # @userinfo = UserInfo.find(params[:id])
    # puts "#{@userinfo}"
    # puts"=========="

    items = []
    responses = UserInfo.all
    responses.each do |resp|
      item = {}
      item['UserID'] = resp.UserID
      item['PhoneNumber'] = resp.PhoneNumber
      items << item
    end
    render :json => items.to_json
  end

  def one_user_info
     userArray = []
    @userinfo = UserInfo.find_by_id(params[:id])
     userinfoHash = {}
    if !@userinfo.nil? 
      userinfoHash['success'] = true
      userinfoHash['statusCode'] = 200
      userinfoHash['message'] = "successfully data found."
      userinfoHash["UserData"] = @userinfo
    else
      
      userinfoHash['statusCode'] = 400
      userinfoHash['success'] = false
      userinfoHash['message'] = "data not found."
    end
     #userArray << userinfoHash
       
     render :json =>  userinfoHash.to_json
    
  end


  def create_new_user
    response = {}
    
    @userid = params[:userid]
    @phoneNumber = params[:phoneNumber]
    @gender = params[:gender]
    @age = params[:age]
    @userType = params[:userType]
    @acountcreationdate = params[:acountcreationdate]
    @lastupdate = params[:lastupdate]
    @isacountactive = params[:isacountactive]
    @usercity = params[:usercity]
    @userarea = params[:userarea]
    @pincode = params[:pincode]
    @localaddress = params[:localaddress]
    @latitute = params[:latitute]
    @longitude = params[:longitude]
    @govtIDverified = params[:govtIDverified]
    @otp = params[:otp]
    @servicetype = params[:servicetype]

    @userinfo  = UserInfo.new

    @userinfo.UserID = @userid
    @userinfo.PhoneNumber = @phoneNumber
    @userinfo.Gender = @gender
    @userinfo.Age = @age
    @userinfo.UserType = @userType
    @userinfo.AcountCreationDate = @acountcreationdate
    @userinfo.LastUpdate = @lastupdate
    @userinfo.IsAcountActive = @isacountactive
    @userinfo.UserCity = @usercity
    @userinfo.UserArea = @userarea
    @userinfo.PinCode = @pincode
    @userinfo.LocalAddress = @localaddress
    @userinfo.Latitute = @latitute
    @userinfo.Longitude = @longitude
    @userinfo.GovtIDVerified = @govtIDverified
    @userinfo.OTP = @otp
    @userinfo.ServiceType = @servicetype
    
    if @userinfo.save
      response['success'] = true
      response['message'] = 'Create_new_user point is successfully saved.' 
    else
      response['success'] = false
      response['message'] = 'Create_new_user point is not  saved.' 
    end
   
    render :json => response.to_json
   end
  
  #end

  def updateNewUser
    #debugger
    response = {}

      @phoneNumber = params[:phoneNumber]
      @gender = params[:gender]
      @age = params[:age]
      @userType = params[:userType]
      attributes = {:PhoneNumber => @phoneNumber,:Gender => @gender,:Age => @age ,:UserType => @userType}
      @userinfo = UserInfo.find_by_id(params[:id])
     # @userinfo.PhoneNumber = @phoneNumber
     # @userinfo.Gender = @gender
     # @userinfo.Age = @age
     # @userinfo.UserType = @userType
     #debugger
    if @userinfo.update_attributes(attributes)
      #update(PhoneNumber: params['phoneNumber'],Age: params['age'],Gender: params[:gender])
      response['success'] = true
      response['message'] = 'updateNewUser point is successfully .' 
    else
      response['success'] = false
      response['message'] = 'updateNewUser point is not  successfully.'  
    end
     render :json => response.to_json
  end
 

  def finduserbyname
  @userinfo = UserInfo.find_by(params[:PhoneNumber])
  render :json =>  @userinfo.to_json
  end

  private
  def user_params
    params.require(:user_info).permit(:UserID, :PhoneNumber, :Gender, :Age, :UserType, :AcountCreationDate, :LastUpdate, :IsAcountActive, :UserCity, :UserArea, :PinCode, :LocalAddress, :Latitute, :Longitude, :GovtIDVerified, :OTP, :ServiceType)
  end

end
