# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Parc.create([
{
  name: "De Eemhof",
  description: "Eldorado vol avontuur en watersport, met een Mediterraans tintje.",
  city: "Slingerweg 1 Zeewolde",
  country: "nederland"
},
{
  name: "Parc Zandvoort",
  description: "Uitwaaien aan het Noordzeestrand of voor even toerist in de grote stad.",
  city: "Vondellaan 60 Zandvoort",
  country: "nederland"
},
{
  name: "Het Meerdal",
  description: "Het paradijs waar kinderdromen uitkomen.",
  city: "Laagheideweg 11 America",
  country: "nederland"
},
{
  name: "Parc Sandur",
  description: "Rust en ruimte aan een glinsterend meer.",
  city: "Sandurdreef 5 Emmen",
  country: "nederland"
},
{
  name: "Het Heijderbos",
  description: "De plek voor jungle-avonturen en spannende activiteiten.",
  city: "Hommersumseweg 43 Heijen",
  country: "nederland"
},
{
  name: "Port Zélande",
  description: "Aan het Grevelingenmeer en Noordzeestrand, een frisse duik in vele water- en strandsporten.",
  city: "Port Zélande 2 Ouddorp",
  country: "nederland"
},
{
  name: "De Huttenheugte",
  description: "Kinderspeelparadijs in de rustgevende omgeving van het grote meer.",
  city: "Reindersdijk 55 Dalen",
  country: "nederland"
},
{
  name: "De Kempervennen",
  description: "Volop in actie, zowel indoor als outdoor met de natuur als speeldomein.",
  city: "Kempervennendreef 8 Westerhoven",
  country: "nederland"
},
{
  name: "Limburgse Peel",
  description: "Eindeloos wandelen en fietsen in het Limburgse natuurschoon.",
  city: "Peelheideweg 25 America",
  country: "nederland"
},
{
  name: "De Vossemeren",
  description: "Twee indrukwekkende meren, ontelbare watersport- en piratenavonturen.",
  city: "Elzen 145 Lommel",
  country: "belgië"
},
{
  name: "Erperheide",
  description: "Het perfecte park om met de kids op ontdekking te gaan, midden in de groene bossen.",
  city: "Erperheidestraat 2 Peer",
  country: "belgië"
},
{
  name: "Bispinger Heide",
  description: "De ideale mix van actie en ontspanning voor het hele gezin.",
  city: "Töpinger Straße 69 Bispringen",
  country: "duitsland"
},
{
  name: "Park Bostalsee",
  description: "Actieve vakantie aan het watersportmeer Bostalsee in het glooiende Saarland.",
  city: "Lindenallee 1 Nohfelden",
  country: "duitsland"
},
{
  name: "Park Hochsauerland",
  description: "Wandelen in de zomer en skiën in de winter in het land van 1000 heuvels.",
  city: "Sonnenallee 1 Medebach",
  country: "duitsland"
},
{
  name: "Park Eifel",
  description: "Zorgeloos spelen, omringd door een prachtig vulkaanlandschap.",
  city: "Am Kurberg Gunderath",
  country: "duitsland"
},
{
  name: "Park Nordseeküste",
  description: "Zuivere lucht en oneindige vergezichten over het wad.",
  city: "Nordseeallee 36 Tossens",
  country: "duitsland"
}
])

Review.create([
  { name: "Hans", comment: "Top park.", rating: 4 , parc_id: 1 },
  { name: "Karel", comment: "Slechte bedden.", rating: 1 , parc_id: 1 },
  { name: "Piet", comment: "Goed vermaakt. Lekker eten en goed onderhouden.", rating: 5 , parc_id: 2 },
  { name: "Theo", comment: "Eten smaakte goed, maar slechte bediening. Verder een leuk park en lekker bij het strand", rating: 3, parc_id: 2 },
  { name: "Anja", comment: "Super! Volgend jaar weer.", rating: 4 , parc_id: 3 },
  { name: "Gerda", comment: "Heerlijk aan het meer vertoeven.", rating: 4 , parc_id: 4 },
  { name: "Lotte", comment: "De rust en vrijheid garanderen een fijne vakantie!", rating: 5 , parc_id: 4 }
  ])
