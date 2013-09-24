class Inventory < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :quantity

  validates_length_of :description, :minimum => 6
  validates_numericality_of :quantity, only_integer: true
end
