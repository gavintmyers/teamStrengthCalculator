# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
  Client.create(name: 'Snake People')
  Client.create(name: 'The Pope')
  Client.create(name: 'Agent Smith')
  Client.create(name: 'Mill Burray')

  Developer.create(name: '1337 H4X0R', dev_type: 'full_time')
  Developer.create(name: 'Kronos', dev_type: 'part_time')
  Developer.create(name: 'Paul Dirac', dev_type: 'special_guest')
  Developer.create(name: 'Usagi Yojimbo', dev_type: 'full_time')
  Developer.create(name: 'Skeletons', dev_type: 'full_time')
  Developer.create(name: 'Jack Skellington', dev_type: 'part_time')
