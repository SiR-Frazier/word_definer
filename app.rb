require('sinatra')
require('./lib/definer')
require("pry")

get('/') do
  @word = Word.all()
  erb(:home)
end

post('/') do
  word = params["word"]
  definition = params["definition"]
  word = Word.new(params)
  word.save()
  @word = Word.all()
  erb(:home)
end

get('/output/:word') do
  @word = Word.find(params[:word])
  erb(:output)
end
