class Thing < ActiveRecord::Base
  validates :name, presence: true,
                   length: { minimum: 2, maximum: 100 }

  validates :description, length: {maximum: 1000 }
end
