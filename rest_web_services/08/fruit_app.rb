#---
# Excerpted from "The Cucumber Book",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/hwcuc for more book information.
#---
require 'sinatra'
require 'json'

class FruitApp < Sinatra::Base
  set :data do
    JSON.parse(File.read('fruits.json'))
  end

  get '/fruits' do
    content_type :json
    FruitApp.data.to_json
  end
end
