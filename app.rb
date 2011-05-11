require "rubygems"

# Third party libraries
gem "ramaze", "2009.03"
require "ramaze"

require "json"
require "juggernaut"
require "github/markup"

# Application setup
Ramaze.acquire("controller/*")

require "sequel"
DB = Sequel.connect("mysql://root:asdf@localhost/chat")

Ramaze.acquire("model/*")
