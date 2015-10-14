class Article < ActiveRecord::Base
  attr_accessor :tagging

  def self.all_tags
    self.all.pluck(:tags).flatten.uniq
  end

  def tagging=(val)
    write_attribute(:tags, val.split(','))
  end

  scope :search, -> (search) do
    if search
      where('title ILIKE ? OR content ILIKE ? OR tags @> ARRAY[?]', "%#{search}%", "%#{search}%", "#{search}")
    else
      all
    end
  end
end
