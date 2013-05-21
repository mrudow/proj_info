def create
  @user = User.create( params[:user] )
end
