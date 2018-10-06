class Subject < ApplicationRecord
  has_many :pages
  
  validates_presence_of :name
end