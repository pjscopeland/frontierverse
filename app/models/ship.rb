class Ship < ActiveRecord::Base
  belongs_to :default_drive, class_name: 'Drive'
end
