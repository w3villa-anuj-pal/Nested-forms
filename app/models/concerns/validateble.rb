module Validateble
  extend ActiveSupport::Concern
  included do
    validates :body ,presence: true
  end 
end