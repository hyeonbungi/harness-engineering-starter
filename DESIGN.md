---
version: "starter"
name: "Project Design Baseline"
description: "Generic frontend design baseline for projects that have not chosen a product identity yet."
---

# Project Design Baseline

This file is the global placeholder design system for agent-assisted GUI work. Replace it after the project has a real brand, product tone, and target interface.

Scoped GUI surfaces may add their own `DESIGN.md` files. A scoped design file should extend this global file and document only the local differences, such as platform constraints, component variants, density, or interaction patterns.

## Visual Theme And Atmosphere

- Quiet, utilitarian, and easy to scan.
- Prefer working interfaces over marketing composition.
- Use clear hierarchy, stable spacing, and restrained color.
- Avoid decorative gradients, background blobs, and one-note palettes.
- Do not use this placeholder as a final brand identity.

## Color Palette And Roles

| Token | Hex | Role |
| --- | --- | --- |
| `background` | `#FAFAF8` | App background |
| `surface` | `#FFFFFF` | Main panels and content surfaces |
| `surface-muted` | `#F1F3F1` | Secondary surfaces |
| `text-primary` | `#1E2420` | Primary text |
| `text-secondary` | `#5D675F` | Secondary text |
| `border` | `#D8DED8` | Dividers and controls |
| `primary` | `#2F6F5E` | Main action |
| `primary-hover` | `#275B4E` | Main action hover |
| `accent` | `#B8793A` | Sparse emphasis |
| `danger` | `#B54343` | Destructive or error states |
| `warning` | `#B88728` | Warning states |
| `success` | `#3E7C49` | Success states |

## Typography Rules

- Use system fonts until a project typeface is selected.
- Body copy should be direct and task-focused.
- Letter spacing should remain `0`.
- Do not scale font size with viewport width.
- Reserve large display type for real hero surfaces.

| Role | Size | Weight | Line height |
| --- | --- | --- | --- |
| Page title | 32px | 700 | 1.2 |
| Section title | 22px | 650 | 1.3 |
| Panel title | 16px | 650 | 1.4 |
| Body | 15px | 400 | 1.6 |
| Small | 13px | 400 | 1.5 |
| Label | 12px | 650 | 1.4 |

## Component Styling

### Buttons

- Primary buttons use `primary` background and white text.
- Secondary buttons use white background, border, and `text-primary`.
- Destructive buttons use `danger`.
- Icon-only actions should use familiar icons and accessible labels.
- Button text must fit on mobile without clipping.

### Inputs

- Inputs use white background, `border`, and 8px radius or less.
- Focus state should be visible through border color and outline.
- Validation messages should be close to the field and written in user language.

### Cards And Panels

- Use cards only for repeated items, modals, or genuinely framed tools.
- Do not place cards inside cards.
- Keep radius at 8px or less unless the project-specific design system changes it.
- Avoid decorative shadows; use borders and spacing first.

### Navigation

- Navigation should expose current location clearly.
- Use tabs for parallel views and breadcrumbs for hierarchy.
- Avoid hiding core workflows behind vague labels.

## Layout Principles

- Start with the real workflow, not a landing page.
- Use responsive constraints for boards, grids, toolbars, counters, and tiles.
- Dense operational screens should prioritize scanning, comparison, and repeated action.
- Text and controls must not overlap at mobile or desktop widths.
- Empty states should explain the next useful action, not the product vision.

## Depth And Elevation

- Default surfaces use borders rather than shadows.
- Use elevation only for popovers, menus, dialogs, and floating toolbars.
- Do not use blur-heavy or translucent surfaces unless the product specifically needs them.

## Do And Don't

Do:

- Keep UI copy concrete and action-oriented.
- Use stable spacing and predictable control placement.
- Show completion, loading, disabled, and error states.
- Prefer familiar controls over custom metaphors.

Don't:

- Use decorative orbs, bokeh blobs, or placeholder brand gradients.
- Build marketing pages when the user asked for an app or tool.
- Hide unfinished behavior behind polished visuals.
- Let generated text describe the UI's own features or shortcuts inside the product.

## Responsive Behavior

- Mobile layouts should preserve the primary action and current status.
- Tables should become stacked lists only when comparison is not the core task.
- Touch targets should be at least 44px when the interface is primarily mobile.
- Long labels should wrap cleanly before they overflow.

## Agent Prompt Guide

When building UI before a real brand exists, use this frame:

```text
Use the applicable DESIGN.md hierarchy as a temporary design baseline. Start with the root DESIGN.md, then apply any scoped DESIGN.md files for the target path. Build a quiet, task-focused interface with neutral surfaces, restrained primary actions, clear hierarchy, and stable responsive behavior. Do not invent a final brand identity.
```
