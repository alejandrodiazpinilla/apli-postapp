require 'sinatra'
require 'sinatra/activerecord'
set :database, "sqlite3:project-name.sqlite3"
Dir[__dir__+"/models/*.rb"].each {|file| require file }




get '/posts' do
    @posts = Post.all
    erb :index
end

get '/posts/new' do
    #new
    erb :new
end

get '/posts/:id' do
    @post = Post.find(params[:id])
    p @post
    erb :show
end

post '/posts' do
    #create
    p params
    Post.create( params[:post])
    redirect "/posts"
end

get '/posts/:id/edit' do
    #edit
end

put '/posts/' do
    #update
end

patch '/posts/' do
    #update
end

delete '/posts/:id' do
    p "hola "
    Post.destroy_all
    redirect "/posts"
end