FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.name }
    email                 { Faker::Internet.free_email }
    password              { Faker::Internet.password(min_length: 6, mix_case: false) }
    password_confirmation { password }
    last_name             { '大久保' }
    first_name            { '迅' }
    last_name_kana        { 'オオクボ' }
    first_name_kana       { 'ジン' }
    birthday              { Faker::Date.backward }
  end
end
