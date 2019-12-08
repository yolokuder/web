---
title: iterm2 setup
date: "2019-07-07T22:12:03.284Z"
tags: tool, iterm2
description: Setup iterm2 on MAC.
---

# How to install iTerm2

You would [Download iTerm2](http://www.iterm2.com/downloads.html) and install it.

Then getting the iTerm color settings. My favorite color them is [Solarized Dark theme](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Solarized%20Dark%20-%20Patched.itermcolors)

Just save it somewhere and open the file(s). The color settings will be imported into iTerm2. Apply them in iTerm through iTerm → preferences → profiles → colors → load presets.

# Oh My Zsh

First step is installing with curl

```shell
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

I like to see some added info so I install `Powerlevel9k`. Just execute

```shell
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
```

When the installation is done, edit `~/.zshrc` and set `ZSH_THEME="powerlevel9k/powerlevel9k"`

Here is my final [.zshrc file](./.zshrc)

## Install a patched font

I use [Meslo](https://github.com/powerline/fonts/blob/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf) font for iTerm2. Click "view raw" to download the font.

Open the downloaded font and press "Install Font".

Set this font in iTerm2 (14px is my personal preference) (iTerm → Preferences → Profiles → Text → Change Font).

Restart iTerm2 for all changes to take effect.

# Further tweaking

I make some tweak to show nice prompt by adding these setting to `.zshrc` file

```text
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_CONTEXT_TEMPLATE="\u2665 YolokKuder.com \u2665"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_SHORTEN_DELIMITER=".."
```

Here is my final [.zshrc file](./.zshrc)

That's it, now just launch iterm and enjoy what we got.
