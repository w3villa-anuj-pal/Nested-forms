class Post < ApplicationRecord
  extend FriendlyId
  include Validateble
  has_many :comments, dependent: :destroy 
  friendly_id :title, use: :slugged
end
