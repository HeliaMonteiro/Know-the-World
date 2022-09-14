require './models/travel'

get '/' do
  travels = all_travels()

  erb :'travels/index', locals: {
    travels: travels
  }
end

get '/travels/new' do
  erb :'travels/new'
end

post '/travels' do
  city = params['city']
  country = params['country']
  image_url = params['image_url']
  title = params['title']
  description = params['description']
 
  create_travel(city, country, image_url, title, description)

  redirect '/'
end

get '/travels/:id/edit' do
  id = params['id']
  travel = get_travel(id)

  erb :'travels/edit', locals: {
    travel: travel
  }
end

put '/travels/:id' do
  id = params['id']
  city = params['city']
  country = params['country']
  image_url = params['image_url']
  title = params['title']
  description = params['description']

  update_travel(id, city, country, image_url, title, description)

  redirect '/'
end

delete '/travels/:id' do
  id = params['id']

  delete_travel(id)
  redirect '/'
end