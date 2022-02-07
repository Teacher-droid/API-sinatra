#require 'model'
#require 'view'
require 'gossip'

class ApplicationController < Sinatra::Base

  
  get '/' do
    erb :index, locals: {gossips: Gossip.all}
  end

  get '/gossips/new/' do
    erb :new_gossips
  end

  post '/gossips/new/' do
   Gossip.new(params["gossip_author"], params["gossip_content"]).save
  redirect '/'
  end

  get '/gossips/:id' do
    erb :show, locals: {id: params['id'], gossip: Gossip.find(params['id'])}
  end

end

#Passer une variable à une view (via les routes)
#Il suffit d'utiliser une méthode locals, qui permet d'envoyer à notre fichier ERB des variables que l'on utilisera.
#class Controller

    #def initialize
    #end

    #def create_gossip
        #my_gossip = Gossip.new
        #my_gossip.save
    #end

#end

#j'accède à mon Gemfile 
#require 'bundler'
#Bundler.require
#nous écrivons une classe ApplicationController qui hérite (<) de la classe Sinatra::Base. Grâce à l'héritage, ApplicationController aura toutes les fonctionnalités que propose la classe Sinatra::Base (= toutes les fonctionnalités de base de Sinatra)
#class ApplicationController < Sinatra::Base
    # j'intéragis avec l'application Sinatra "si quelqu'un va sur l'URL '/', exécute le code qui suit !"
  #get '/' do
    #erb :index , locals: {gossips: Gossip.all}
    #j'afffiche mon code html
    #"<html><head><title>The Gossip Project</title></head><body><h1>Mon super site de gossip !</h1></body></html>"
  #end
  #get '/gossips/new/' do
    #erb :new_gossip
  #end
  #j'exécute le code de la classe sans avoir à écrire un ApplicationController.new.perform
  #run! if app_file == $0
#end


#http://localhost:4567/

