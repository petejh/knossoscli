# Changelog
All notable changes to this project will be documented in this file.

This project uses [Semantic Versioning][semv].

## [Unreleased][new]

## [0.2.0][0.2.0] — 2020-01-09
### Changed
- Use `KnossosCLI::VERSION` to calculate an '~> x.y.0' dependency on the
  `knossos` gem during major version 0 development.
- Scope `Algorithm` and `Renderer` under `Knossos`.
- Only set a default value for the `--image` argument to `carve` when the option
  is actually specified in the command.

### Fixed
- Properly require this gem's code in `bin/console`

## [0.1.0][0.1.0] — 2020-01-09
### Added
- Add the `carve` sub-command, including options to specify the grid dimensions,
  the maze-generating algorithm, and a filename to hold a .png image of the maze.
- Automagically infer the list of available algorithms. At least until the
  library provides a cleaner way.

## [0.0.0][0.0.0] — 2019-12-31
### Added
- Create the project as a Ruby gem.
- Add the Thor toolkit to build the command line interface.

---
_This file is composed with [GitHub Flavored Markdown][gfm]._

[gfm]: https://github.github.com/gfm/
[semv]: https://semver.org

[new]: https://github.com/petejh/knossoscli/compare/HEAD..v0.2.0
[0.2.0]: https://github.com/petejh/knossoscli/releases/tag/v0.2.0
[0.1.0]: https://github.com/petejh/knossoscli/releases/tag/v0.1.0
[0.0.0]: https://github.com/petejh/knossoscli/releases/tag/v0.0.0
