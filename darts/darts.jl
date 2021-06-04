function score(x, y)
    rewards = [10, 5, 1, 0]
    rewards[something(findfirst(x -> x >= 0, [1, 5, 10] .- sqrt(x^2 + y^2)), 4)]
end