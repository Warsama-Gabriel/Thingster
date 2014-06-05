class Thing < ActiveRecord::Base

  belongs_to :user

  validates :user_id, presence:true
  
  validates :name, presence: true,
                   length: { minimum: 3, maximum: 250 }
  validates :description, length: { maximum: 1000 }

end
