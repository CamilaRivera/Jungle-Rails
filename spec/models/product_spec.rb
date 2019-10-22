require 'rails_helper'

RSpec.describe Product, type: :model do
  let (:category) { Category.create(name:"category_name")}
  subject { described_class.new(name: "some_name", price: 10, quantity: 100, category_id: category.id ) } 

  describe "Validations" do

    it "is valid with valid attributes" do  
      expect(subject).to be_valid
    end

    it "is not valid without a name" do
      subject.name = nil
      expect(subject).to_not be_valid
      expect(subject.errors[:name]).to_not be_empty
    end

    it "is not valid without a price" do
      subject.price_cents = nil
      expect(subject).to_not be_valid
      expect(subject.errors[:price]).to_not be_empty
    end

    it "is not valid without a quantity" do
      subject.quantity = nil
      expect(subject).to_not be_valid
      expect(subject.errors[:quantity]).to_not be_empty
    end

    it "is not valid without a category" do
      subject.category_id = nil
      expect(subject).to_not be_valid
      expect(subject.errors[:category]).to_not be_empty
    end
  end
end