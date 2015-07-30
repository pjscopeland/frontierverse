class Route < ActiveRecord::Base
  belongs_to :system1, class_name: 'System'
  belongs_to :system2, class_name: 'System'

  def distance
    self.distance_cents / 100.0
  end

  def distance=(val)
    self.distance_cents = val * 100
  end

  def self.create(*args)
    if args[0].is_a?(String) && args[1].is_a?(String)
      atts = {
        system1: System.find_by(name: args[0]),
        system2: System.find_by(name: args[1])
      }
      atts.merge!(distance: args[2]) if args[2].is_a?(Numeric)
      super(atts)
    else
      super
    end
  end

  def probable_wormholes
    a, b, c, d = system1.x, system1.y, system2.x, system2.y
    q = Math.atan((d - b) / (c - a))
    r = Math.acos(Math.sqrt((d - b)**2 + (c - a)**2) / (2 * 81.62))
    [
      [a + 81.62 * Math.cos(q + r), b + 81.62 * Math.sin(q + r)],
      [a + 81.62 * Math.cos(q - r), b + 81.62 * Math.sin(q - r)],
    ]
  end
end
