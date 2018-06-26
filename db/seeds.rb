return if User.any?

puts "Create balthazar"
u = User.new email: "bataprod@gmail.com", password: Rails.application.credentials.account_password
u.save!

puts "Create data"
event_type = EventType.create! name: "The go further", description: "Va le plus loin dans un jeu dans un temps imparti"
Game.create! name: "Borderlands 2"
Game.create! name: "Crash Bandicoot 3"
Game.create! name: "The Legend of Zelda"
Game.create! name: "Pugsley's Scavenger Hunt"
Game.create! name: "Emily Wants to play"

Game.all.each { |g| Event.create! game: g, event_type: event_type }
