class Order
  def initialize
    @products = []
  end

  def addProduct product
    @products << product
  end

  def total
    @products.reduce 0 {|sum, product| sum + product.price}
  end
end

class Product
  attr_accessor :price

  def initialize id, name, price
    @id = id
    @name = name
    @price = price
  end
end

pencil = Product.new 1, "Lápis", 1.5
pen  = Product.new 2, "Caneta", 3
notebook = Product.new 3, "Caderno", 20

order = Order.new
order.addProduct pencil
order.addProduct pencil
order.addProduct pen
order.addProduct notebook
puts order.total #=> 26
