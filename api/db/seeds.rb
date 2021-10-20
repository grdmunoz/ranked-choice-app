# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#
#
candidates = [
  {
    name: "Solaris",
    bio: "Solaris is a 1961 science fiction novel by Polish writer Stanisław Lem. It follows a crew of scientists on a research station as they attempt to understand an extraterrestrial intelligence, which takes the form of a vast ocean on the titular alien planet."
  },
  {
    name: "The Left Hand of Darkness",
    bio: "The Left Hand of Darkness is a science fiction novel by U.S. writer Ursula K. Le Guin. Published in 1969, it became immensely popular, and established Le Guin's status as a major author of science fiction."
  },
  {
    name: "Roadside Picnic",
    bio: "Roadside Picnic (Russian: Пикник на обочине, Piknik na obochine, IPA: [pʲɪkˈnʲik nɐ ɐˈbotɕɪnʲe]) is a philosophical science fiction novel by Soviet-Russian authors Arkady and Boris Strugatsky, written in 1971 and published in 1972."
  },
  {
    name: "Neuromancer",
    bio: "Neuromancer is a 1984 science fiction novel by American-Canadian writer William Gibson. It is one of the best-known works in the cyberpunk genre and the only novel to win the Nebula Award, the Philip K. Dick Award, and the Hugo Award."
  },
  {
    name: "Do Androids Dream of Electric Sheep?",
    bio: "Do Androids Dream of Electric Sheep? (retitled Blade Runner: Do Androids Dream of Electric Sheep? in some later printings) is a dystopian science fiction novel by American writer Philip K. Dick, first published in 1968."
  }, {
    name: "Three Body Problem",
    bio: "The Three-Body Problem (Chinese: 三体; lit. 'Three-Body'; pinyin: sān tǐ) is a science fiction novel by the Chinese writer Liu Cixin."
  }, {
    name: "The Hitchhiker's Guide to the Galaxy",
    bio: "The Hitchhiker's Guide to the Galaxy (sometimes referred to as HG2G, HHGTTG, H2G2, or tHGttG) is a comedy science fiction franchise created by Douglas Adams. Originally a 1978 radio comedy broadcast on BBC Radio 4, it was later adapted to other formats, including stage shows, novels, comic books, a 1981 TV series, a 1984 video game, and 2005 feature film."
  }, {
    name: "Dune",
    bio: "Dune is a 1965 science-fiction novel by American author Frank Herbert, originally published as two separate serials in Analog magazine."
  }, {
    name: "Snow Crash",
    bio: "Snow Crash is a science fiction novel by American writer Neal Stephenson, published in 1992."
  }].map do |c|
  Candidate.create(c)
end.shuffle

[
  {
    "0" => 50,
    "1" => 200,
    "2" => 75,
    "3" => 250,
    "4" => 100,
    "5" => 250,
    "6" => 351,
    "7" => 25,
    "8" => 99,
  },
  {
    "0" => 50,
    "1" => 200,
    "2" => 100,
    "3" => 250,
    "4" => 100,
    "5" => 250,
    "6" => 351,
    "8" => 99,
  },
   {
    "1" => 200,
    "2" => 100,
    "3" => 250,
    "4" => 125,
    "5" => 275,
    "6" => 351,
    "8" => 99
  },
  {
    "1" => 200,
    "2" => 100,
    "3" => 250,
    "4" => 150,
    "5" => 300,
    "6" => 400
  },
  {
    "1" => 200,
    "3" => 250,
    "4" => 150,
    "5" => 350,
    "6" => 450
  },
  {
    "1" => 250,
    "3" => 300,
    "5" => 350,
    "6" => 500
  },
  {
    "3" => 350,
    "5" => 400,
    "6" => 650
  },
  {
    "5" => 650,
    "6" => 800
  }
].each_with_index do |round_counts, idx|
  round = Round.create(ordinal: idx)
  round_counts.keys.each do |candidate_idx|
    CandidateRound.create(
      candidate: candidates[candidate_idx.to_i],
      round: round,
      votes: round_counts[candidate_idx]
    )
  end
end
