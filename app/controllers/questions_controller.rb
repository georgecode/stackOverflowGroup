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

post '/questions/:id/vote' do
  @vote = Vote.new
  @question = Question.find(params[:id])
  @vote.votable_id = @question.id
  @vote.votable_type = "Question"
  

  if @vote.save
    if request.xhr?
      @question.votes.count.to_s
    else
      redirect "/questions/#{@question.id}"
    end 
  else
    redirect '/questions'
  end
end