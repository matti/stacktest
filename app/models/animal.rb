class Animal < ActiveRecord::Base

  validates_length_of :name, :in=>3..40
  validates_inclusion_of :age, :in=>0..100
  
end
