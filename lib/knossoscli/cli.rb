require 'knossos'
require 'thor'

class KnossosCLI::CLI < Thor
  desc 'carve', 'Carve a maze'
  method_option :rows,
    :type => :numeric,
    :aliases => '-r'
  method_option :columns,
    :type => :numeric,
    :aliases => '-c'
  method_option :algorithm,
    :type => :string,
    :aliases => '-a',
    :enum => ['AldousBroder', 'BinaryTree', 'RecursiveBacktracker', 'Wilsons'],
    :default => 'BinaryTree'
  def carve
    params = {}
    params[:rows] = options[:rows].to_i if options[:rows]
    params[:columns] = options[:columns].to_i if options[:columns]

    carver = Knossos.const_get(options[:algorithm])

    puts carver.carve(Knossos::Grid.new(params))
  end
end
