class Ship < ActiveRecord::Base
  belongs_to :default_drive, class_name: 'Drive'

  def range_with(drive)
    return 0.0 if drive.mass >= capacity
    base = 20000 * drive.power ** 2 / mass / 100.0
    base >= 3 ? base : 0.0
  end
end
