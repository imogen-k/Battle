class Attack

   def initialize(player)
     @player = player
   end

   def self.kick(player)
     new(player).kick
   end

   def kick
     @player.damage(random_damage)
   end

  private
   def random_damage
     Kernel.rand(1..20)
   end

 end
