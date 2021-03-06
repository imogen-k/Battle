class Player

  DEFAULT_HP = 100
  attr_reader :name, :hit_points

  def initialize(name, hit_points = DEFAULT_HP)
    @name = name
    @hit_points = hit_points
  end

  def damage(amount)
    @hit_points -= amount
  end

end
