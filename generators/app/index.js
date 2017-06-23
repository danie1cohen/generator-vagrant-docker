'use strict';
const Generator = require('yeoman-generator');
const chalk = require('chalk');
const yosay = require('yosay');

module.exports = class extends Generator {
  prompting() {
    // Have Yeoman greet the user.
    this.log(yosay(
      'Welcome to the superior ' + chalk.red('generator-vagrant-docker') + ' generator!'
    ));

    const prompts = [{
      type: 'input',
      name: 'project',
      message: 'What is your project called?',
      default: this.appname
    }];

    return this.prompt(prompts).then(props => {
      // To access props later use this.props.someAnswer;
      this.props = props;
    });

  }

  writing() {
    var files = [
        'bootstrap.sh', 'Vagrantfile', '.gitignore'//, '.travis.yml'
    ];
    for (var i = 0; i < files.length; i++ ){
        this.fs.copy(
          this.templatePath(files[i]),
          this.destinationPath(files[i])
        );
    }
  }

  install() {
    //this.installDependencies();
  }
};
