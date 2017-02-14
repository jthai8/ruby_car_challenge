class Tutorial

  attr_accessor :name, :type, :diff

  def initialize(name, type, diff)
      @name = name
      @type = type
      @diff = diff
  end

  def is_harder_than?(tut)
    if tut.type == type
      if tut.diffToNum > diffToNum
        false
      elsif tut.diffToNum < diffToNum
        true
      end
    else
      puts "You cannot compare a #{tut.type} tutorial to a #{type} tutorial!"
    end
  end

  def diffToNum
    if @diff == :easy
      1
    elsif @diff == :medium
      2
    elsif @diff == :hard
      3
    elsif @diff == :advanced
      4
    elsif @diff == :expert
      5
    end
  end

  def to_s
    "#{name} is a type of #{type} and its difficulty is #{diff}. "
  end

end

puts t = Tutorial.new("Object-Oriented Ruby", :ruby, :easy)
puts t2 = Tutorial.new("Intro to Javascript", :ruby, :hard)

puts t.is_harder_than?(t2)
