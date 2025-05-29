function [p_win, p_lose, p_tie] = binomial_prob(n, p)
% Calculate probabilities of winning, losing, and tying in a binomial distribution
p_win = 1 - binocdf(5, n, p);
p_lose = binocdf(4, n, p);
p_tie = binopdf(5, n, p);
end