#compdef brightnessctl

# Brightnessctl zsh completion plugin
# For brightnessctl 0.5+

_brightnessctl() {
    local ret=1

    _arguments -s -S \
        '(-l --list)'{-l,--list}'[List devices with available brightness controls]' \
        '(-q --quiet)'{-q,--quiet}'[Suppress output]' \
        '(-p --pretend)'{-p,--pretend}'[Do not perform write operations]' \
        '(-m --machine-readable)'{-m,--machine-readable}'[Produce machine-readable output]' \
        '(-n --min-value)'{-n,--min-value}'[Set minimum brightness (default: 1)]' \
        '(-e --exponent)'{-e,--exponent}'=[Changes percentage curve to exponential]:exponent:' \
        '(-s --save)'{-s,--save}'[Save previous state in a temporary file]' \
        '(-r --restore)'{-r,--restore}'[Restore previous saved state]' \
        '(-h --help)'{-h,--help}'[Print help]' \
        '(-d --device)'{-d,--device}'=[Specify device name]:device:_brightnessctl_devices' \
        '(-c --class)'{-c,--class}'=[Specify device class]:class:(backlight leds)' \
        '(-V --version)'{-V,--version}'[Print version and exit]' \
        '1:operation:(info get max set i g m s)' \
        '2::value:' && ret=0

    return ret
}

_brightnessctl_devices() {
    local -a devs
    devs=(${(f)"$(brightnessctl -l -m 2>/dev/null | cut -d',' -f1)"})
    if (( ${#devs} )); then
        _describe 'device' devs
    else
        _message 'no devices found'
    fi
}

compdef _brightnessctl brightnessctl
