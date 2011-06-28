public class FooBuilder {

  private Bar bar;
  private Baz baz;

  public StringBuilder addBar(Bar bar) {
    foo.setBar(bar);
    return this;
  }

  public StringBuilder addBlah(Blah foo) {
    foo.setBlah(blah);
    return this;
  }

  public Foo build() {
    return foo;
  }
  
}


--------------------------------------------------------------------------------

ruby equivalent

Foo.new(:blah => blah, :bar => bar)
