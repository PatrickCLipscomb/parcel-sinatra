require('rspec')
require('triangles')

describe(Triangle) do
  describe('#triangle?') do
    it('if entry is not a triangle, will return false.') do
      test_triangle = Triangle.new(2, 2, 8)
      expect(test_triangle.triangle?()).to(eq(false))
    end
  end
  describe('#triangle?') do
    it('returns equilateral if triangle is equilateral.') do
      test_triangle = Triangle.new(8, 8, 8)
      expect(test_triangle.triangle?()).to(eq('Triangle is an equilateral.'))
    end
  end
  describe('#triangle?') do
    it('returns isosceles if triangle is isosceles.') do
      test_triangle = Triangle.new(8, 6, 8)
      expect(test_triangle.triangle?()).to(eq('Triangle is an isosceles.'))
    end
  end
  describe('#triangle?') do
    it('returns scalene if triangle is scalene.') do
      test_triangle = Triangle.new(5, 7, 8)
      expect(test_triangle.triangle?()).to(eq('Triangle is a scalene.'))
    end
  end
end
