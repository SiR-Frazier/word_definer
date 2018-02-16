require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/definer')

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
