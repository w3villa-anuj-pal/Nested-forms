class Comment < ApplicationRecord
  include Validateble
  belongs_to :post
end
