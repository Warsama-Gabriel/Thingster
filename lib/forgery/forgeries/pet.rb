class Forgery::Pet < Forgery
  def self.pet_name
    dictionaries[:pet_names].random
  end
end