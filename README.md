# Rails Congress App

!["US Capital Building"](capital.jpg)

<p align="center">
  <a href="https://www.ruby-lang.org/en/">
    <img src="https://img.shields.io/badge/Ruby-v2.7.1-green.svg" alt="ruby version">
  </a>
  <a href="http://rubyonrails.org/">
    <img src="https://img.shields.io/badge/Rails-v6.0.3-brightgreen.svg" alt="rails version">
  </a>
  <a href="https://github.com/eclectic-coding/rails_congress_app/blob/master/LICENSE"><img alt="GitHub license" src="https://img.shields.io/github/license/eclectic-coding/rails_congress_app"></a>
  <a href="https://github.com/eclectic-coding/rails_congress_app/issues"><img alt="GitHub issues" src="https://img.shields.io/github/issues/eclectic-coding/rails_congress_app"></a>
  <a href="https://twitter.com/intent/tweet?text=Wow:&url=https%3A%2F%2Fgithub.com%2Feclectic-coding%2Frails_congress_app"><img alt="Twitter" src="https://img.shields.io/twitter/url?style=social&url=https%3A%2F%2Fgithub.com%2Feclectic-coding%2Frails_congress_app"></a>
</p>

**Rails Congress* is a public information application about the US Congress, both House and Senate. This application started as a simple abstraction of the ProPublica Congress API, However, there are plans to expand this project even further. You can visit the live web site [Your Congress](https://yourcongress.co) to try it out. 

If you are interested in contributing to this project, check out the [CONTRIBUTORS Guide](CONTRIBUTING.md), and the open [Issues](https://github.com/eclectic-coding/rails_congress_app/issues).   

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. Make sure you have the version of `Ruby` and `Rails` noted in the badges above on your system. 

### Installing

Clone this repository to your computer:
```
git clone https://github.com/eclectic-coding/rails_congress_app
```
**Prerequisites** This app uses the Propublica Congress API. You will need to apply for an API key, then add to [Rails Credentials]():

```
rails credentials:edit
```
Add your API key: `propublica_api_key: YOUR API KEY`

Install the gem files: `bundle install`

Install the javascript packages: `yarn install`

This project uses `foreman` to start both `rails server` and `webpack` for a smoother expereince. To start the project: `foreman start`. 

## Running the tests

Explain how to run the automated tests for this system

### TODO:

- Rake tasks for Database updates with `whenever` gem
- Add Bills section 
- Add Nomination section 
- Add Committee section 
- Add Statements section 
- Add Lobbying section 

Check the Open issues to help. 

## Contributing

Please read [CONTRIBUTING.md](./CONTRIBUTING.md) for details about  the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Chuck Smith** -  [Eclectic Coding](https://github.com/eclectic-coding)

See also the list of [contributors](https://github.com/eclectic-coding/this-repo/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

## Acknowledgments

