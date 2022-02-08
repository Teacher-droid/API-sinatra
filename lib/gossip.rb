class Gossip
  attr_accessor :author, :content
  @@all_gossips = Array.new

  def initialize(author,content)
    @author = author
    @content = content
  end

  def save_gossip
    CSV.open("./db/gossip.csv","ab") do |csv|
      csv << [@author, @content]
    end
  end

  def self.all
    CSV.read("./db/gossip.csv").each do |csv_line|
      @@all_gossips << Gossip.new(csv_line[0], csv_line[1])
    end
    return @@all_gossips
  end

  def self.find(id)
    gossips = []
    CSV.read("./db/gossip.csv").each_with_index do |csv_line, index|
      if (id == index+1)
        gossips << Gossip.new(csv_line[0], csv_line[1])
        break
      end
    end
    return gossips
  end

#on crée un array temporaire où on stocke d'une part les valeurs à changer ("if")
#et d'autre part les valeurs à conserver ("else").
#on recrée ensuite un nouveau csv avec ces valeurs ("CSV.open") qui va remplacer l'ancien ("w").
  def self.update(id, author, content)
    gossips = []
    CSV.read("./db/gossip.csv").each_with_index do |row, index|
    if id.to_i == (index+1)
      gossips << [author, content]
    else
      gossips << [row[0], row[1]]
    end
  end
      CSV.open("./db/gossip.csv","w") do |csv|
        gossips.each do |row|
          csv << row
        end
    end
  end

end
