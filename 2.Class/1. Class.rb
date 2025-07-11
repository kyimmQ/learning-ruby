class BookInStore
  attr_reader :isbn
  attr_accessor :price
  # attr_writer :price
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end

  # accessor method -> use attr_reader
  # def isbn
  #   @isbn
  # end
  # def price=(new_price)
  #   @price = new_price
  # end
end

b = BookInStore("1", 3.14)

p b
puts b