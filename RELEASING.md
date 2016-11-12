# Releasing

1. Update the version number in these places:
  - `lib/confiance/version.rb`
  - `core/_confiance.scss`
  - `package.json`
  - `bower.json`
  - `README.md`

1. Update `CHANGELOG.md`. We follow the guidelines from [Keep a CHANGELOG].

1. Commit changes. Use the convention “confiance vX.X.X” in your commit message.
   There shouldn’t be code changes, and thus CI doesn’t need to run.

1. Run `bundle exec rake release`, which tags the release, pushes the tag to
   GitHub, and pushes the gem to RubyGems.org.

1. Run `npm publish`, which pushes the new version to npm’s registry (if
   releasing a pre-release, run `npm publish --tag beta`).

1. Draft a [new GitHub release][github-release]. Upon publishing, a tweet will
   _automatically be sent_ on the [@jbeardstone] Twitter account via [Zapier].
   It will look like this:

   > todo: create twitter account

   > We’ve released {release_title}: {release_link}

1. Re-generate and publish the [documentation website], using the available
   Rake tasks.

[Keep a CHANGELOG]: http://keepachangelog.com
[github-release]: https://github.com/jbeardstone/confiance/releases/new
[documentation website]: https://github.com/jbeardstone/confiance.io
[@jbeardstone]: https://twitter.com/jbeardstone
[Zapier]: https://zapier.com
