puts 'criando animes'
  5.times do |i|
    Anime.create(name: ['cdz','fly','bucky'].sample, age: 'ano especifico')
  end
puts 'animes criados'