1000.times do |i|
  hr = HandRaise.create!(
    question: Faker::StarWars.quote,
    body: Faker::HitchhikersGuideToTheGalaxy.quote,
    student_email: Faker::Internet.email,
    student_name: Faker::StarWars.character,
    guide_title: (Faker::StarWars.vehicle + Faker::StarWars.specie),
    guide_id: rand(100),
    status: (1..3).to_a.sample
  )

  puts hr.student_name
end
