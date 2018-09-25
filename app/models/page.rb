class Page < ApplicationRecord
  has_and_belongs_to_many :admin_users
  belongs_to :subject, { :optional => false}
  has_many :sections, { :optional => false}
end