class Oct < ActiveRecord::Base
  belongs_to :player
  belongs_to :parent, foreign_key: 'oct_id'
  has_many :children, foreign_key: 'oct_id' #, -> { where root: false }
  # http://www.postgresql.org/docs/8.3/static/datatype.html
  # will either want fixed-length integers or bit[n] masks
end
