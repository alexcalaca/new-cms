class Subject < ApplicationRecord
  has_many :pages, { :optional => false}
end
