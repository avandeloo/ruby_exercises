class Sheep 
  @@tag_tracker = 1

  def initialize(purple_hippo)
    @tag_id = @@tag_tracker
    @@tag_tracker += 1
    @name = purple_hippo[:name]
    @legs = purple_hippo[:legs]
    @ssn = purple_hippo[:ssn]
  end

  def cut_off_leg
    @legs -= 1
  end

  def self.count
    @@tag_tracker - 1
  end

  def ssn
    last_four = @ssn[- 4, @ssn.length]
    "XXX-XX-#{last_four}"
  end 

  def if_5?
    full_ssn.include?("5")
  end

  private #Denotes that methods below this are private

    def full_ssn
      @ssn
    end

end

bobby = Sheep.new({
                    name: "Bobby",
                    legs: 4,
                    ssn: "789554309"
                  })

sue = Sheep.new(
                  name: "Sue",
                  legs: 4,
                  ssn: "012551234"
                )

p bobby
p sue
# p Sheep.count
p sue.ssn
p sue.if_5?
