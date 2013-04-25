class Article < ActiveRecord::Base
        belongs_to :category
        validates_presence_of :title, :content
        scope :active, where('articles.active = ?', true)
        scope :alphabetical, order('title')
end
