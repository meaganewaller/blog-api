FactoryBot.define do
  factory :post do
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.sentences(number: 3) }
    content { Faker::Lorem.paragraph }
    published_date { Faker::Date.between(from: 2.years.ago, to: Date.today) }
    slug { Faker::Internet.slug(words: title, glue: '-') }
    tags { [Faker::Lorem.word, Faker::Lorem.word] }
    notion_id { Faker::Alphanumeric.alphanumeric(number: 32) }
    notion_created_at { Faker::Date.between(from: 2.years.ago, to: Date.today) }
    notion_updated_at { Faker::Date.between(from: notion_created_at, to: Date.today) }
  end
end
