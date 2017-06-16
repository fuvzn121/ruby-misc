require "securerandom"

p Random.rand
p Random.rand(100)
p Random.rand(100)

r1 = Random.new(1)
p [r1.rand, r1.rand]

r2 = Random.new(1)
p [r2.rand, r2.rand]

p SecureRandom.random_bytes(12)
p SecureRandom.base64(12)
