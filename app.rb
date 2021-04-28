require_relative 'config/environment'

class App < Sinatra::Base
  set :views, settings.root + '/4:26-4:30/sinatra-view-and-controller-readme-walkthrough/views'
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    origional_string = params[:string]
    @reversed_string = origional_string.reverse

    erb :reversed
  end

  get '/friends' do
    # Write your code here!
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    erb :friends

  end
end