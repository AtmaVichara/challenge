FactoryBot.define do

  factory :student do
    sequence(:name) { |n| "Krinkle Davenport the #{n} Esq."}
  end

  factory :address do
    sequence(:street) { |n| "#{n} Street"}
    city "SnoozeCityYonder"
    state "CO"
    zipcode 5
    description "What have you"
    student
  end



end
