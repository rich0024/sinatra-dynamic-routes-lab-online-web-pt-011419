require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get "/square/:number" do
    num = params[:number]
    "#{num.to_i * num.to_i}"
  end

  get "/say/:number/:phrase" do
    times = params[:number].to_i
    "#{params[:phrase]}" * times
  end

end
