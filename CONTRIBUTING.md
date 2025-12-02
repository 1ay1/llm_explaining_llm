# Contributing to The Mathematics of Large Language Models 🤝

Thank you for your interest in contributing to this project! This book aims to make the mathematics behind Large Language Models accessible to everyone, and we welcome contributions from the community.

## 📋 Table of Contents

- [Code of Conduct](#code-of-conduct)
- [How Can I Contribute?](#how-can-i-contribute)
- [Getting Started](#getting-started)
- [Style Guidelines](#style-guidelines)
- [Submitting Changes](#submitting-changes)
- [LaTeX Guidelines](#latex-guidelines)
- [Reporting Issues](#reporting-issues)

---

## 📜 Code of Conduct

This project is dedicated to providing a welcoming and inclusive experience for everyone. Please:

- Be respectful and considerate in all interactions
- Welcome newcomers and help them learn
- Focus on constructive feedback
- Respect differing viewpoints and experiences

---

## 🎯 How Can I Contribute?

### 🐛 Fix Typos and Errors

Found a typo, mathematical error, or broken LaTeX? These are always welcome fixes!

### 📝 Improve Explanations

Have a better analogy or clearer way to explain a concept? We'd love to hear it! The goal is to make math accessible.

### 🎨 Add or Improve Diagrams

TikZ diagrams that illustrate concepts are valuable. If you can create or improve visualizations, please contribute!

### 📚 Add Examples

More worked examples help readers understand concepts. Real-world examples connecting to LLMs are especially valuable.

### 🔧 Fix Build Issues

Help ensure the document compiles correctly across different LaTeX distributions.

### 🌍 Translations

Interested in translating the book to another language? Open an issue to discuss!

### 📖 Add Practice Problems

Well-crafted practice problems with solutions help readers test their understanding.

---

## 🚀 Getting Started

### Prerequisites

You'll need a LaTeX distribution installed:

**Windows:**
- [MiKTeX](https://miktex.org/download) or [TeX Live](https://www.tug.org/texlive/)

**macOS:**
- [MacTeX](https://www.tug.org/mactex/)

**Linux:**
```bash
# Ubuntu/Debian
sudo apt-get install texlive-full

# Fedora
sudo dnf install texlive-scheme-full
```

### Clone and Build

```bash
# Fork the repository first, then clone your fork
git clone https://github.com/YOUR_USERNAME/LLM_MATH.git
cd LLM_MATH

# Compile the PDF
pdflatex main.tex
pdflatex main.tex  # Run twice for cross-references
```

### Verify Your Build

Make sure the PDF compiles without errors before making changes.

---

## ✍️ Style Guidelines

This book uses a conversational, engaging style. Please follow these guidelines:

### The Core Philosophy

**Make math feel like a conversation with an enthusiastic friend who knows a lot about AI.**

### Writing Style

✅ **DO:**
- Use relatable analogies (shopping lists, movie ratings, recipes)
- Explain intuition BEFORE formal definitions
- Include "Connection to LLMs" boxes showing real-world applications
- Use encouraging language ("You're getting this!")
- Be conversational (contractions are fine!)

❌ **DON'T:**
- Say "obviously," "trivially," "clearly," or "simply"
- Jump straight to formal mathematics without intuition
- Use jargon without explaining it first
- Write in a dry, textbook style

### Structure for New Concepts

1. **Intuition** - What is it really? (plain language)
2. **Definition** - Formal math with "In plain English" translation
3. **Example** - Concrete numbers and step-by-step work
4. **Connection to LLMs** - Why does ChatGPT care about this?

### Example Transformation

**Before (traditional textbook):**
> "The dot product is defined as: a·b = Σᵢ aᵢbᵢ"

**After (our style):**
> "Imagine rating movies [Action, Romance, Comedy] from 1-10. You rate them [9, 2, 8]. Your friend rates them [8, 3, 9]. How similar are your tastes? Multiply matching ratings and add them up: (9×8) + (2×3) + (8×9) = 150. High number = similar tastes! This is the **dot product**, and it's exactly how ChatGPT measures word similarity."

---

## 📤 Submitting Changes

### 1. Create a Branch

```bash
git checkout -b fix/typo-chapter-3
# or
git checkout -b feature/add-example-svd
```

Use descriptive branch names:
- `fix/` for bug fixes and typos
- `feature/` for new content
- `improve/` for improvements to existing content
- `docs/` for documentation changes

### 2. Make Your Changes

- Keep commits focused and atomic
- Write clear commit messages
- Test that the PDF compiles

### 3. Commit Your Changes

```bash
git add .
git commit -m "Fix typo in eigenvalue explanation (Chapter 2)"
```

### 4. Push and Create a Pull Request

```bash
git push origin your-branch-name
```

Then create a Pull Request on GitHub with:
- Clear description of what you changed
- Why the change is valuable
- Screenshots if you modified diagrams

---

## 📐 LaTeX Guidelines

### File Structure

```
LLM_MATH/
├── main.tex              # Main document (don't modify preamble unless necessary)
├── chapters/
│   ├── chapter01_*.tex   # Individual chapters
│   ├── chapter02_*.tex
│   └── ...
└── figures/              # Images and external figures
```

### Custom Environments

Use our predefined environments:

```latex
% For theorems
\begin{theorem}{Title}{label}
Content here
\end{theorem}

% For definitions  
\begin{definition}{Title}{label}
Content here
\end{definition}

% For examples
\begin{example}
Content here
\end{example}

% For intuition explanations
\begin{intuition}
Content here
\end{intuition}

% For LLM connections
\begin{connection}
Content here
\end{connection}

% For common pitfalls
\begin{warning}
Content here
\end{warning}
```

### TikZ Diagrams

When adding TikZ diagrams:

1. Keep them simple and readable
2. Use consistent styling with existing diagrams
3. Include axis labels and legends
4. Test that they compile correctly

Example style block for consistency:
```latex
\begin{tikzpicture}[
    >=stealth,
    vector/.style={->, thick, maincolor},
    point/.style={circle, fill, inner sep=1.5pt},
    axis/.style={->, gray, thin}
]
% Your diagram here
\end{tikzpicture}
```

### Mathematical Notation

Use our predefined commands:
- `\R`, `\N`, `\Z`, `\Q`, `\C` for number sets
- `\vect{x}` for vectors
- `\mat{A}` for matrices
- `\trans` for transpose (^\top)
- `\norm{x}` for norms
- `\inner{x}{y}` for inner products
- `\prob{X}` for probability
- `\expect{X}` for expectation

---

## 🐛 Reporting Issues

### Bug Reports

When reporting bugs (compilation errors, broken diagrams, etc.):

1. **Check existing issues** to avoid duplicates
2. **Describe the problem** clearly
3. **Include your environment:**
   - Operating system
   - LaTeX distribution and version
   - Any error messages
4. **Provide steps to reproduce**

### Content Issues

For mathematical errors or unclear explanations:

1. **Specify the location** (chapter, section, page number if possible)
2. **Describe the issue** (what's wrong or confusing)
3. **Suggest an improvement** if you have one

### Feature Requests

Want to see new content or improvements?

1. **Check existing issues** for similar requests
2. **Explain the value** of your suggestion
3. **Provide context** on how it fits the book's goals

---

## 🏷️ Issue Labels

- `bug` - Something isn't working
- `typo` - Spelling or grammar fix
- `math-error` - Mathematical mistake
- `enhancement` - New feature or content
- `good-first-issue` - Good for newcomers
- `help-wanted` - Extra attention needed
- `diagram` - Related to TikZ diagrams
- `documentation` - Documentation improvements

---

## ✨ Recognition

All contributors will be acknowledged! Significant contributions may be recognized in the book's acknowledgments section.

---

## 💬 Questions?

- Open an issue for questions about contributing
- Tag your issue with `question`

---

## 🙏 Thank You!

Every contribution, no matter how small, helps make mathematics more accessible. Thank you for being part of this project!

*"The best way to learn is to teach, and the best way to teach is to make it understandable."*

---

**Happy Contributing!** 📚✨