get '/login/new' do
  erb :'login/new'
end

post '/login' do
  @user = User.find_by email:params[:email]
  # p "XXXXXXXXXXXXXXXXXX"
  # p @user
  # @user.password
  # p "params[:password]"
  # p params[:password]
  # p "XXXXXXXXXXXXXXXXXX"
  # if the email exists and the password matches
  if @user != nil && @user.password == params[:password]
    session[:user_id] = @user.id
    # p @user_info.id
    # p @user_info.first_name
    redirect "/users/#{@user.id}"
  else
    @error ="*Error: Email and password do not match"
    erb :'/login/new'
  end
end

delete '/logout' do
    session.delete(:user_id)
    # p "#" * 50
    # p session
    redirect '/'
end