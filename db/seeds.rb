countries = [
  { 
    name: 'Algeria',
    capital_city: 'Algiers', 
    other_cities: 'Oran, Constantine, Annaba', 
    currencies: 'Algerian Dinar', 
    location: 'Northern Africa', 
    known_by: 'oil, gas, solar energy, iron, zinc, lead, silicon, helium',
    map: 'mapOfAlgeria.png', 
    flag: 'algerianFlag.jpeg'
  },
  { 
    name: 'Burkina Faso',
    capital_city: 'Ouagadougou', 
    other_cities: 'Bobo-Dioulasso, Koudougou, Ouahigouya', 
    currencies: 'West African CFA franc', 
    location: 'West African', 
    known_by: 'gold, zinc, copper, manganese, phosphate, limestone',
    map: 'Burkina-Faso-Map.jpg', 
    flag: 'flag_burkinafaso.jpg'
  },
  {
    name: 'Cameroon',
    capital_city: 'Yaoundé',
    other_cities: 'Douala, Bamenda, Bafoussam',
    currencies: 'Central African CFA franc',
    location: 'Central Africa',
    known_by: 'oil, gas, timber, diamonds, cocoa, coffee, cotton',
    map: 'regions-of-cameroon-map.png',
    flag: 'Flag-Cameroon.webp'
  },
  {
    name: 'Egypt',
    capital_city: 'Cairo',
    other_cities: 'Alexandria, Giza, Shubra El-Kheima',
    currencies: 'Egyptian Pound',
    location: 'Northern Africa',
    known_by: 'oil, gas, iron, zinc, lead, silicon, helium',
    map: 'egypt_map.jpg',
    flag: 'flag_egypt.jpg'
  },
  {
    name: 'Ethiopia',
    capital_city: 'Addis Ababa',
    other_cities: 'Dire Dawa, Mekelle, Gondar',
    currencies: 'Ethiopian Birr',
    location: 'Eastern Africa',
    known_by: 'oil, gas, solar energy, iron, zinc, lead, silicon, helium',
    map: 'ethiopia_map.jpg',
    flag: 'Flag-Ethiopia.webp'
  }
]

countries.each do |country|
  Country.create!(
    name: country[:name],
    capital_city: country[:capital_city],
    other_cities: country[:other_cities].split(', '),
    currencies: country[:currencies].split(', '), 
    location: country[:location].split(', '),
    known_by: country[:known_by].split(', '), 
    map: File.open(Rails.root.join('app', 'assets', 'images', country[:map])),
    flag: File.open(Rails.root.join('app', 'assets', 'images', country[:flag]))
  )
end

puts 'Countries seeded successfully!'
