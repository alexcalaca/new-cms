class Page < ApplicationRecord
  has_and_belongs_to_many :admin_users, :join_table => 'admin_users_pages'
  belongs_to :subject, { :optional => false}
  has_many :sections
  
  scope :sorted, lambda { order("position ASC ") }
  scope :page_sections, lambda { Section.order("position") }
  scope :page_count, lambda { Page.count }
end