class Cat < ActiveRecord::Base
  belongs_to :person
  scope :fancy,  ->(){where(color:"gold")}
  def self.one
    limit(1)
  end

  def name=(val)
    write_attribute(:name, "Kitty " + val)
  end
end
