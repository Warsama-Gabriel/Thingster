class Thing < ActiveRecord::Base
  validates :name, presence: true,
                   length: { minimum: 3, maximum: 250 }

  validates :description, length: { maximum: 1000 }

end
