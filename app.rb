require_relative "config/application"
require "pry-byebug"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

# Home
get "/" do
  erb :home
end

# Index
get "/restaurants" do
  # ask for the restaurants  <-- model
  @restaurants = Restaurant.all
  erb :'restaurants/index'
end

# Show
# parameterized route
get "/restaurants/:id" do
  @restaurant = Restaurant.find(params[:id])
  erb :'restaurants/show'
end

# Create
post '/restaurants' do
  @restaurant = Restaurant.new(params)
  @restaurant.save
  redirect '/restaurants'
end
