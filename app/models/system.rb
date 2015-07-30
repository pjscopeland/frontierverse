class System < ActiveRecord::Base
  has_many :planets
  has_many :settlements, through: :planets
  has_many :stocks
end
