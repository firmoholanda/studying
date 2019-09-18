require "sinatra"

get "/" do
	erb :home
end

get "/about" do
	erb :about
end

get "/welcome" do
    erb :welcome
end

get "/greet/:name" do
    "Hello there #{params[:name]}!"
end

get "/square/:number" do
    square = params[:number].to_i * params[:number].to_i
    "the square is: #{square}"
end