# Quick Start Guide

This is a static documentation website for the ABET Assessment Application. Follow the steps below to get started.

## 📦 Quick Start (Local Development)

### Option 1: Using Node.js
```bash
npm install
npm start
```
Then open http://localhost:8000 in your browser.

### Option 2: Using Python
```bash
# Navigate to src directory
cd src

# Python 3.x
python -m http.server 8000

# Python 2.x
python -m SimpleHTTPServer 8000
```

### Option 3: Using Ruby
```bash
cd src
ruby -run -ehttpd . -p8000
```

## 🚀 Deployment

### GitHub Pages
1. Push code to GitHub repository
2. Go to repository Settings → Pages
3. Select "Deploy from branch"
4. Choose "main" branch and "src" folder (or root, depending on structure)
5. Site will be published at `https://username.github.io/repo-name`

### Netlify
```bash
npm install -g netlify-cli
netlify deploy --prod --dir=src
```

### Vercel
```bash
npm install -g vercel
vercel --prod
```

### Traditional Web Host (FTP/SFTP)
1. Upload all files from `src/` directory to your web host's public directory
2. Ensure index.html is accessible at the root
3. Site will be available at your domain

## 📁 Project Structure

```
src/
├── index.html              # Main landing page
├── styles.css              # Global styles
├── docs.css                # Documentation styles
├── robots.txt              # Search engine instructions
├── sitemap.xml             # SEO sitemap
├── README.md               # Documentation
└── docs/
    ├── getting-started.html
    ├── user-guide.html
    ├── api-reference.html
    └── deployment.html
```

## ✨ Features

✅ **Responsive Design** - Works on all devices  
✅ **SEO Optimized** - Includes sitemap and robots.txt  
✅ **Fast Loading** - Lightweight static site  
✅ **Accessible** - WCAG compliant  
✅ **Easy to Customize** - Simple HTML and CSS  
✅ **Multiple Pages** - Complete documentation structure  

## 🎨 Customization

### Change Colors
Edit `:root` variables in `src/styles.css`:
```css
--primary-color: #2c3e50;
--secondary-color: #3498db;
--accent-color: #e74c3c;
```

### Update Content
Edit HTML files directly:
- `src/index.html` - Main page
- `src/docs/*.html` - Documentation pages

### Add New Pages
1. Create new HTML file in `src/docs/`
2. Copy structure from existing page
3. Add link in navigation
4. Update sitemap.xml

## 🔍 Browser Support

- Chrome/Edge 90+
- Firefox 88+
- Safari 14+
- Mobile browsers (iOS Safari, Chrome Mobile)

## 📊 Performance

- **Page Load**: < 1 second
- **No external dependencies** (CSS-only styling)
- **Fully optimized** for static hosting

## 🆘 Troubleshooting

### Site doesn't display correctly
- Check that all files are in the `src/` directory
- Verify file paths are correct
- Clear browser cache (Ctrl+Shift+Del or Cmd+Shift+Delete)

### Links not working
- Verify relative paths are correct
- Check that linked files exist
- Ensure proper file extensions (.html)

### Mobile layout issues
- Open DevTools (F12)
- Check responsive design mode
- Verify viewport meta tag is present

## 📞 Support

For questions about:
- **Content**: Edit the relevant HTML file
- **Styling**: Modify CSS files
- **Deployment**: See deployment section above
- **SEO**: Update sitemap.xml and robots.txt

## 📝 License

See LICENSE file for details.

## 🔗 Links

- [Full Documentation](src/README.md)
- [Getting Started Guide](src/docs/getting-started.html)
- [Deployment Guide](src/docs/deployment.html)

---

**Created**: March 2026  
**Version**: 1.0.0
