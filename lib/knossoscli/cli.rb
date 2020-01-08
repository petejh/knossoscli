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
    :enum => [
      'AldousBroder',
      'BinaryTree',
      'RecursiveBacktracker',
      'Sidewinder',
      'Wilsons'
    ],
    :default => 'BinaryTree'
  def carve
    params = {}
    params[:rows] = options[:rows].to_i if options[:rows]
    params[:columns] = options[:columns].to_i if options[:columns]

    grid = Knossos::Grid.new(params)

    carver = Algorithm.const_get(options[:algorithm])
    carver.carve(grid: grid)

    renderer = Renderer::Text.new
    puts renderer.render(grid: grid)
  end
end
