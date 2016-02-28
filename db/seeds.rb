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
