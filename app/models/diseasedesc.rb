class Diseasedesc < ActiveRecord::Base
  has_many :disease
  
  belongs_to :com
end
