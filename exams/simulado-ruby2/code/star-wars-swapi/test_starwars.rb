require 'test/unit'
require_relative 'starwars.rb'

class TestStarWars < Test::Unit::TestCase

  def setup
    @starwars = StarWars.new()
  end

  def test_list_characters()
    characters = @starwars.list_characters("a new hope")
    assert_equal(18, characters.count)

    expected = [
      "Beru Whitesun lars", "Biggs Darklighter", "C-3PO", "Chewbacca",
      "Darth Vader", "Greedo", "Han Solo", "Jabba Desilijic Tiure",
      "Jek Tono Porkins", "Leia Organa", "Luke Skywalker", "Obi-Wan Kenobi",
      "Owen Lars", "R2-D2", "R5-D4", "Raymus Antilles",
      "Wedge Antilles", "Wilhuff Tarkin"
    ]
    assert_equal(expected, characters)

    characters = @starwars.list_characters()
    assert_equal(87, characters.count)

    expected = [
      "Ackbar", "Adi Gallia", "Anakin Skywalker", "Arvel Crynyd", "Ayla Secura",
      "BB8", "Bail Prestor Organa", "Barriss Offee", "Ben Quadinaros",
      "Beru Whitesun lars", "Bib Fortuna", "Biggs Darklighter", "Boba Fett",
      "Bossk", "C-3PO", "Captain Phasma", "Chewbacca", "Cliegg Lars", "Cordé",
      "Darth Maul", "Darth Vader", "Dexter Jettster", "Dooku", "Dormé",
      "Dud Bolt", "Eeth Koth", "Finis Valorum", "Finn", "Gasgano", "Greedo",
      "Gregar Typho", "Grievous", "Han Solo", "IG-88", "Jabba Desilijic Tiure",
      "Jango Fett", "Jar Jar Binks", "Jek Tono Porkins", "Jocasta Nu",
      "Ki-Adi-Mundi", "Kit Fisto", "Lama Su", "Lando Calrissian", "Leia Organa",
      "Lobot", "Luke Skywalker", "Luminara Unduli", "Mace Windu", "Mas Amedda",
      "Mon Mothma", "Nien Nunb", "Nute Gunray", "Obi-Wan Kenobi", "Owen Lars",
      "Padmé Amidala", "Palpatine", "Plo Koon", "Poe Dameron",
      "Poggle the Lesser", "Quarsh Panaka", "Qui-Gon Jinn", "R2-D2", "R4-P17",
      "R5-D4", "Ratts Tyerell", "Raymus Antilles", "Rey", "Ric Olié",
      "Roos Tarpals", "Rugor Nass", "Saesee Tiin", "San Hill", "Sebulba",
      "Shaak Ti", "Shmi Skywalker", "Sly Moore", "Tarfful", "Taun We",
      "Tion Medon", "Wat Tambor", "Watto", "Wedge Antilles",
      "Wicket Systri Warrick", "Wilhuff Tarkin", "Yarael Poof", "Yoda",
      "Zam Wesell"
    ]
    assert_equal(expected, characters)
  end

  def test_list_starships()
    starships = @starwars.list_starships("A New Hope")
    assert_equal(8, starships.count)

    expected = [
      "CR90 corvette", "Death Star", "Millennium Falcon",
      "Sentinel-class landing craft", "Star Destroyer", "TIE Advanced x1",
      "X-wing", "Y-wing"
    ]
    assert_equal(expected, starships)

    starships = @starwars.list_starships()
    assert_equal(37, starships.count)

    expected = [
      "A-wing", "AA-9 Coruscant freighter", "B-wing", "Banking clan frigte",
      "Belbullab-22 starfighter", "CR90 corvette", "Calamari Cruiser",
      "Death Star", "Droid control ship", "EF76 Nebulon-B escort frigate",
      "Executor", "H-type Nubian yacht", "Imperial shuttle",
      "J-type diplomatic barge", "Jedi Interceptor", "Jedi starfighter",
      "Millennium Falcon", "Naboo Royal Starship", "Naboo fighter",
      "Naboo star skiff", "Rebel transport", "Republic Assault ship",
      "Republic Cruiser", "Republic attack cruiser", "Scimitar",
      "Sentinel-class landing craft", "Slave 1", "Solar Sailer",
      "Star Destroyer", "T-70 X-wing fighter", "TIE Advanced x1",
      "Theta-class T-2c shuttle", "Trade Federation cruiser", "V-wing",
      "X-wing", "Y-wing", "arc-170"
    ]
    assert_equal(expected, starships)
  end

end
