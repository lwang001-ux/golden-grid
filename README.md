# Golden Grid

Generative art tool using golden ratio subdivisions. Your colors in perfect ratio.

## Quick Start

### Local Development
```bash
npx serve .
```
Open http://localhost:3000

### Deploy to Vercel
```bash
# Install Vercel CLI (one time)
npm i -g vercel

# Deploy
cd golden-grid
vercel
```

Or connect your GitHub repo to Vercel for automatic deployments.

## Making Edits

Everything is in a single file: `index.html`

### Key Sections (search for these comments):

| Line | Section | What it controls |
|------|---------|------------------|
| ~8 | `<style>` | All CSS styles |
| ~460 | `@media` | Mobile responsive styles |
| ~530 | `PALETTES` | Built-in color palettes |
| ~560 | `hexToHsl` | Color harmony functions |
| ~700 | `#hints` | Keyboard shortcuts display |
| ~750 | `.about-card` | About modal content |
| ~850 | `generateGrid` | Grid generation algorithm |
| ~1050 | `playRegenerate` | Sound effects |
| ~1200 | `drawShape` | Shape drawing (rect, circle, etc.) |
| ~1550 | `exportImage` | Export functions |
| ~1950 | Event listeners | Button/keyboard handlers |

### Common Edits:

**Add a new palette:**
```javascript
// Find PALETTES array (~line 530)
{ name: "my-palette", colors: ['#FF0000','#00FF00','#0000FF','#FFFF00','#FF00FF'] }
```

**Change export sizes:**
```javascript
// Find export handlers (~line 1970)
exportImage(p, WIDTH, HEIGHT, 'filename');
```

**Add a new shape:**
1. Add option to `<select id="shape">` in HTML
2. Add case in `drawShape()` function (~line 1200)

**Modify About content:**
Search for `<div class="about-card">` (~line 750)

**Change keyboard shortcuts:**
Search for `p.keyPressed` (~line 1920)

## File Structure

```
golden-grid/
├── index.html      # Everything (HTML + CSS + JS)
├── vercel.json     # Vercel config
├── package.json    # npm config
└── README.md       # This file
```

## Tech Stack

- **p5.js** - Creative coding library
- **Web Audio API** - Sound synthesis
- **localStorage** - Palette persistence
- **No build step** - Just HTML/CSS/JS
