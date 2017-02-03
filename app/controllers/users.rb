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
  @user.save
  erb :'/users/new'
end

# get '/users/:id' do
# end

# get '/users/:id/edit' do
# end

# put '/users/:id' do
# end

# delete '/users/:id' do
# end


