post '/answers' do
  @answer = Answer.new
  @answer.a_title = params[:answer]
  @answer.question_id = params[:question_id]
  p "----------"
  p @answer.a_title 
  p @answer.question_id
  if @answer.save
    redirect "/questions/#{@answer.question_id}"
  else
    redirect '/questions'
  end
end

post '/answers/:id/vote' do
  @vote = Vote.new
  puts @vote 
  @answer = Answer.find(params[:id])
  @question = @answer.question
  @vote.votable_id = @answer.id
  @vote.votable_type = "Answer"

  
  if @vote.save
    redirect "/questions/#{@question.id}"
  else
    redirect '/questions'
  end
end