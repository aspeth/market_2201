class Vendor
  attr_reader :name, :inventory

  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    item = @inventory.find { |item| item }
    if item.nil?
      0
    else
      item[1]
    end
  end

  def stock (item, count)
    if !@inventory.key?(item)
      @inventory[item] = count
    else
      @inventory[item] += count
    end
  end
end
