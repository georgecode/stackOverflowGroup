# get '/users' do
# end

get'/users/new' do
  erb :'users/new'
end

post '/users' do
  p "*****************"
  p params
  p "*****************"
  @user = User.new(params)
  p @user
  p "*****************"
  if @user.save

    session[:user_id] = @user.id
    redirect :"/users/#{@user.id}"
  else
    @error = "yo shit fucked up"
    erb :'/users/new'
  end
end

get '/users/:id' do
  # p "XXXXXXXXXXXXXXXXXX"
  # p "hit user/:id route"
  # p "XXXXXXXXXXXXXXXXXX"
  # redirect :'/'
    #gets params from url
  @user = User.find(params[:id])
  p '###################'
  p @user
  p '###################'
  if @user.id == session[:user_id]
  u = session[:user_id]
  p "---------------------"
  puts @user.questions
  p "---------------------"
  @questions = @user.questions
  erb :'/users/show'
  else
    # if you try to access a user thats not you
    p "nice try mr.robot"
  end
end

# get '/users/:id/edit' do
# end

# put '/users/:id' do
# end

# delete '/users/:id' do
# end


