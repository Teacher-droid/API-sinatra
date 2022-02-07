class Gossip

    attr_accessor :content, :author

    def initialize(author, content)
        @content = content
        @author = author
    end
    
    def stockage_in_csv_file 
        file = File.open("db/gossip.csv", "a")
        file.puts "#{author},#{content}"
        file.close
    end

=begin    
    csv = CSV.open("db/gossip.csv", "a") do |counter|
        counter << "(#{author},#{content})"
        CSV.close
        objet = CSV.parse(csv)
        pp object
    end
=end
end
    

=begin
r, pour "reading" : tu vas pouvoir lire le fichier, voir ce qu'il y a écrit dedans.
a, pour "append" : tu vas pouvoir ajouter des lignes à ton fichier.
w, pour "write" : tu vas réécrire intégralement ton fichier. S'il y a déjà un fichier, il efface tout pour repartir de 0. S'il n'y a pas de fichier, il en crée un.
w+, pour "write and read" : tu vas pouvoir réécrire intégralement ton fichier (cf. ci-dessus), et tu peux aussi lire ce qu'il y a dedans.
a+, pour "append and read" : tu vas pouvoir ajouter des lignes à ton fichier, et aussi pouvoir lire ce qu'il y a dedans.
r+, pour "read and write" : tu vas pouvoir modifier ton fichier sans tout effacer
=end