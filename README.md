# Knossos CLI
A command line companion to the [`knossos`][gem] Ruby gem for generating mazes.

## Installation
Install globally with:
```bash
~$ gem install knossoscli
```

## Usage
The Knossos CLI actually comprises a suite of commands similar to familiar tools
like `git` and `bundler`. You can see a summary of the available sub-commands by
invoking:
```bash
~$ knossos help
```
More detailed documentation for each sub-command is available with, for example:
```bash
~$ knossos help carve
```

Generate a maze in your terminal:
```bash
~$ knossos carve --rows=5 --columns=7 --algorithm=RecursiveBacktracker
```

## Contributing
Bug reports and pull requests are welcome on [GitHub][orig]. Knossos provides
a safe, welcoming space for collaboration. Everyone contributing to our
project—including the codebase, issue trackers, chat, email, social media and
the like—is expected to uphold our [Code of Conduct][coc].

### Setting Up
[Fork the project][fork] on GitHub and make a local clone. Install dependencies,
and run the tests:
```bash
~/knossoscli$ bin/setup
~/knossoscli$ bundle exec rake rspec
```

### Running the Code
Run the command itself with:
```bash
~/knossoscli$ bundle exec exe/knossos
```
Or, you can experiment directly with the code interactively using:
```bash
~/knossoscli$ bin/console
```

### Publishing
To release a new version of the library, first increment the version number in
`lib/knossoscli/version.rb` following [Semantic Versioning][semv] policy, and
update `CHANGELOG.md`. Commit your work, and finally, run:
```bash
# Create a git tag, push commits and tags, and publish to rubygems.org
~/knossoscli$ bundle exec rake release
```

## License
This gem is available as open source under the terms of the [MIT License][mit].

---
_This file is composed with [GitHub Flavored Markdown][gfm]._

[coc]:  https://github.com/petejh/knossoscli/blob/master/CODE_OF_CONDUCT.md
[fork]: https://help.github.co://help.github.com/en/github/getting-started-with-github/fork-a-repo
[gem]:  https://github.com/petejh/knossos
[gfm]:  https://github.github.com/gfm/
[orig]: https://github.com/petejh/knossoscli
[mit]:  https://github.com/petejh/knossoscli/blob/master/LICENSE.txt
[semv]: https://semver.org
