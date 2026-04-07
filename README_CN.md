# brightnessctl-completion

[brightnessctl](https://github.com/Hummer12007/brightnessctl) (v0.5+) 的 Zsh 补全插件，适用于 [Oh My Zsh](https://ohmyz.sh/)。

## 功能

- 补全所有选项（`--list`、`--device`、`--class`、`--save`、`--restore` 等）
- 补全操作（`info`、`get`、`max`、`set` 及其缩写）
- 从 `brightnessctl -l` 动态补全设备名
- 设备类补全（`backlight`、`leds`）

## 安装

### Oh My Zsh

```bash
git clone https://github.com/mejistus/brightnessctl-completion \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/brightnessctl-completion
```

在 `~/.zshrc` 中添加：

```zsh
plugins=(... brightnessctl-completion)
```

### 手动安装

```zsh
source /path/to/brightnessctl-completion.plugin.zsh
```

## 使用

```bash
brightnessctl --<TAB>        # 显示所有选项
brightnessctl <TAB>          # 显示操作：info, get, max, set
brightnessctl --device <TAB> # 列出可用设备
brightnessctl --class <TAB>  # 显示：backlight, leds
```

## 支持的选项

| 选项 | 描述 |
|------|------|
| `-l, --list` | 列出设备 |
| `-q, --quiet` | 静默输出 |
| `-p, --pretend` | 模拟运行 |
| `-m, --machine-readable` | 机器可读输出 |
| `-n, --min-value` | 设置最小亮度 |
| `-e, --exponent` | 指数百分比曲线 |
| `-s, --save` | 保存状态 |
| `-r, --restore` | 恢复状态 |
| `-d, --device` | 指定设备名 |
| `-c, --class` | 指定设备类 |
| `-V, --version` | 打印版本 |

## 要求

- Zsh 5.0+
- brightnessctl 0.5+

## 许可证

MIT
