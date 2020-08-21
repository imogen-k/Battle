class Attack

   def initialize(player)
     @player = player
   end

   def self.kick(player)
     new(player).kick
   end

   def kick
     @player.damage
   end

 end
