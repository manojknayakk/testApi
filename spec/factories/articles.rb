FactoryBot.define do
  factory :article do
    author { "MyString" }
    title { "MyString" }
    description { "MyText" }
    url { "MyText" }
    image_url { "MyText" }
    publish_at { "2020-06-06 15:59:59" }
    content { "MyText" }
  end
end
