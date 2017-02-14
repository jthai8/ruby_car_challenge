class Vehicle

  def initialize
    @lights = "off"
    @signal = "off"
  end

  def lights
    if @lights == "on"
      puts @lights = "off"
    else
      puts @lights = "on"
    end
  end

  def signal
    @signal
  end

  def turnSignal dir #dir is direction
    if(dir!="left"||dir!="right"||dir!="off")
      puts "Hey! That's not a direction!"
    else
      @signal = dir
    end
  end

  def lights_on?
    @lights == "on" ? true : false
  end
end
#
# my_vehicle = Vehicle.new
# my_vehicle.lights
# my_vehicle.turnSignal "up"
# puts my_vehicle.lights_on?
# puts my_vehicle.signal

class Car < Vehicle
  def initialize modelyear
    @wheels = 4
    @modelyear = modelyear
    @speed = 0
  end

  def wheels
    @wheels
  end

  def modelyear
    @modelyear
  end

  def speed
    @speed
  end

  def to_s
    "Our car has #{wheels} wheels, is from the year #{modelyear}, and is currently at speed #{speed}."
  end

end

# puts my_car = Car.new(1999)
# puts new_car = Car.new(10202)


class Tesla < Car
  def acceleration
    @speed+=10
  end

  def braking
    @speed-=7
  end

  def to_s
    super + " Our car is a Tesla."
  end
end

 # my_tesla = Tesla.new(1999)
 # puts my_tesla

class Tata < Car
  def acceleration
    @speed+=2
  end

  def braking
    @speed-=1.25
  end

  def to_s
    super + " Our car is a Tata."
  end
end

# my_tatas = Tata.new(1999)
# my_tatas.acceleration
# my_tatas.braking
# puts my_tatas.speed

class Toyota < Car
  def acceleration
    @speed+=7
  end

  def braking
    @speed-=5
  end

  def to_s
    super + " Our car is a Toyota."
  end
end

car_array = []
car_array << Tesla.new(2000) << Tesla.new(1998) << Toyota.new(2010) << Toyota.new(2011) << Tata.new(2014) << Tata.new(2017)
# puts car_array
car_array.shuffle!
# puts car_array

puts car_array.sort_by { |a| [a.modelyear, a.class] }
# puts car_array.sort { |x,y| x.class.to_s <=> y.class.to_s}


# my_tatas = Toyota.new(1999)
# my_tatas.acceleration
# my_tatas.braking
# puts my_tatas.speed
