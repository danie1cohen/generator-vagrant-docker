# generator-vagrant-docker [![NPM version][npm-image]][npm-url] [![Build Status][travis-image]][travis-url] [![Dependency Status][daviddm-image]][daviddm-url] [![Coverage percentage][coveralls-image]][coveralls-url]
> Creates a vagrant environment bootstrapped with docker. This is useful for developing docker apps while chained to a windows environment that you wouldn't be using for deployment, and that isn't capable of natively provisioning the vagrant environment using docker. Instead we use a shell script to bootstrap the vagrant environment with docker and then you can develop from there.

## Installation

First, install [Yeoman](http://yeoman.io) and generator-vagrant-docker using [npm](https://www.npmjs.com/) (we assume you have pre-installed [node.js](https://nodejs.org/)).

```bash
npm install -g yo
npm install -g generator-vagrant-docker
```

Then generate your new project:

```bash
yo vagrant-docker
```

## Getting To Know Yeoman

 * Yeoman has a heart of gold.
 * Yeoman is a person with feelings and opinions, but is very easy to work with.
 * Yeoman can be too opinionated at times but is easily convinced not to be.
 * Feel free to [learn more about Yeoman](http://yeoman.io/).

## License

MPL-2.0 © [Dan Cohen](www.dancohen.io)


[npm-image]: https://badge.fury.io/js/generator-vagrant-docker.svg
[npm-url]: https://npmjs.org/package/generator-vagrant-docker
[travis-image]: https://travis-ci.org/danie1cohen/generator-vagrant-docker.svg?branch=master
[travis-url]: https://travis-ci.org/danie1cohen/generator-vagrant-docker
[daviddm-image]: https://david-dm.org/danie1cohen/generator-vagrant-docker.svg?theme=shields.io
[daviddm-url]: https://david-dm.org/danie1cohen/generator-vagrant-docker
[coveralls-image]: https://coveralls.io/repos/danie1cohen/generator-vagrant-docker/badge.svg
[coveralls-url]: https://coveralls.io/r/danie1cohen/generator-vagrant-docker
