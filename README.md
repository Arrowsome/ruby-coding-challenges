# Ruby coding challenges

This repository is a port
from [igorwojda/kotlin-coding-challenges](https://github.com/igorwojda/kotlin-coding-challenges), containing a set
of [programming challenges](#lets-solve-some-challenges) that are intended to be solved by using the
[Ruby](https://www.ruby-lang.org/) language (hints, solutions tests and [useful links](#useful-links) are here as well).

The purpose of this repository is to help you to practice coding and develop strong problem-solving skills. This will
help you to become a better programmer and improve your chance of getting a new job by passing
[whiteboard coding](https://www.quora.com/What-is-whiteboard-coding) interviews.

## Challenge structure

Each challenge is located in separate package, and it contains 3 main
files ([screen](./misc/image/challenge_structure.png)):

- `README.md` - the task description.
- `challenge_spec.rb` - file containing an empty method/class where challenge should be solved. This file also contains
  set of test and occasionally helper methods. You can run all tests directly from this file (click green arrow next to
  `Test` class).
  [RSpec](https://rspec.info/) tests which verify that task was solved correctly.
- `solution.rb` - a file containing one or more solutions.

## How do I start?

1. Install [IntelliJ IDEA](https://www.jetbrains.com/ruby/)
2. Import project by using Ruby Mine menu: `File | New | Project From Version Control | Git`
3. Choose a challenge ([spec/](spec) directory) and code
   the solution
4. [Run the tests](https://github.com/Arrowsome/ruby-coding-challenges/wiki/Running-tests) to verify your solution

# Let's solve some challenges

Challenges below are segregated by different difficulties. The repository also contains challenges grouped by
[problem type](misc/ChallengeGroups.md).

Some challenges may contain a reference to other challenges that should be solved before to have a better understanding
of the problem. Check the
look at [problem-solving strategy](https://github.com/Arrowsome/ruby-coding-challenges/wiki/Solving-coding-challenges)
.

Take your time before you view the presented solution. To succeed you need to practice often, repeat the same challenges
multiple times and be persistent over time.

**Good luck!**

**New in Town**

- [Capitalize sentence](spec/string/capitalize_sentence)
- [Get odd numbers](spec/integer/filter_odd)
- [Range contains range?](spec/range/contains_range)
- [Add up to](spec/integer/add_upto)
- [Linear search](spec/list/search/linear_search)
- [Count down](spec/integer/countdown)
- [Count up then down](spec/integer/count_up_then_down)
- [Format train route](spec/list/format_train_route)
- [Generate all pairs](spec/integer/generate_all_pairs)
- [Count unique values](spec/list/count_unique_values)
- [Print numbers](spec/integer/print_numbers/basic)
- [Print numbers with steps](spec/integer/print_numbers/steps)
- [Power](spec/integer/power)
- [Product](spec/list/product)
- [Capitalize first](spec/list/capitalize_first)
- [Decapitalize const](spec/string/decapitalize_const)
- [Longest word](spec/string/longest_word)

**Apprentice**

- [Is palindrome](spec/string/is_palindrome/basic)
- [Is tolerant palindrome](spec/string/is_palindrome/tolerant)