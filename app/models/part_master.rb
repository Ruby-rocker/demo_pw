class PartMaster < ActiveRecord::Base
  #has_many :part_details
  #has_many :engines

  belongs_to :part_details
  belongs_to :engines
end
