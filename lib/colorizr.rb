class String
    @color_codes =
    {:red => "\e[31m", :green => "\e[32m", :yellow => "\e[33m",
    :blue => "\e[34m", :pink => "\e[35m", :light_blue => "\e[94m",
    :white => "\e[97m", :light_grey => "\e[37m", :black => "\e[30m"}
  def self.create_colors
      @color_codes.each do |key, value|
          self.send(:define_method, "#{key.to_s}") do
               "#{value}#{self}\e[0m"
            end
      end
  end
  def self.colors
      string_to_return = Array.new
      @color_codes.each do |key, value|
          string_to_return << ":#{key.to_s}"
      end
      string_to_return
  end

  def self.sample_colors
      @color_codes.each do |key, value|
          puts "This is #{value}#{key.to_s}\e[0m"
      end
  end
end

String.create_colors
