# Hermes Skins 🎨

<p align="center">
  <img src="https://img.shields.io/badge/skins-39-FF6B9D" alt="39 skins">
  <img src="https://img.shields.io/badge/hermes%20agent-ready-00E5FF" alt="Hermes Agent">
  <img src="https://img.shields.io/badge/license-MIT-green" alt="MIT License">
  <img src="https://img.shields.io/badge/PRs-welcome-orange" alt="PRs welcome">
</p>

A curated collection of **39 premium skins** for [Hermes Agent](https://hermes-agent.nouresearch.com) — spanning hacker terminals, editorial refinement, retro arcade, dark enterprise, and minimalist design.

Every skin is a YAML file that controls the full CLI appearance: banner colors, spinner animations, branding text, tool prefixes, and completion menu palettes. Drop one in, switch with `/skin <name>`, and your terminal transforms instantly.

---

## ✨ Preview

| Skin | Vibe | Preview |
|------|------|---------|
| `vaporwave` | Synthwave outrun — hot pink, cyan, purple sunset | `▶ VAPOR` · pink/cyan borders |
| `darkweb` | .onion noir — deep red on near-black | `◉ DARK` · crimson/burgundy |
| `phreak` | Blue box era — Bell System tones | `♪ PHREAK` · deep blue/cyan |
| `glitch` | Corrupted signal — scanline decay | `⚠ GLITCH` · chartreuse/magenta |
| `cypher` | Cypherpunk green — PGP encryption | `🔑 CYPHER` · encryption green/teal |
| `cyberpunk` | Classic neon green, hot pink hacker edge | `⡇ CYBER` · matrix green/hot pink |
| `matrix` | Green phosphor on black, code rain | `0 MATRIX` · monochrome green |
| `neon` | Electric pink/cyan glow on deep dark | `⚡ NEON` · electric pink/cyan |
| `retro` | Vintage amber/teal CRT warm glow | `◉ RETRO` · amber/teal CRT |
| `cosmic` | Deep space purple, nebula pink, star cyan | `✦ COSMIC` · purple/cyan/stars |
| `brutalism` | Raw concrete, stark black/white | `■ BRUTE` · orange/charcoal |
| `luxury` | Dark monochrome, gold accents | `♦ LUXE` · black/gold/ivory |
| `editorial` | Magazine serif, structured clarity | `¶ EDIT` · saddle brown/teal |
| `elegant` | Graceful pastels, soft sophistication | `✿ Elegant` · lavender/pink/teal |
| `futuristic` | Tech-forward cyan/silver, sleek | `⚡ FUTUR` · cyan/lime/silver |
| `vibrant` | Lively multicolor, bold energy | `★ VIBE` · coral/yellow/blue |
| `cafe` | Warm brown/cream, cozy coffeehouse | `☕ Cafe` · mocha/cream/teal |
| `fantasy` | Epic purple/gold, magical premium | `⚔ FANTASY` · royal purple/gold |
| `clean` | Pure simplicity, restrained color | `○ Clean` · blue-gray/teal |
| `dashboard` | Dark cloud-platform, data viz colors | `◈ DASH` · cyan/orange/dark |
| `neobrutalism` | Bold neon-orange, raw high-contrast | `⬥ Neo` · orange/yellow/cyan |
| `terracotta` | Sun-baked clay, warm cream on fired earth | `🏺 Terracotta` · terracotta/cream |
| `professional` | Navy/steel, polished business-ready | `◆ Professional` · blue/navy/steel |
| `premium` | Apple-inspired, clean precision | `● Premium` · system blue/green/red |
| `modern` | Editorial serif, minimal typography | `§ Modern` · gray/blue/silver |
| `contemporary` | Dark bento grid, current-era minimal | `◈ Contemporary` · teal/cyan/navy |
| `sleek` | Clean lines, intentional palette | `─ Sleek` · steel blue/teal |
| `shadcn` | Minimal monochrome, warm neutral | `○ shadcn` · zinc/indigo/warm |
| `minimal` | Stripped whitespace, maximum focus | `· Minimal` · barely-there gray |
| `codex` | Radical blank canvas, pure edge-to-edge | `■ Codex` · pure black/white |
| `claude` | Warm stone journal, ivory parchment | `✍ Claude` · stone/amber/cream |
| `metal-slug` | 16-bit arcade blue/red, retro power | `★ METAL` · cobalt/red/yellow |
| `lavi` | Lavender-pink gradient, soft elegant | `✿ Lavi` · lavender/pink |
| `ayu-dark` | Warm amber-charcoal, professional | `☕ Ayu` · amber/charcoal/blue |
| `aura` | Purple neon, calm precise | `✦ AURA` · violet/mint/blue |
| `moonlight` | Deep indigo-cyan, nocturnal focus | `◐ Moonlight` · indigo/cyan/amber |
| `poimandres` | Deep navy-mint, hermetic clarity | `◆ Poimandres` · navy/mint |
| `poimandres-accessible` | High-contrast navy-mint | `◇ Poimandres-A11Y` · high-contrast |
| `poimandres-turquoise-expanded` | Navy-mint-turquoise, richer palette | `● Poimandres-Turq` · expanded teal |

---

## 📦 Installation

### Automatic (recommended)

```bash
git clone https://github.com/josephtrilles/hermes-skins.git ~/hermes-skins
cp ~/hermes-skins/skins/*.yaml ~/.hermes/skins/
```

### Selective

```bash
# Copy only the skins you want
cp ~/hermes-skins/skins/vaporwave.yaml ~/.hermes/skins/
cp ~/hermes-skins/skins/matrix.yaml ~/.hermes/skins/
```

### Via Hermes Mod (GUI)

1. Open [Hermes Mod](https://hermes-agent.nouresearch.com/docs/user-guide/features/skins#hermes-mod--visual-skin-editor)
2. Launch Skin Studio
3. Click **Import** and select a `.yaml` file from `skins/`
4. Click **Activate** to set it as current

---

## 🎮 Usage

Switch skins inside any Hermes session:

```bash
/skin                     # show current skin + list all available
/skin vaporwave           # switch to synthwave outrun
/skin darkweb             # switch to .onion noir
/skin cypher              # switch to cypherpunk green
/skin matrix              # switch to code rain
```

Set a default skin in `~/.hermes/config.yaml`:

```yaml
display:
  skin: aura
```

---

## 🧩 Skin Structure

Each skin is a standalone YAML file with three sections:

```yaml
name: my-skin              # unique identifier
description: ...           # short description

colors:                    # 22 color tokens
  banner_border: "#..."
  banner_title: "#..."
  # ... see full spec below

spinner:                   # animated CLI spinner
  waiting_faces: [...]     # faces while waiting for API
  thinking_faces: [...]    # faces during model reasoning
  thinking_verbs: [...]    # verbs shown in spinner messages
  wings: [...]             # decorative brackets

branding:                  # agent identity
  agent_name: "..."
  welcome: "..."
  goodbye: "..."
  response_label: "..."
  prompt_symbol: "..."
  help_header: "..."

tool_prefix: "┊"           # character before tool output lines
```

See the [Hermes Skin Documentation](https://hermes-agent.nouresearch.com/docs/user-guide/features/skins) for the complete key reference.

---

## 🛠️ Creating Custom Skins

1. Copy an existing skin as a starting point:
   ```bash
   cp ~/.hermes/skins/aura.yaml ~/.hermes/skins/my-skin.yaml
   ```

2. Edit the file — change colors, spinner faces, branding text.

3. Switch to it:
   ```bash
   /skin my-skin
   ```

4. Set as default in `~/.hermes/config.yaml`:
   ```yaml
   display:
     skin: my-skin
   ```

> **Tip:** Missing keys automatically inherit from the `default` built-in skin, so you only need to specify what you want to override.

### Color Reference

| Key | Description |
|-----|-------------|
| `banner_border` | Panel border around startup banner |
| `banner_title` | Title text in banner |
| `banner_accent` | Section headers (Available Tools, etc.) |
| `banner_dim` | Muted text (separators, labels) |
| `banner_text` | Body text (tool names, skill names) |
| `ui_accent` | General UI accent color |
| `ui_label` | UI labels and tags |
| `ui_ok` | Success indicators |
| `ui_error` | Error indicators |
| `ui_warn` | Warning indicators |
| `prompt` | Interactive prompt text |
| `input_rule` | Horizontal rule above input |
| `response_border` | Agent response box border |
| `status_bar_bg` | Status bar background |
| `status_bar_text` | Status bar text |
| `status_bar_strong` | Status bar emphasized text |
| `status_bar_dim` | Status bar muted text |
| `status_bar_good/warn/bad/critical` | Status bar health colors |
| `session_label/border` | Session display colors |
| `selection_bg` | Selection highlight background |
| `completion_menu_*` | Tab-completion menu colors |
| `voice_status_bg` | Voice mode background |

---

## 🤝 Contributing

Contributions are welcome! If you've created a skin that fits the collection:

1. Fork the repository
2. Add your `.yaml` file to `skins/`
3. Update the preview table in `README.md`
4. Submit a pull request

### Guidelines

- Each skin must define **all 22 color keys** (no missing values)
- Include **6–8 waiting faces**, **4–6 thinking faces**, **6–8 thinking verbs**, **3 wing pairs**
- Complete **branding** section (agent_name, welcome, goodbye, response_label, prompt_symbol, help_header)
- File size should stay under **80 lines**
- Use **dark backgrounds** (CLI terminals are almost universally dark-mode)
- Maintain **WCAG AA contrast** between text and background colors
- Give your skin a **distinct visual character** — avoid duplicating existing palettes

---

## 📄 License

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.

---

## 🙏 Credits

- [Hermes Agent](https://hermes-agent.nouresearch.com) by Nous Research — the agent platform these skins are built for
- [TypeUI.sh](https://typeui.sh) — design language inspiration for several skins
- All contributors and skin authors

---

<p align="center">
  <sub>Made with ❤️ for the Hermes Agent community</sub>
</p>
