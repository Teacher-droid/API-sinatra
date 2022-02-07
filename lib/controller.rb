#require 'model'
#require 'view'

class Controller

    def initialize
    end

    def create_gossip
        my_gossip = Gossip.new
        my_gossip.save
    end

end