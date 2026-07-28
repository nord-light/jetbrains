# Nord Light Theme for JetBrains IDEs

A light theme for JetBrains IDEs (PhpStorm, IntelliJ IDEA, WebStorm, etc.) based on the [Nord](https://www.nordtheme.com/) color palette, adapted for light backgrounds.

## Installation

Available on the [JetBrains Marketplace](https://plugins.jetbrains.com/plugin/29846-nord-light).

Install directly from your IDE:
1. Settings → Plugins → Marketplace
2. Search for "Nord Light"
3. Click Install and restart the IDE

### Activate the theme

Settings → Appearance & Behavior → Appearance → Theme → "Nord Light"

## Project Structure

```
nord-light/
├── src/
│   ├── META-INF/
│   │   └── plugin.xml           # Plugin registration
│   ├── themes/
│   │   └── nord-light.xml       # Editor color scheme (syntax highlighting)
│   └── nord-light.theme.json    # UI theme (toolbar, panels, menus, etc.)
├── outputs/                     # Build output directory
├── build.sh                     # Build script
└── README.md
```

## Build

### Requirements

- macOS/Linux with `zip` command (no Java required)

### Build Command

```bash
./build.sh
```

This generates `outputs/nord-light.jar`.

## Color Palette

### Base Colors (Nord Snow Storm)

These colors are used for backgrounds and UI elements:

| Name | Hex | Usage |
|------|-----|-------|
| Nord 4 | `#D8DEE9` | Selection, borders, secondary backgrounds |
| Nord 5 | `#E5E9F0` | Sidebar, toolbar, inactive backgrounds |
| Nord 6 | `#ECEFF4` | Main editor background |

### Text Colors (Nord Polar Night)

| Name | Hex | Usage |
|------|-----|-------|
| Nord 0 | `#2E3440` | Main text, identifiers |
| Nord 1 | `#3B4252` | Secondary text |
| Nord 2 | `#434C5E` | Tertiary text |
| Nord 3 | `#4C566A` | Comments base, punctuation |

### Accent Colors Comparison

The original Nord accent colors are designed for dark backgrounds. For the light theme, we darkened them significantly to ensure proper contrast and readability.

| Element | Original Nord | Nord Light | Description |
|---------|---------------|------------|-------------|
| Classes/Types | `#8FBCBB` (nord7) | `#1C7473` | Teal - class names, type references |
| Functions | `#88C0D0` (nord8) | `#0C7482` | Cyan - function declarations and calls |
| Tags | `#81A1C1` (nord9) | `#4B6C8C` | Light blue - HTML/XML tags, operators |
| Keywords | `#5E81AC` (nord10) | `#3B5E85` | Blue - language keywords |
| Strings | `#A3BE8C` (nord14) | `#577140` | Green - string literals |
| Numbers | `#B48EAD` (nord15) | `#865B7F` | Purple - numeric literals |
| Constants | `#EBCB8B` (nord13) | `#7F6614` | Yellow - constants, enums |
| Fields | `#D08770` (nord12) | `#975943` | Orange - instance/static fields |
| Errors | `#BF616A` (nord11) | `#AE4750` | Red - errors (darkened for contrast) |

### Color Rationale

- **Darkening factor:** ~25-40% darker than original Nord colors
- **Saturation:** Maintained or slightly increased for vibrancy
- **Contrast ratio:** Verified by calculation (WCAG relative luminance). Text colors (`#2E3440`/`#3B4252`/`#4C566A`) exceed 6:1 against every background. Accent colors and the muted gray meet >=4.5:1 (WCAG AA) against both the `#E5E9F0` and `#ECEFF4` backgrounds.

## Supported Languages

The theme includes syntax highlighting for:

- PHP (including PHPDoc)
- JavaScript / TypeScript
- HTML / XML
- CSS / SCSS / SASS
- JSON / YAML
- SQL
- Markdown
- Twig / Blade templates
- And more...

## Credits

- Based on [Nord Theme](https://www.nordtheme.com/) by [Sven Greb](https://github.com/svengreb)
- Visual Studio Code version: [nord-light/vscode](https://github.com/nord-light/vscode)

## License

MIT License

## Author

Created by [Vincenzo Petrucci](https://nahi.me/) ([@nahime0](https://github.com/nahime0)) as part of [Illegal Studio](https://illegal.studio/).
