module Debug
  def who_am_i
    "#{self.class.name} (id: #{self.object_id}): #{self.name}"
  end
end


class Phonograph
  include Debug

  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class EightTrack
  include Debug

  attr_reader :name

  def initialize(name)
    @name = name
  end
end

phonograph = Phonograph.new("West End Blue")
phonograph.who_am_i

eight_track = EightTrack.new("Pillow")
eight_track.who_am_i

# The exact order of places that Ruby searches for an instance method is the following:

# Methods that have specifically been added to that instance using the def foo.bar that we’ve seen or the class << foo syntax that we haven’t talked about yet.

# Any module that has been added to the receiver’s class using prepend, the last module so added is checked first.

# Methods that are actually defined in the receiver’s class.

# Any module that’s added to the receiver’s class using include, the last module so added is checked first.

# If the method hasn’t yet been found at this point, the entire loop is started over with the superclass of the receiver’s class.