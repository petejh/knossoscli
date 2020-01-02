require 'knossos'
require 'thor'

class KnossosCLI::CLI < Thor
  desc 'carve', 'Carve a maze'
  def carve
    puts Knossos::BinaryTree.carve(Knossos::Grid.new())
  end
end
