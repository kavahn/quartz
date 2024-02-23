# Lab 6 for [[ENSC 180]]

## Code:

### simulate_bernoulli_trials.m
```
function simulate_bernoulli_trials(N, M, p)

rng('default'); % Reset the random number generator

trials = rand(N, M) < p; % Generate N x M matrix for Bernoulli trials

sums = sum(trials, 1); % Sum each column to get k of each experiment

edges = -0.5:1:(N + 0.5); % Define histogram edges

h = histogram(sums, edges); % Get histogram of sums

title('Histogram of successes in Bernoulli trials');

xlabel('Number of successes (k)');

ylabel('Number of experiments');

estimatedProbabilities = h.Values / M; % Calculate estimated probabilities P(k)

disp(estimatedProbabilities); % Display without using ';' to avoid suppressing the output

theoreticalPk = bino_pk(N, p); % Calculate theoretical P(k)s

disp(theoreticalPk); % Display theoretical probabilities

averageError = mean(abs(estimatedProbabilities - theoreticalPk)); % Calculate average absolute error

disp(averageError); % Display the average error

figure; % Create a new figure

bar(0:N, [estimatedProbabilities; theoreticalPk]'); % Plot both estimated and theoretical P(k)s

title('Comparison of estimated and theoretical probabilities');

xlabel('Number of successes (k)');

ylabel('Probability');

legend('Estimated P(k)', 'Theoretical P(k)');

set(gca, 'xticklabel', 0:N); % Set correct values for x axis labels

end
```

### bino_pk.m
```
function Pk = bino_pk(n, p)
k = 0:n; % Range of successes
Pk = arrayfun(@(x) nchoosek(n, x) * p^x * (1-p)^(n-x), k); % Calculate P(k)
end
```

## Explanation
### `simulate_bernoulli_trials.m`

- Generate random Bernoulli trials matrix.
- Sum trials, create histogram data.
- Display histogram of successes count.
- Calculate, display estimated probabilities (P(k)).
- Calculate, display theoretical probabilities (P(k)).
- Compute, display average error value.
- Plot estimated vs theoretical probabilities.

### `bino_pk.m`

- Define range of success counts.
- Compute binomial probabilities for range.
- Utilize nchoosek for combinations count.
- Multiply by success, failure probabilities.
- Return all calculated (P(k)) values.

## Inputs/outputs:
##### N = 4, M =10, p = 0.7.
- ![[Lab 6-20240215230645897.webp|384]]
- ![[Lab 6-20240215230627454.webp|436]]
- ![[Lab 6-20240215230708008.webp]]
##### N = 4, M =1000, p = 0.7.
- ![[Lab 6-20240215230842441.webp|459]]
- ![[Lab 6-20240215230853433.webp|457]]
- ![[Lab 6-20240215230909286.webp]]
##### N = 10, M =10, p = 0.3.
- ![[Lab 6-20240215231024841.webp|463]]
- ![[Lab 6-20240215231049835.webp|460]]
- ![[Lab 6-20240215231107590.webp|668]]
##### N = 10, M =1000, p = 0.3.
- ![[Lab 6-20240215231231321.webp|457]]
- ![[Lab 6-20240215231251883.webp|453]]
- ![[Lab 6-20240215231305959.webp|670]]

## Afterword
- The past few labs have been plagued with a strange issue, that when i export as pdf the black text turns white, and I'm guessing my explanation for the last few where missed, so I'm requesting that who ever is reading this right now, please go back and see what i wrote. (I don't want to lose marks lol)