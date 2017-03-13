FactoryGirl.define do
  factory :comment do
    content "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi lacus est, interdum at maximus vitae, scelerisque vel nunc."
    factory :comment_empty do
      content ""
    end
  end
end
