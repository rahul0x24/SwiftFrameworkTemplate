# Framework Template

A template for new Framework project.

![Platforms](https://img.shields.io/cocoapods/p/Restofire.svg)
[![License](https://img.shields.io/cocoapods/l/Restofire.svg)](https://raw.githubusercontent.com/JetpackSwift/FrameworkTemplate/master/LICENSE)

[![Swift Package Manager](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg)](https://github.com/apple/swift-package-manager)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![CocoaPods compatible](https://img.shields.io/badge/CocoaPods-compatible-4BC51D.svg?style=flat)](https://github.com/CocoaPods/CocoaPods)

[![Travis](https://img.shields.io/travis/JetpackSwift/FrameworkTemplate/master.svg)](https://travis-ci.org/JetpackSwift/FrameworkTemplate/branches)

[![Join the chat at https://gitter.im/JetpackSwift/FrameworkTemplate](https://badges.gitter.im/JetpackSwift/FrameworkTemplate.svg)](https://gitter.im/JetpackSwift/FrameworkTemplate?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Twitter](https://img.shields.io/twitter/follow/rahulkatariya91.svg?style=social&label=Follow)](https://twitter.com/rahulkatariya91)

![Template](Assets/Restofire.png)

## What's in the template?

- Deployment Targets - iOS 8.0 / Mac OS X 10.10 / tvOS 9.0 / watchOS 2.0
- Xcode 9.3
- Swift 4.1
- Dependency Managers - CocoaPods / Carthage / Swift Package Manager
- Readme
- Dangerfile / Gemfile / Jazzy
- Github Templates (CODE_OF_CONDUCT, CONTRIBUTING, ISSUE_TEMPLATE, PULL_REQUEST_TEMPLATE)
- TravisCI
- MIT LICENSE
- Testing Dependencies - Quick and Nimble

## Usage


1. [Install carthage][carthage] (`brew install carthage` on
   macOS).
2. [Install cookiecutter][cookiecutter] (`brew install cookiecutter` on
   macOS).
3. Run `cookiecutter https://github.com/RahulKatariya/FrameworkTemplate`

[carthage]: https://github.com/Carthage/Carthage
[cookiecutter]: http://cookiecutter.readthedocs.org/en/latest/installation.html

For future runs you can shorten the command to `cookiecutter FrameworkTemplate`.
However, if you want to use the most recent template you should still run the full command above.

## Additional instructions

This template attempts to provide you an easy setup of your framework repository with many third-party services, however some of them require additional steps such as register and authentication. Below you can find instructions in case this is the first time you set any of these:

<details>
  <summary><strong>CocoaPods</strong></summary>

If this is the first time submitting to CocoaPods a framework named like yours, you need to register your e-mail to CocoaPods system in order to receive owner access to it. You can do so using the following command:

```bash
$ pod trunk register your@email.com --description='My Mac'
```

Make sure to replace `your@email.com` by a valid email since the next step is to access a verification link that CocoaPods is going to send to that address.

The register process will install a token to your machine which can be read with the following command:

```bash
$ grep -A2 'trunk.cocoapods.org' ~/.netrc
machine trunk.cocoapods.org
  login your@email.com
  password ef9bb4c41a4459ba92645a85b3c9cd88
```

If you're using this template, the CocoaPods deploy commands are already in your `.travis.yml` file, so all you need now is to make sure the Travis CI machines are able to use that token. In order to do it securely, we recommend to do it by setting an environment variable and not allowing its value to be displayed in build logs.

In your repository build settings on Travis, add an environment variable named `COCOAPODS_TRUNK_TOKEN` with value `ef9bb4c41a4459ba92645a85b3c9cd88` - replacing this value by the password you've obtained from `~/.netrc`

References:

- [Automated CocoaPod releases with CI](https://fuller.li/posts/automated-cocoapods-releases-with-ci/)
- [Publishing to CocoaPods from Travis](https://stackoverflow.com/questions/26382002/publishing-to-cocoapods-from-travis)

</details>

## Built With FrameworkTemplate

- [Restofire](http://github.com/Restofire/Restofire)

## Credits

*Some of the ideas and wording for the statements above were based on work by the [Alamofire](https://github.com/Alamofire/Alamofire) and [ReactiveCocoa](https://github.com/ReactiveCocoa/ReactiveCocoa) communities. We commend them for their efforts.*

## Contributing

Issues and pull requests are welcome!

## Author

Rahul Katariya [@rahulkatariya91](https://twitter.com/rahulkatariya91)

## License

FrameworkTemplate is released under the MIT license. See [LICENSE](https://github.com/RahulKatariya/FrameworkTemplate/blob/master/LICENSE) for details.
