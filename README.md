# portal.tmux

**portal.tmux** is a simple [tmux](https://github.com/tmux/tmux) plugin that makes it easy to open multiple SSH sessions, each in its own tmux window. It's perfect for sysadmins, developers, or anyone who regularly connects to multiple remote servers.

## ✨ Features

- Open SSH sessions in separate tmux windows
- Supports multiple hosts
- Easy to use and configure
- Great for managing remote environments

## 🧩 Requirements

- tmux 2.6+
- [fzf](https://github.com/junegunn/fzf)
- bash (currently is hardcoded for bash)
- SSH installed and available in `$PATH`
  
## 📦 Installation

### Using [TPM (Tmux Plugin Manager)](https://github.com/tmux-plugins/tpm)

1. Add this line to your `.tmux.conf`:

   ```tmux
   set -g @plugin 'barbosa46/portal.tmux'
   ```

2. Press `prefix + I` to install the plugin via TPM.

### Manual Installation

Clone the repository and source it in your `.tmux.conf`:

```bash
git clone https://github.com/barbosa46/portal.tmux ~/.tmux/portal.tmux
```

Then add this line to `.tmux.conf`:

```tmux
run-shell ~/.tmux/portal.tmux/portal.tmux
```

## 🚀 Usage

Portal reads the ssh sessions that you have in your `~/.ssh/config`, and opens a floating [fzf](https://github.com/junegunn/fzf) window, allowing you to search and then select with `Enter` key. 
There is still no option to specify the file path. (TODO)

You can open the available ssh hosts by pressing `prefix + a`.


Each host will be opened in a new tmux window running an SSH session.


## ⚙️ Configuration

There is still no configuration, working on that. 


## TODO

In the future, I want to support opening multiple sessions at a time, and add a custom command like:

```bash
portal <host1> <host2> <host3> ...
```



## 📄 License

MIT License. See `LICENSE` file for details.
