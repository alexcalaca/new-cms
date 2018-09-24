class Section < ApplicationRecord
  belongs_to :page, { :optional => false}
end
