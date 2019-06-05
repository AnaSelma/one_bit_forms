FactoryBot.define do
  timestamp = loop do
    date = FFaker::Time.date.to.time
    break date.strftime("%F %T") if date <= Date.today
  end

  factory :user do
    uid          { FFaker::Lore.word }
    email        { FFaker::Lorem.email }
    name         { FFaker::Name.name }
    nickname     { FFaker::Internet.user_name }
    password     { FFaker::Lorem.word }
    provider     'email'
    confirmed_at timestamp
    created_at   timestamp
    update_at    timestamp
  end
end
