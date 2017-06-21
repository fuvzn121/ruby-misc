require 'bigdecimal'

si, sall = 0, 0
print "N0 = "
n = gets.chomp.to_i

start = Time.now
10.times {
  n.times {x, y = rand, rand; sall += 1; si += 1 if(x*x + y*y < 1.0)}
  pai = BigDecimal.new(4 * si).div(BigDecimal(sall), 100).to_s
  time = Time.now - start
  printf("N = %15d pai = %20.10f time = %f\n", n, pai, time)
  n *= 10
}
