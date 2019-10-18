require 'controller'

class Router
  attr_accessor :controller



#On veut qu'un "Router.new" lancé par app.rb, crée automatique une instance "@controller"
  def initialize
    @controller = Controller.new    #c'est via cette instance qu'on va déclencher la méthode adéquate : celle qui permet d'ajouter un potin, de le supprimer ou de les lister tous.
  end                                # puis le routeur passe la main à la classe Controller


  def perform
    puts "BIENVENUE DANS THE GOSSIP PROJECT"
    while true
      #on affiche le menu
      puts "1 - créer un gossip"
      puts "4 - quitter app"
      params = gets.chomp.to_i #on attend le choix de l'utilisateur

      case params #en fonction du choix
        when 1
          puts "Tu as choisi de créer un gossip"
          @controller.create_gossip
        when 4
          puts "A très vite. Ciao !"
        break #Ce "break" permet de sortir de la boucle while. C'est même la seule façon d'en sortir.
        else
        puts "Ce choix n'existe pas, merci de réessayer" #Si l'utilisateur saisit une entrée non prévue, il retourne au début du "while true".
        #C'est pour ça que la boucle est infinie: potentiellement, il peut se gourer jusqu'à la fin des temps :)
      end
    end
  end
end
