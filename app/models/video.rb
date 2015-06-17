class Video < ActiveRecord::Base
  belongs_to :category
  
  #validates :title, presence: true
  #validates :description, presence: true
  validates_presence_of :title, :description

  def self.search_by_title(q)
    []
  end
end
