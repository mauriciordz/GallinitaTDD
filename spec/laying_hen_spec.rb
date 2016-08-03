require 'laying_hen'


describe LayingHen do
  # LayingHen tests here

  let (:hen){LayingHen.new}
  let (:egg){Egg.new}

  describe "#initialize" do
    it "creates a new LayingHen" do
      expect(hen).to be_an_instance_of LayingHen
    end
  end

  describe "#age!" do
    it "requires hen's age" do 
      hen.age!
      expect(hen.age).to eq(1)
    end
  end

  describe "#any_eggs?" do
    it "checks if there are any eggs" do
      expect(hen.any_eggs?).to eq(false)
    end
  end

  describe "#pick_an_egg!" do 
    it "valitate is it has eggs and if not get an error" do
      hen.age!
      hen.age!
      hen.age!
      hen.age!
      expect(hen.pick_an_egg!)   egg
    end
  end

  describe "#old?" do
    it "checks the hen age" do
      expect(hen.old?).to eq(false)
    end
  end

  describe "#increase_hatched_hour" do
    it "checks the nil method" do
      expect(hen.increase_hatched_hour(10)).to eq(nil)
    end
  end

  
end

describe Egg do
  # Egg tests here
  let (:egg){Egg.new}

  describe "#initialize" do
    it "creates a new Egg" do
      expect(egg).to be_an_instance_of Egg
    end
  end

  describe "#rotten?" do
    it "checks the egg rotten" do
      expect(egg.rotten?).to eq(false)
    end
  end



end













