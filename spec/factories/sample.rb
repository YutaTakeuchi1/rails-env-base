# spec/factories/samples.rb
FactoryBot.define do
  factory :sample do
    sequence(:text) { |n| "Sample #{n}" }
    value { Faker::Number.between(from: 1, to: 100) }
  end
end
