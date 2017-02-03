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
