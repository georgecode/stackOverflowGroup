get '/questions' do
  @questions = Question.all
  p @questions
  erb :"questions/index"
end

get '/questions/:id' do
  @question = Question.find(params[:id])
  erb :"questions/show"
end