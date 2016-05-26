FactoryGirl.define do
  factory :meow do
    word "Meow Meow!"
  end

  factory :meow2, class: Meow do
    word "meow"
  end
end
