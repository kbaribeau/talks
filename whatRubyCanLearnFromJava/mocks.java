public class MocksTest {

    @Test
    public void shouldBeAbleToDrive() {
      //arrange
      Car car = mock(Car.class);
      Person p = new Person(car);

      //act
      p.goSomeplace():

      //assert
      verify(car).drive();
    }


}


