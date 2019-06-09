namespace :solutions do
  def solve(name, link, solution)
    problem = Problem.where(name: name).first_or_create
    problem.update(link: link, solution: solution)
  end

  desc 'Solve Project Euler Question 001'
  task one: :environment do
    sum = (1...1000).select { |num| num % 3 == 0 || num % 5 == 0 }.reduce(:+)
    puts sum

    solve('001', 'https://projecteuler.net/problem=1', sum)
  end
end
