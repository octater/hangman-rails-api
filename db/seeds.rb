# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Phrase.create(phrase_content: 'ICEBOX', phrase_hint: 'Baby its cold in here')
Phrase.create(phrase_content: 'BIKINI', phrase_hint: 'Ready for the beach')
Phrase.create(phrase_content: 'WIZZARD', phrase_hint: 'Hi, I am Harry Potter')
