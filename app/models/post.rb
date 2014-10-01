class Post < ActiveRecord::Base
  has_many :images, :dependent => :destroy
  accepts_nested_attributes_for :images, :reject_if => :all_blank, :allow_destroy => true
end
