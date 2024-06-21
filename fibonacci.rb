# frozen_string_literal: true

def fibs(num)
  return [] if num <= 0
  return [0] if num == 1
  return [0, 1] if num == 2

  sequence = [0, 1]

  (num - 2).times do
    sequence << sequence[-1] + sequence[-2]
  end
  sequence
end

puts fibs(8).inspect
def fibs_rec(num, fib_sequence = [0, 1])
  return [] if num <= 0
  return [0] if num == 1
  return fib_sequence.first(num) if fib_sequence.size >= num

  fib_sequence << fib_sequence[-1] + fib_sequence[-2]
  fibs_rec(num, fib_sequence)
end

puts fibs_rec(8).inspect
