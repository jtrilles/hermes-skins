# Contributing to Hermes Skins

Thank you for your interest in contributing! This repository is a community collection of high-quality skins for Hermes Agent.

## How to Add a Skin

1. **Fork** this repository
2. **Create your skin** as a `.yaml` file in the `skins/` directory
3. **Follow the quality standards** (see below)
4. **Update the preview table** in `README.md` with your skin's entry
5. **Submit a pull request**

## Quality Standards

Every skin must pass all of these checks:

### Colors
- Define **all 22 color keys** — no missing values
- Use **dark backgrounds** (CLI terminals are almost universally dark-mode)
- Maintain **good contrast** between text and background colors (aim for WCAG AA)
- Ensure `status_bar_bg` differs from `status_bar_text` by at least 4:1 contrast

### Spinner
- **6–8** `waiting_faces` — characters cycled while waiting for API response
- **4–6** `thinking_faces` — characters cycled during model reasoning
- **6–8** `thinking_verbs` — thematic verbs shown in spinner messages
- **3** `wings` pairs — decorative brackets around the spinner

### Branding
- `agent_name` — short, memorable, with an emoji prefix
- `welcome` — one-line startup message
- `goodbye` — one-line exit message
- `response_label` — label on the response box header
- `prompt_symbol` — single character or emoji before user input
- `help_header` — header for `/help` command output

### Size
- Keep the file **under 80 lines**

### Originality
- Give your skin a **distinct visual character**
- Do not duplicate an existing palette
- If inspired by an existing theme, credit the source in your PR description

## Skin File Template

```yaml
name: my-skin
description: Short one-line description.
colors:
  banner_border: "#..."
  banner_title: "#..."
  banner_accent: "#..."
  banner_dim: "#..."
  banner_text: "#..."
  ui_accent: "#..."
  ui_label: "#..."
  ui_ok: "#..."
  ui_error: "#..."
  ui_warn: "#..."
  prompt: "#..."
  input_rule: "#..."
  response_border: "#..."
  status_bar_bg: "#..."
  status_bar_text: "#..."
  status_bar_strong: "#..."
  status_bar_dim: "#..."
  status_bar_good: "#..."
  status_bar_warn: "#..."
  status_bar_bad: "#..."
  status_bar_critical: "#..."
  session_label: "#..."
  session_border: "#..."
  selection_bg: "#..."
  completion_menu_bg: "#..."
  completion_menu_current_bg: "#..."
  completion_menu_meta_bg: "#..."
  completion_menu_meta_current_bg: "#..."
  voice_status_bg: "#..."
spinner:
  waiting_faces: []
  thinking_faces: []
  thinking_verbs: []
  wings: []
branding:
  agent_name: ""
  welcome: ""
  goodbye: ""
  response_label: ""
  prompt_symbol: ""
  help_header: ""
tool_prefix: "┊"
```

## Code of Conduct

Be respectful, constructive, and kind. This is a community project — every contribution makes it better.
