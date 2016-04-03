# binc
**Keeping your binaries in sync**

binc is a command line tool for easily keeping track of binaries that you want installed on your Mac. Sort of like [mackup](https://github.com/lra/mackup), but for your applications. Currently supports [Homebrew](http://brew.sh)

## Details

You keep track of the binaries/applications that you want installed on your computer in a `.yml` file. You can share this between computers using Dropbox. If you start working on another computer you can simply run `binc` and it will setup any applications that weren't already installed.

## Use Cases

- If you use multiple Macs and want them to run the same software
- If you want to easily reinstall your binaries on a fresh install of Mac OS X

## Currently Supports

- Homebrew


### Recommended

We recommend using `binc` with [mackup](https://github.com/lra/mackup). Add a `binc.cfg` to your `~/.mackup` directory.

```ini
[application]
name = binc

[configuration_files]
.binc
```

### Homebrew

- Create a file named `brew.yml` in the `~/.binc/` directory

```yml
taps:
    - homebrew/php

packages:
    - cmake
    - direnv
    - git
    - mackup
    - php56
    - ruby
    - thefuck
    - tmux
    - vim
    - zsh
```

## Syncing

- Run `binc` from the command line

## To Do

- Homebrew Cask Support
- Ruby Gem Cask Support
- Node NPM Support
- Composer Support
- Pip Support
- Vagrant Plugins Support

## Credits

Yaml code from [https://github.com/behrang/YamlSwift](https://github.com/behrang/YamlSwift)

## License

The MIT License (MIT)

Copyright (c) 2016 Mark Wales / Small Hadron Collider 

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
