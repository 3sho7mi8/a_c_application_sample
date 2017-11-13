class Gallery < ApplicationRecord
  has_many :exhibitions
  belongs_to :get_exhibition
end
