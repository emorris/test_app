class Person < ActiveRecord::Base
  has_and_belongs_to_many :cats

  def self.fancy_cat_owners
    joins(:cats).merge(Cat.fancy)
  end
end
