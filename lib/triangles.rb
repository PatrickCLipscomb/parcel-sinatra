class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  define_method(:triangle?) do
    if (@side1 + @side2 >= @side3) && (@side2 + @side3 >= @side1) && (@side3 + @side1 >= @side2)
      if (@side1 == @side2) && (@side2 == @side3)
        "Triangle is an equilateral."
      elsif (@side1 == @side2) || (@side2 == @side3) || (@side1 == @side3)
        "Triangle is an isosceles."
      elsif (@side1 != @side2) && (@side2 != @side3) && (@side1 != @side3)
        "Triangle is a scalene."
      end
    else
      false
    end
  end
end
