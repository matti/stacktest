require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe AnimalsController do

  before(:each) do
    @animal = mock_model(Animal)
  end
  
  it "should find all animals" do
    animals = [1,2,3]
    Animal.should_receive(:find).with(:all).and_return(animals)

    get :index
    
    assigns(:animals).should == animals
  end
  
  it "should create an animal" do
    creation_params = { "name" => "Longcat", "age" => "3" }
    
    Animal.should_receive(:new).with(creation_params).and_return(@animal)
    @animal.should_receive(:save).and_return(true)
    
    post :create, :animal => creation_params
    
    response.should be_redirect
  end
  
  it "should render a from" do
    
    get :new
    
    assigns(:animal).should be_instance_of(Animal)
    
    response.should be_success
    response.should render_template(:new)
  end
  

end
