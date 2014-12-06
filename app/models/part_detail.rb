class PartDetail < ActiveRecord::Base
  #belongs_to :part_master
  has_many :part_masters
  has_many :engines, through: :part_masters
end
