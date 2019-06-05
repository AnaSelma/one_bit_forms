FactoryBot.define do
  factory :question do
    title { FFaker::Lorem,phrase }
    kind { rand(0..3) } # :short_test, :long_test, :integer, :boolean
    form
  end
end
