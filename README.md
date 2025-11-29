
# Advent of Vine 2025 Template

A template repo for the [Advent of Vine](https://discord.com/channels/1246152587883970662/1430998573662867556/1444064652857180332) event on the [Vine Discord server](https://discord.vine.dev/), for anyone who wants to try doing [Advent of Code](https://adventofcode.com/) in [Vine](https://vine.dev/).

## Solving

Write your day's solutions (part 1 and part 2) in the corresponding file.
You can also write helper functions in `util/util.vi`.

## Running

A convenience [Nushell](https://www.nushell.sh/book/installation.html) script is provided to facilitate running the solutions.

```sh
./run.nu <day-number>
```

It expects an input file at the path `day_<day-number>/input`.
It will automatically download the correct input if you put your [Advent of Code token](https://github.com/wimglenn/advent-of-code-wim/issues/1) into a file named `token` in the root of the project.

You can put test inputs at the path `day_<day-number>/<test-name>`, and select that input with `./run.nu <day-number> -i <test-name>`.

You can also invoke the Vine CLI manually instead of using the script with something like
```sh
cat day_<day-number>/input | vine run day_<day-number>/day_<day-number>.vi --lib util/util.vi
```

