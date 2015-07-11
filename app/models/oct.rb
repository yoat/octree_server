class Oct < ActiveRecord::Base
  belongs_to :player
  belongs_to :oct
  has_many :octs
end
