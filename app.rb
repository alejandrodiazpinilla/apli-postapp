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
 #   @comment = Comment.find_by(params[post.id])
    erb :show
end

post '/posts' do
    #create
    p params
    Post.create(params[:post])  
    redirect "/posts"
end

post '/posts/:id/commets' do
    #create
    Comment.create(params[:comment])  
    p comment
    redirect "/posts"
end


get '/posts/:id/edit' do
    #edit
    @post = Post.find(params[:id])    
    erb :edit
end

patch '/posts/:id' do
    #update
    post = Post.find(params[:id])
    post.update(params[:post])
    redirect '/posts'
end

patch '/posts/' do
    #update
end

delete '/posts/:id' do
    @post = Post.find(params[:id])
    @post.destroy
    redirect "/posts"
end