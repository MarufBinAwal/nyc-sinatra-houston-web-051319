class LandmarksController < ApplicationController
  
  set :views, './app/views/landmarks'
  #index
  get '/landmarks' do 
    @landmarks = Landmark.all
    erb :index
  end
  get '/landmarks/new' do
    erb :new
  end
end
