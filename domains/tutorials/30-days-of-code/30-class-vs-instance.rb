class Person
  attr_accessor :age
  def initialize(initialAge)
    puts 'Age is not valid, setting age to 0.' if initialAge<0
    @age = initialAge<0 ? 0 : initialAge
  end
  def amIOld()
    case @age
    when 0 .. 12
      puts 'You are young.'
    when 13 .. 17
      puts 'You are a teenager.'
    else
      puts 'You are old.'
    end
  end
  def yearPasses()
    @age = @age + 1
  end
end
