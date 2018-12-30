# 📦 MZKII'S INSTALL PACKAGE 📦
**ver.2019.1.1**

![](https://i.imgur.com/8iQogJh.png)


## 🔨 HOW TO SETUP 🔨
### STEP1
Please install what you can not set up from Terminal (security software etc.) first.

[manual install list (PRIVATE)](https://github.com/mzkii/markdown/blob/master/Manual-install-List.md)


### STEP2
If ssh (ssh cooperation with github) setting is not done please execute the following command.

```
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/mzkii/dotfiles/master/ssh.sh)"
Generating public/private rsa key pair.
Enter file in which to save the key (/Users/username/.ssh/id_rsa): [ENTER] ↩️
Created directory '/Users/testuser/.ssh'.
Your identification has been saved in /Users/username/.ssh/id_rsa.
Your public key has been saved in /Users/username/.ssh/id_rsa.pub.
~~~~~ (omitted) ~~~~~~
$
```

`SSH-key🔑` is created in `~/.ssh` directory.

Since `SSH-key🔑` has been copied to the clipboard, just add it to [github](https://github.com/settings/ssh/new).

Finally make sure that`ssh`settings are working.

```
$ ssh -T git@github.com
Hi username! You've successfully authenticated, but GitHub does not provide shell access.
$
```


### STEP3
Configure the zsh and [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) environment settings.

```
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/mzkii/dotfiles/master/setup.sh)"
```


#### [homebrew.sh](https://github.com/mzkii/dotfiles/blob/master/homebrew.sh)
`homebrew.sh🍺` installs xcode and homebrew.

Applications placed in `app_list` are also automatically `brew installed`.


#### [cask.sh](https://github.com/mzkii/dotfiles/blob/master/cask.sh)
`cask.sh` installs the app in the application directory.

The application described in `cask_list` is installed automatically.


#### [mas.sh]()
[mas](https://github.com/mas-cli/mas).sh installs applications distributed in AppStore.

This is the **application ID** described in `mas_list`.

Please note that it is an **application ID**, not an application name.

Please refer to the following for finding application ID.

```
$ mas search Xcode
497799835 Xcode
688199928 Docs for Xcode
449589707 Dash 3 - API Docs & Snippets. Integrates with Xcode, Alfred, TextWrangler and many more.
[...]
```


### STEP4
Finally, set the colors and fonts of `iTerm2` and you're done. See [setup.sh](https://github.com/mzkii/dotfiles/blob/master/setup.sh) for details.

🎉 congratulations!! 🎉
![](https://i.imgur.com/8iQogJh.png)
