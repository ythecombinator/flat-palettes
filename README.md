<p align="center">
  <a href="">
    <img alt="Logo" src="logo.png" width="500px">
  </a>
</p>

<p align="center">
    :art: Need color inspiration? No problem! Have some fantastic random color palettes.
</p>

<p align="center">

  <a href="https://codeship.com/projects/"><img alt="Build Status" src="https://codeship.com/projects//status?branch=master"></a>

  <a href="https://travis-ci.org/mabrasil/flat-palettes"><img alt="Build Status" src="https://travis-ci.org/mabrasil/flat-palettes.svg?branch=master"></a>

  <a href="https://codeclimate.com/github/mabrasil/flat-palettes"><img alt="Code Climate" src="https://codeclimate.com/github/mabrasil/flat-palettes/badges/gpa.svg"/></a>

  <a href="https://david-dm.org/mabrasil/flat-palettes" title="Dependency status"><img src="https://david-dm.org/mabrasil/flat-palettes.svg"/></a>

  <a href="https://david-dm.org/mabrasil/flat-palettes#info=devDependencies" title="devDependency status"><img src="https://david-dm.org/mabrasil/flat-palettes/dev-status.svg"/></a>

</p>

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
  - [Node](#node)
  - [CLI](#cli)
- [Development](#development)
- [Contributing](#contributing)
- [Motivation](#motivation)
- [License](#license)
- [Credits](#credits)

## Installation

### Node

```sh
$ npm install --save flat-palettes
```

### CLI

```sh
$ npm install -g flat-palettes
```

## Usage

<p align="center">
  <a href="">
    <img alt="Screenshot" src="" width="900px">
  </a>
</p>

### Node

```js
const colors = require('flat-palettes.js');

colors(3);
//=> ['#f7a61b', '#7cbf42', '#eb4a24']

colors(5);
//=> ['#1f518b', '#1488c8', '#f7e041', '#e2413e', '#e91222']
```

#### API

##### `colors(numberOfColors)`

###### `numberOfColors`

*Type*: `Number`

*Range*: `1` - `5`

*Description*: How many colors do you want in your flat palette?

*Example*: `3`

### CLI

![GIFs <3]()

All you got to do is:

```sh
$ flat-palettes <numberOfColors>
```

Where `<numberOfColors>` is the same described [here]().

#### Options

| **Option**  |               **Description**                |
|-------------|----------------------------------------------|
| `--help`    | Shows project description and how to use it. |
| `--version` | Displays the current version.                |
