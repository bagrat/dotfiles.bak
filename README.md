Environment In One Place!
=========================

The [dotfiles repo](https://github.com/bagrat/dotfiles) contains full configuration of bash, vim and tmux that makes
up my full development environment in a single terminal tab.

## Installation

You may install the dotfiles on your own environment either automatically or
manually depending on what you rather prefer.

### Single Command

For a quick start, you can run this single command to get the environment set
up:

```
$ bash <(curl -s http://sh.bagrat.io/web.sh)
```

This will clone the repo and install all the required files onto your
environment.

### Manual Installation

If you are the kind that does not trust every single script, you are good too.
You can just clone the repo and use whatever files you like. At this point
still, you can automate the installation process by running:

```
$ ./install.sh
```

## Features and Keymaps

The following sections provide detailed features and keymaps that come from the
dotfiles configuration files for each bach, vim and tmux.

### Bash

TBD

### Vim

#### Keymaps

*Note:* `<leader>` is configured as `,`.

* Close buffer - `<leader><tab>`
* Close window - `<leader>q`
* Close all (force) - `<leader>Q`

* Jump to end of line (same as `$`) - `<ctrl>-e` (like in bash)
* Jump to beginning of line (same as `^`) - `<ctrl>-a` (like in bash)

* Toggle NERDTree - `<leader>t`

### Tmux

TBD
