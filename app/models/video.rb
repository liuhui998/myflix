class Video < ActiveRecord::Base
  belongs_to :category
  
  #validates :title, presence: true
  #validates :description, presence: true
  validates_presence_of :title, :description

  def self.search_by_title(search_term)
    where("title like ?", "#{search_term}")
  end
end
