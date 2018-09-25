class Section < ApplicationRecord
  belongs_to :page, { :optional => false}
  has_many :section_edits
end
