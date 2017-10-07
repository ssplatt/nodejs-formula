# nodejs-formula

Install nodejs and modules. Testing against both Debian 8 and Debian 9.

## Usage
The defaults are to install `nodejs` and defined modules via packages. Modules can be toggled to install via `npm`. It is possible to define global variables for `/etc/noderc`, but that file is blank by default.

Defaults:
```
nodejs:
  enabled: false
  from:
    pkg: true
  pkgs:
    - nodejs
  modules:
    from:
      pkg: true
      npm: false
    pkgs: []
  config: {}
```

install nodejs and modules via packages:
```
nodejs:
  enabled: true
  modules:
    pkgs:
      - node-ansi
      - node-forever-agent
```

install nodejs via packages but modules via npm:
```
nodejs:
  enabled: true
  modules:
    from:
      pkg: false
      npm: true
    pkgs:
      - ansi
      - forever
```

## Development
Install and setup brew:
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

```
brew install cask
brew cask install vagrant
```

```
cd <formula dir>
bundle install
```
or
```
sudo gem install test-kitchen
sudo gem install kitchen-vagrant
sudo gem install kitchen-salt
```

Run a converge on the default configuration:
```
kitchen converge default
```
