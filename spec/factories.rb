FactoryBot.define do

  factory :student do
    sequence(:name) { |n| "Krinkle Davenport the #{n} Esq."}
  end 

end
