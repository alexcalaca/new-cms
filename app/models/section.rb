class Section < ApplicationRecord
  belongs_to :page, { :optional => false}
  has_many :section_edits
  has_many :admin_users, :through => :section_edits
  
  scope :red, -> { where(color: 'red') }
  scope :page_section, -> {  Page.all } # This scope didn't work out
  
end