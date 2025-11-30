
# Advent of Vine 2025 Template

A template repo for the [Advent of Vine](https://discord.com/channels/1246152587883970662/1430998573662867556/1444064652857180332) event on the [Vine Discord server](https://discord.vine.dev/), for anyone who wants to try doing [Advent of Code](https://adventofcode.com/) in [Vine](https://vine.dev/).

## Solving

Write your solutions for day `n` in `day_<n>/day_<n>.vi`.
You can also write helper functions in `util/util.vi`.

## Running

### Script

A convenience [Nushell](https://www.nushell.sh/book/installation.html) script is provided to facilitate running the solutions.

```sh
./run.nu <n>
```

It will run `day_<n>/day<n>.vi`, passing the file `day_<n>/input` as input.

#### Auto Input Download

The script will automatically download your official input if you put your [Advent of Code token](https://github.com/wimglenn/advent-of-code-wim/issues/1) into a file named `token` in the root of the project.

#### Test Inputs

You can put a test input into a file `day_<n>/<test-name>` and then use that input:
```sh
./run.nu <n> -i <test-name>
````

### Manually

You can also invoke the Vine CLI manually instead of using the script with something like
```sh
cat day_<n>/input | vine run day_<n>/day_<n>.vi --lib util/util.vi
```

