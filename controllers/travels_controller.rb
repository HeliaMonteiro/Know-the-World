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
  title = params['title']
  image_url = params['image_url']
 
  create_travel(city, country, title, image_url)

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
  title = params['title']
  image_url = params['image_url']

  update_travel(id, city, country, title, image_url)

  redirect '/'
end

delete '/travels/:id' do
  id = params['id']

  delete_travel(id)
  redirect '/'
end