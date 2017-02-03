get '/questions' do
  @questions = Question.all
  p @questions
  erb :"questions/index"
end

get '/questions/new' do
  erb :"questions/new"
end

post '/questions' do
  @question = Question.new(q_title: params[:q_title])
  if @question.save
    redirect '/questions'
  else
    redirect '/questions'
  end
end

get '/questions/:id' do
  @question = Question.find(params[:id])
  @answers = @question.answers
  erb :"questions/show"
end