# brightnessctl-completion

Zsh completion plugin for [brightnessctl](https://github.com/Hummer12007/brightnessctl) (v0.5+). Designed for [Oh My Zsh](https://ohmyz.sh/).

## Features

- Complete all options (`--list`, `--device`, `--class`, `--save`, `--restore`, etc.)
- Complete operations (`info`, `get`, `max`, `set` and their short aliases)
- Dynamic device name completion from `brightnessctl -l`
- Device class completion (`backlight`, `leds`)

## Installation

### Oh My Zsh

```bash
git clone https://github.com/<your-user>/brightnessctl-completion \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/brightnessctl-completion
```

Add to `~/.zshrc`:

```zsh
plugins=(... brightnessctl-completion)
```

### Manual

```zsh
source /path/to/brightnessctl-completion.plugin.zsh
```

## Usage

```bash
brightnessctl --<TAB>        # Show all options
brightnessctl <TAB>          # Show operations: info, get, max, set
brightnessctl --device <TAB> # List available devices
brightnessctl --class <TAB>  # Show: backlight, leds
```

## Supported Options

| Option | Description |
|--------|-------------|
| `-l, --list` | List devices |
| `-q, --quiet` | Suppress output |
| `-p, --pretend` | Dry run |
| `-m, --machine-readable` | Machine-readable output |
| `-n, --min-value` | Set minimum brightness |
| `-e, --exponent` | Exponential percentage curve |
| `-s, --save` | Save state |
| `-r, --restore` | Restore state |
| `-d, --device` | Specify device name |
| `-c, --class` | Specify device class |
| `-V, --version` | Print version |

## Requirements

- Zsh 5.0+
- brightnessctl 0.5+

## License

MIT
