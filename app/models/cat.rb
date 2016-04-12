class Cat < ActiveRecord::Base

  def self.one
    limit(1)
  end

  def name=(val)
    write_attribute(:name, "Kitty " + val)
  end
end
