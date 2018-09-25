class AdminUser < ApplicationRecord
  has_and_belongs_to_many :pages, :join_table => 'admin_users_pages'
end
