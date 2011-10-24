class Mating < ActiveRecord::Base
  has_many :piginfo
  
  belongs_to:com
end
