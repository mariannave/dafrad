class Product
  attr_reader :price, :id, :categories

  def initialize id, name, price, categories
    @id = id
    @name = name
    @price = price
    @categories = categories
  end

end

class Item
  attr_reader :product
  
  def initialize product
    @product = product
    @quantity = 1
  end

  def increment
    @quantity += 1
  end

  def total
    @product.price * @quantity
  end

end

class Order

  def initialize
    @items = {}
  end

  def addProduct product
    if @items[product.id].nil?
      @items[product.id] = Item.new(product)
    else
      @items[product.id].increment
    end
  end

  def itens_by_category category
    @items.values.select{|item| item.product.categories.include?(category)}
  end

  def total category=nil
    items = category.nil? ? @items.values : itens_by_category(category)
    items.reduce 0 {|sum, item| sum + item.total}
  end

end

pencil = Product.new(1, "Lápis", 1.5, [:office])
pen  = Product.new(2, "Caneta", 3, [:office])
notebook = Product.new(3, "Caderno", 20, [:office, :school])

order = Order.new()
order.addProduct(pencil)
order.addProduct(pencil)
order.addProduct(pen)
order.addProduct(notebook)
puts order.total() #=> 26
puts order.total(:school) #=> 26
