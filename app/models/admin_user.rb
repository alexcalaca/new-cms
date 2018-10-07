class AdminUser < ApplicationRecord
  has_and_belongs_to_many :pages, :join_table => 'admin_users_pages'
  has_many :section_edits
  has_many :sections, :through => :section_edits
  
  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i
  FORBIDDEN_NAMES = ['Jordan', 'test', 'mary']
  
  validates :first_name, presence: true, length: { maximum: 25}
  validates :last_name, presence: true, length: { maximum: 50 }
  #validates :username, presence: true, length: { within: 8..25 }, uniqueness: true
  validates :email, presence: true, length: { maximum: 100 }, format: { with: EMAIL_REGEX }, confirmation: true
  
  validate :first_name_is_allowed
  
  private
  
  def first_name_is_allowed
    if FORBIDDEN_NAMES.include?(first_name)
      errors.add(:first_name, "has been restricted from use.")
    end
  end
end