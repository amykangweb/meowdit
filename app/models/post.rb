class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, presence: true
  before_save :replace_with_meow

  private

  def replace_with_meow
    meows1 = Meow.offset(rand(Meow.count)).limit(self.title.split.count)
    meows2 = Meow.offset(rand(Meow.count)).limit(self.content.split.count)
    self.title = meows1.map(&:word).join(" ")
    self.content = meows2.map(&:word).join(" ")
  end
end
