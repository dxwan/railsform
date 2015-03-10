class Item < ActiveRecord::Base

	#attr_accessible :title, :description
 
  #validates :title, presence: true, uniqueness: true
  #validates :description, presence: true
 
  # It returns the items whose titles contain one or more words that form the query
  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("title like ?", "%#{query}%") 
  end

end
