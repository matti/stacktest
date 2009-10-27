require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Animal do
  before(:each) do
    @valid_attributes = {
      :name => "Charlie Camel",
      :age => 10
    }
  end

  describe "creation" do  
    it "should create a new instance given valid attributes" do
      Animal.create!(@valid_attributes)
    end
  end
  
  describe "validation" do
    before(:each) do
      @animal = Animal.new
      @animal.valid?
    end
    
    it "should be valid" do
      valid_animal = Animal.new @valid_attributes
      valid_animal.should be_valid
    end
    
    it "should require name" do
      @animal.should have(1).error_on(:name)
    end
    
    it "should require age" do
      @animal.should have(1).error_on(:age)
    end
    
    it "should not be too old" do      
      @animal.age = 182
      @animal.should have(1).error_on(:age)
    end
  end
  
end
