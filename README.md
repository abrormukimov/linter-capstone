# CSS linter

# Ruby Capstone Project

![screenshot](images/screenshot.png)

# About the Project

As front end developers we hope that the code we write will be shipped to production and enjoyed by the users of our product. We spend a huge amount of time ensuring that we write code that is free of bugs and errors. But how many of these errors can we figure out without actually running the code? This is where tests come in, though there are certainly things that tests will not pick up, or might not be tested for at all.

# Set-up Stickler (Github app) - it will show that your app is free from style errors

Install [stickler-ci](https://github.com/apps/stickler-ci)
Enable stickler in your repo. To do that, go to this [link](https://stickler-ci.com/)  

In first commit of your feature branch add a copy of .stickler.yml and stylelint.config.js to the root directory.
Remember to use both files linked above

When you open your first pull request you should see Stickler's report at Checks tab.

## Built With

- Ruby
- Sublime Text Editor


## How to Use Stylelint

There are different ways to use Stylelint, such as installing a plugin for your favorite code editor, or a plugin for Post CSS, but we’re going to use the Command Line.

Start linting by installing the NPM package on your machine. Open up your terminal and type the following command:

	$ 1. npm install -g stylelint

The above command installs Stylelint globally. If you prefer to have it project-based, you can do so with the command below:

	$ 1. npm install stylelint --save-dev

Then you can have this in the package.json file which is added to your project.

	$ 1 "scripts": {
	$ 2    "stylelint": "stylelint ’**/*.scss’"
	$ 3 }


## Rules

	1. When you define an tag name, class name or id, there shouldn't be a whitespace before them;

	2. An opening curly brace should be preceded by a space and followed by anything and a new line should be added;

	3. Only 2-space indentation is accepted before writing CSS attributes. You must put a whitespace after a semicolon;

	4. A closing curly brace mustn't be followed by a trailing space;


## How to Run Stylelint

If you want to check your errors according to the stylint rules, Open your terminal and type the following command:

	$ 1. npx stylelint .


### Prerequisites

This project runs on [Ruby](https://www.ruby-lang.org/en/documentation/installation/)

After installation, run `ruby -v` to make sure Ruby installed correctly. Example
```
$ ruby -v
ruby 2.3.0p0 (2015-12-25 revision 53290) [x86_64-darwin17]
```

### Installing
clone the project locally

In your terminal, change directory to the root of the project

### Live version of the project

[Live Demo Link](https://repl.it/repls/GoldGiftedMention)


## Author

👤 **Abror Mukimov**
- Github: [abrormukimov](https://github.com/abrormukimov)
- Linkedin: [abrormukimov](https://www.linkedin.com/in/abrormukimov)
- Twitter: [abrormukimov](https://www.twitter.com/abrormukimov)

## 🤝 Contributing

Contributions, issues and feature requests are welcome! Start by:

* Forking the project
* Cloning the project to your local machine
* `cd` into the project directory
* Run `git checkout -b your-branch-name`
* Make your contributions
* Push your branch up to your forked repository
* Open a Pull Request with a detailed description to the development branch of the original project for a review

##### Please feel free to contribute to any of these!

Feel free to check the [issues page](https://github.com/abrormukimov/tic-tac-toe/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- [Microverse](microverse.org)
  ## Special thanks to [ioanniskousis](https://github.com/ioanniskousis)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details