# Knossos CLI
A command line companion to the [`knossos`][gem] Ruby gem for generating mazes.

## Installation
Install globally with:
```bash
~$ gem install knossos-cli
```

## Usage
Generate a maze in your terminal:
```bash
~$ knossos-cli
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
~/knossos-cli$ bin/setup
~/knossos-cli$ bundle exec rake rspec
```

### Running the Code
You can experiment with the code interactively using:
```bash
~/knossos-cli$ bin/console
```

### Publishing
To release a new version of the library, first increment the version number in
`lib/knossos-cli/version.rb` following [Semantic Versioning][semv] policy, and
update `CHANGELOG.md`. Commit your work, and finally, run:
```bash
# Create a git tag, push commits and tags, and publish to rubygems.org
~/knossos-cli$ bundle exec rake release
```

## License
This gem is available as open source under the terms of the [MIT License][mit].

---
_This file is composed with [GitHub Flavored Markdown][gfm]._

[coc]:  https://github.com/petejh/knossos-cli/blob/master/CODE_OF_CONDUCT.md
[fork]: https://help.github.co://help.github.com/en/github/getting-started-with-github/fork-a-repo
[gem]:  https://github.com/petejh/knossos
[gfm]:  https://github.github.com/gfm/
[orig]: https://github.com/petejh/knossos-cli
[mit]:  https://github.com/petejh/knossos-cli/blob/master/LICENSE.txt
[semv]: https://semver.org
