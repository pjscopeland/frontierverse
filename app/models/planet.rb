class Planet < ActiveRecord::Base
  belongs_to :system
  has_many :settlements
end
