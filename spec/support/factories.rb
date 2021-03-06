FactoryGirl.define do

  factory :user do
    sequence(:email) {|n| "person#{n}@example.com" }
    password 'password123'
    password_confirmation 'password123'
  end

  factory :piece do
    title 'foobarbaz'
    user
  end

  factory :image do
    piece
  end

end
