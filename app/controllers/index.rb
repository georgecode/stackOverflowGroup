get '/' do
  @questions = Question.all
  erb :index
  # redirect '/questions'
end