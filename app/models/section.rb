class Section < ApplicationRecord
  belongs_to :page, { :optional => false}
  has_many :section_edits
  has_many :admin_users, :through => :section_edits
  
  scope :red, -> { where(color: 'red') }
  scope :page_section, -> {  Page.all } # This scope didn't work out
  
  CONTENT_TYPES = ['Text', 'HTML']
  
  validates :name, presence: true, length: { within: 4..55 }
  validates :position, numericality: { only_integer: true}
  validates :content_type, inclusion: { in: CONTENT_TYPES ,
    message: "Must be one of: #{CONTENT_TYPES.join(', ')} "}
  validates :content, presence: true
  
end