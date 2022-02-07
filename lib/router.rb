class Router

    attr_accessor :controller
    
    def initialize
        @controller = Controller.new
    end


    def perform
        puts "BIENVENUE DANS THE GOSSIP PROJECT"
        while true
            puts "Que voulez-vous faire ?"
            puts "     > 1) - Créer un gossip ?"
            puts "     > 4) - Quitter l'application ?"
            print "> "
            user_choice = gets.chomp.to_i
            case user choice 
            when 1
                puts "OK, créons un gossip."
                @controller.create_gossip
            when 4
                puts "A bientôt."
                break
            else
                puts "FUCK YOU !."
            end
        end
    end

end