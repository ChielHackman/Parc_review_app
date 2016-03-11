# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
parc1 = Parc.create({ name: "De Eemhof", description: "Eldorado vol avontuur en watersport, met een Mediterraans tintje.", city: "Slingerweg 1 Zeewolde"})
parc2 = Parc.create({ name: "Parc Zandvoort", description: "Uitwaaien aan het Noordzeestrand of voor even toerist in de grote stad.", city: "Vondellaan 60 Zandvoort"})
parc3 = Parc.create({ name: "Het Meerdal", description: "Het paradijs waar kinderdromen uitkomen.", city: "Laagheideweg 11 America"})
parc4 = Parc.create({ name: "Parc Sandur", description: "Rust en ruimte aan een glinsterend meer.", city: "Sandurdreef 5 Emmen"})
parc5 = Parc.create({ name: "Het Heijderbos", description: "De plek voor jungle-avonturen en spannende activiteiten.", city: "Hommersumseweg 43 Heijen"})
parc6 = Parc.create({ name: "Port Zélande", description: "Aan het Grevelingenmeer en Noordzeestrand, een frisse duik in vele water- en strandsporten.", city: "Port Zélande 2 Ouddorp"})
parc7 = Parc.create({ name: "De Huttenheugte", description: "Kinderspeelparadijs in de rustgevende omgeving van het grote meer.", city: "Reindersdijk 55 Dalen"})
parc8 = Parc.create({ name: "De Kempervennen", description: "Volop in actie, zowel indoor als outdoor met de natuur als speeldomein.", city: "Kempervennendreef 8 Westerhoven"})
parc9 = Parc.create({ name: "Limburgse Peel", description: "Eindeloos wandelen en fietsen in het Limburgse natuurschoon.", city: "Peelheideweg 25 America"})

Review.create([
  { name: "Hans", comment: "Top park.", rating: 4 , parc: parc1 },
  { name: "Karel", comment: "Slechte bedden.", rating: 1 , parc: parc1 },
  { name: "Piet", comment: "Goed vermaakt. Lekker eten en goed onderhouden.", rating: 5 , parc: parc2 },
  { name: "Theo", comment: "Eten smaakte goed, maar slechte bediening. Verder een leuk park en lekker bij het strand", rating: 3, parc: parc2 },
  { name: "Anja", comment: "Super! Volgend jaar weer.", rating: 4 , parc: parc3 },
  { name: "Gerda", comment: "Heerlijk aan het meer vertoeven.", rating: 4 , parc: parc4 },
  { name: "Lotte", comment: "De rust en vrijheid garanderen een fijne vakantie!", rating: 5 , parc: parc4 }
  ])
