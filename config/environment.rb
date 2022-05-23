require 'bundler'
Bundler.require

require_all 'app'
require_relative '../app/models/role.rb'
require_relative '../app/models/audition.rb'

a1 =Audition.find(5)
a2 =Audition.find(6)
r1 =Role.find(4)

binding.pry