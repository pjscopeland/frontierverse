class Settlement < ActiveRecord::Base
  belongs_to :planet

  delegate :system, to: :planet

  SETTLEMENT_TYPES = [
    SURFACE = 'Surface',
    ORBITAL = 'Orbital'
  ]
end
