class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, presence: true

  # Callbacks
  # Check if post title/content changed and replace with meows if true.
  before_save :replace_title_with_meow, :if => :title_changed?
  before_save :replace_content_with_meow, :if => :content_changed?
  # End Callbacks

  private

  def replace_title_with_meow
    meows1 = Meow.offset(rand(Meow.count)).limit(self.title.split.count)
    self.title = meows1.map(&:word).join(" ")
  end

  def replace_content_with_meow
    meows2 = Meow.offset(rand(Meow.count)).limit(self.content.split.count)
    self.content = meows2.map(&:word).join(" ")
  end
end
