class Gist < ActiveRecord::Base
def self.search(search)
 		where("src LIKE ? or lang LIKE ? or desc LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
end
    validates :src, length: { in: 3..50 }
    validates :lang, length: { in: 2..100 }
    validates :desc, presence: true
end
