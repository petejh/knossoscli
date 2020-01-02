require 'knossos'
require 'thor'

class KnossosCLI::CLI < Thor
  desc 'carve', 'Carve a maze'
  method_option :rows, :type => :numeric, :aliases => '-r'
  method_option :columns, :type => :numeric, :aliases => '-c'
  def carve
    params = {}
    params[:rows] = options[:rows].to_i if options[:rows]
    params[:columns] = options[:columns].to_i if options[:columns]

    puts Knossos::BinaryTree.carve(Knossos::Grid.new(params))
  end
end
