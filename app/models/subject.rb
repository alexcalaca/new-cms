class Subject < ApplicationRecord
  has_many :pages
  
#  validates_presence_of :name
  validates :name, presence: true, length: { within: 4..55 }
  validates :position, numericality: { only_integer: true }, allow_nil: false
end