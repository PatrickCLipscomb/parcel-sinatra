class Parcel
  define_method(:initialize) do |length, width, height, weight|
    @length = length
    @width = width
    @height = height
    @weight = weight
  end
  define_method(:volume) do
    volume = @length * @width * @height
  end
  define_method(:cost_to_ship) do |distance|
    cost = (distance / 100) + ((volume() / 3) * (@weight / 2))
  end
end
