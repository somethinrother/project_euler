namespace :solutions do
  def solve(name, link, solution)
    problem = Problem.where(name: name).first_or_create
    problem.update(link: link, solution: solution)
    puts "#{problem.name} : #{problem.solution} successfully saved"
  end

  desc 'Solve Project Euler Question 001'
  task one: :environment do
    sum = (1...1000).select { |num| num % 3 == 0 || num % 5 == 0 }.reduce(:+)
    solve('001', 'https://projecteuler.net/problem=1', sum)
  end

  desc 'Solve Project Euler Question 001'
  task two: :environment do
    seq = EulerComputer.instance.fibonacci_sequence(4_000_000, 1, 2).select { |num| num % 2 == 0 }.reduce(:+)
    solve('002', 'https://projecteuler.net/problem=2', seq)
  end
end
