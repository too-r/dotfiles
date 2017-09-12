These are my configuration files for Linux.

Installing the lemonbar config:

```bash
#Install patched lemonbar
pacaur -S lemonbar-xft-git
#Get the bar source
cd ~/ && git clone https://github.com/too-r/bar.git
cd ~/bar
#Build a binary
cargo build --release
mkdir ~/Scripts && cd ~/Scripts
#Link to the binary - execute this symlink in your WM's config
ln -s /home/will/Programming/Projects/bar/target/release/bar bar
```
Now just download the lemonconfig.toml file and place it at ~/.config/lemonhelper/config.toml

![ScreenShot](http://i.imgur.com/yeInRIn.png)
