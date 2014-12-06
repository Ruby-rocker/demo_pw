class Engine < ActiveRecord::Base
  #belongs_to :part_master
  has_many :part_masters, :dependent => :destroy
  has_many :part_details, through: :part_masters
end

