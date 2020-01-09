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
    :enum => Algorithm.constants.map(&:to_s).sort,
    :default => 'BinaryTree'
  method_option :image,
    :type => :string,
    :default => 'maze.png'
  def carve
    params = {}
    params[:rows] = options[:rows].to_i if options[:rows]
    params[:columns] = options[:columns].to_i if options[:columns]

    grid = Knossos::Grid.new(params)

    carver = Algorithm.const_get(options[:algorithm])
    carver.carve(grid: grid)

    text_renderer = Renderer::Text.new
    puts text_renderer.render(grid: grid)

    if options[:image]
      image_renderer = Renderer::Image.new(grid)
      image = image_renderer.render
      image.save(options[:image])
    end
  end
end
