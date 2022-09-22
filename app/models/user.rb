class User < ApplicationRecord
  include Naming
  extend FriendlyId
  friendly_id :first_name, use: :slugged
end
