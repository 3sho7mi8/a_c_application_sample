class Gallery < ApplicationRecord
  has_many :exhibitions
  has_many :get_exhibitions
end
