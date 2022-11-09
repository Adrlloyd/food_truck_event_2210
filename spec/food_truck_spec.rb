require './lib/food_truck'

RSpec.describe do
  it 'exists' do
    food_truck = FoodTruck.new("Rocky Mountain Pies")
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})

    expect(food_truck).to be_a(FoodTruck)
    expect(food_truck.name).to eq("Rocky Mountain Pies")
    expect(food_truck.inventory).to be_a Hash
    expect(food_truck.check_stock(item1)).to eq 0
  end

  describe '#check_stock' do
    it 'returns stock level' do
      food_truck = FoodTruck.new("Rocky Mountain Pies")
      item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})

      expect(food_truck.check_stock(item1)).to eq 0
      food_truck.stock(item1, 30)
      expect(food_truck.check_stock(item1)).to eq 30
    end
  end

  describe '#stock' do
    it 'can add stock to inventory' do
      food_truck = FoodTruck.new("Rocky Mountain Pies")
      item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})

      expect(food_truck.check_stock(item1)).to eq 0
      food_truck.stock(item1, 30)
      expect(food_truck.check_stock(item1)).to eq 30
    end
  end
end