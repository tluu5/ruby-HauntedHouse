=begin
halloween_party.rb

It's Halloween time! 🎃

Can you debug these classes in time to throw a spooky party? 👻

Expected output:
Preparing a 4-room haunted house
Haunted house with 4 rooms and 0 decorations
Adding decorations...
Haunted house with 4 rooms and 20 decorations
Turning on the spooky lights...
Haunted house with 4 rooms, 20 decorations, and spooky lights on
Inviting 3 guests to the party
Guest: John, dressed as Vampire
Guest: Alice, dressed as Witch
Guest: Bob, dressed as Ghost
Turning off the spooky lights...
Haunted house with 4 rooms, 20 decorations, and spooky lights off

=end

class HauntedHouse
  attr_accessor :rooms, :decorations, :spooky_lights

  def initialize(rooms)
    @rooms = rooms
    @decorations = 0
    @spooky_lights = nil
  end

  def add_decorations(count)
    @decorations += count
  end

  def lights_status
    if @spooky_lights
      "spooky lights on"
    else
      "spooky lights off"
    end
  end

  def to_s
    if @spooky_lights.nil?
      "Haunted house with #{@rooms} rooms, and #{@decorations} decorations"
    elsif @spooky_lights
      "Haunted house with #{@rooms} rooms, #{@decorations} decorations, and #{lights_status}"
    else 
      "Haunted house with #{@rooms} rooms, #{@decorations} decorations, and #{lights_status}"
    end
  end

  def turn_on_lights
    @spooky_lights = true
  end

  def turn_off_lights
    @spooky_lights = false
  end

  def self.throw_party(rooms, guests)
    haunted_house = HauntedHouse.new(rooms)
    puts "Preparing a #{rooms}-room haunted house"
    puts haunted_house.to_s
    puts "Adding decorations..."
    haunted_house.add_decorations(20)
    puts haunted_house.to_s
    puts "Turning on the spooky lights..."
    haunted_house.turn_on_lights
    puts haunted_house.to_s

    puts "Inviting #{guests.count} guests to the party"
    guests.each do |guest|
      puts guest.description
    end

    puts "Turning off the spooky lights..."
    haunted_house.turn_off_lights
    puts haunted_house.to_s

    haunted_house
  end
end

class Guest
  attr_accessor :name, :costume

  def initialize(name, costume)
    @name = name
    @costume = costume
  end

  def description
    "Guest: #{@name}, dressed as #{@costume}"
  end
end

guests = [
  Guest.new("John", "Vampire"),
  Guest.new("Alice", "Witch"),
  Guest.new("Bob", "Ghost")
]

HauntedHouse.throw_party(4, guests)
