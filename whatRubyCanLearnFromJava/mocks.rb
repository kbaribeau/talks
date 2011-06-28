require 'spec'

    describe "person" do
      it "should be able to drive a car" do
        #arrange
        car = mock()
        car.should_receive(:drive)
        person = Person.new(:car => car)

        #act
        person.go_someplace

        #where's my assert?
      end
    end


    describe "person" do
      it "should be able to drive a car" do
        #arrange
        car = Car.new
        stub(car).drive
        person = Person.new(:car => car)

        #act
        person.go_someplace

        #assert
        car.should have_received.drive
      end
    end
    
