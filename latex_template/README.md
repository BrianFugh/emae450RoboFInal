# LaTeX Assignment Report Template

This folder contains a simple LaTeX template for writing Assignment 2 reports in ENAE450.

## Files in This Template

- `assignment_report_template.tex` - Main LaTeX template file
- `assignment_report_template.pdf` - Example of compiled output
- `screenshot_placeholder.png` - Placeholder image (replace with your actual screenshot)
- `install_latex.sh` - Bash script to automatically install LaTeX on Ubuntu/Debian
- `README.md` - This file

## How to Use This Template

### Option 1: Using Overleaf (Recommended for Beginners)

1. Go to [Overleaf.com](https://www.overleaf.com) and create a free account
2. Click "New Project" → "Upload Project"
3. Upload all files from this folder as a ZIP file
4. Replace `screenshot_placeholder.png` with your actual `rqt_plot` screenshot
5. Fill in your name and add your analysis
6. Download the compiled PDF when finished

### Option 2: Using Local LaTeX Installation

#### Installing LaTeX on Ubuntu/Linux (Automated)

The easiest way is to use the provided setup script:

```bash
# Navigate to this directory
cd ~/enae450_s26/assignment_example_code/latex_template/

# Run the installation script
bash install_latex.sh
```

The script will:
1. Ask for your password (needed for `sudo`)
2. Update your package manager
3. Install texlive packages (~500 MB)
4. Verify the installation

#### Installing LaTeX Manually

If you prefer to install manually or the script doesn't work:

```bash
sudo apt update
sudo apt install -y texlive-latex-base texlive-latex-extra texlive-fonts-recommended
```

#### Compiling the Document

```bash
# Navigate to this directory
cd ~/enae450_s26/assignment_example_code/latex_template/

# Compile the LaTeX document
pdflatex assignment_report_template.tex
```

This will generate `assignment_report_template.pdf`.

## What to Modify

1. **Your Name:**
   - Fill in your name at the top of the document

2. **Problem 1 Section:**
   - Add your commentary and observations about the three spin methods

3. **Problem 2 Section:**
   - Describe your analysis and observations
   - Discuss the random number generation
   - If you attempted the bonus, include your discussion about statistical distributions

4. **Problem 3 Section:**
   - Replace the placeholder screenshot with your actual `rqt_plot` capture
   - Describe your analysis and observations about the sine wave

5. **Screenshot:**
   - Take a screenshot of your `rqt_plot` window showing your sine wave
   - Save it as `screenshot.png` in this same folder
   - Or rename it in the template: change the filename in `\includegraphics{screenshot_placeholder.png}`

## Troubleshooting

**Error: "File screenshot_placeholder.png not found"**
- Make sure your image file is in the same directory as the .tex file
- Check the filename matches exactly (case-sensitive!)

**Error: Missing packages**
- Install additional LaTeX packages: `sudo apt install texlive-full` (large download)
- Or use Overleaf, which has all packages pre-installed

**PDF doesn't update after changes**
- Make sure you recompile: `pdflatex assignment_report_template.tex`
- Clear auxiliary files if needed: `rm *.aux *.log *.toc *.out`

## Getting Help

- LaTeX Basics: https://www.overleaf.com/learn/latex/Learn_LaTeX_in_30_minutes
- Inserting Images: https://www.overleaf.com/learn/latex/Inserting_Images

## Submission

When you're done:
1. Compile your document to create the PDF
2. Submit the PDF (not the .tex file) to ELMS
3. Your Python code should be in your git repository (we'll access it there)
4. Make sure all images appear correctly in the PDF before submitting
