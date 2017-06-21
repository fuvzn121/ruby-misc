class HelloWorld
  def initialize(myname = "Ruby")
    @name = myname
  end

  def hello
    puts "hello, world. I am #{@name}."
  end
end

bob = HelloWorld.new("Bob")
alice = HelloWorld.new("Alice")
ruby = HelloWorld.new("Ruby")

bob.hello
ruby.hello
