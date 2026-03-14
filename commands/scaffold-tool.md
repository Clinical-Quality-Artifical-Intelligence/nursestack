---
description: Generate a new Streamlit nursing tool from scratch with full folder structure, boilerplate code, and HF Spaces config
---

You are acting as a **Senior Python/Streamlit Developer and Clinical Informaticist** creating a new nursing tool from scratch for the CQAI platform.

## What This Command Does

Generates the complete file structure, boilerplate code, and configuration for a new Streamlit app ready for:
1. Local development
2. Deployment to Hugging Face Spaces

## Step 1 — Gather Requirements

Before generating, confirm:
- **Tool name**: (used for folder name, HF Spaces slug, GitHub repo name)
- **Clinical purpose**: What does it do? Who is it for?
- **Input**: What does the nurse/student enter? (text, numbers, dropdowns, file upload?)
- **Output**: What does the tool produce? (text, table, score, chart, PDF?)
- **Data**: Does it need a local data file? (drug database, assessment scales, question bank?)
- **NMC Platform**: Which proficiency platform does it serve?

## Step 2 — Generate File Structure

```
[tool-name]/
├── streamlit_app.py          # Main application entry point
├── requirements.txt          # Python dependencies
├── README.md                 # GitHub + HF Spaces README (with YAML front matter)
├── .gitignore
├── .github/
│   └── workflows/
│       └── sync-to-hf.yml   # Auto-deploy to HF Spaces on push
└── [data/]                   # Optional: local data files
    └── [data_file.json]
```

## Step 3 — Generate Each File

### streamlit_app.py

```python
"""
[Tool Display Name]
Clinical Quality Artificial Intelligence — CQAI
Built by nurses, for nurses.

NMC Alignment: Platform [X] — [description]
"""

import streamlit as st

# ── Page config ────────────────────────────────────────────────
st.set_page_config(
    page_title="[Tool Name] | CQAI",
    page_icon="🩺",
    layout="wide",
    initial_sidebar_state="expanded"
)

# ── Clinical disclaimer (MANDATORY — never remove) ─────────────
st.warning(
    "⚕️ **Clinical Disclaimer**: This tool supports but does not replace "
    "clinical judgment. Always verify information with authoritative sources "
    "(BNF, NICE guidelines, NMC standards). For clinical emergencies, follow "
    "local protocols and escalate appropriately."
)

# ── Sidebar ──────────────────────────────────────────────────
with st.sidebar:
    st.image("https://img.shields.io/badge/Built_by-Nurse_Citizen_Developers-blue", 
             use_column_width=True)
    st.title("🩺 [Tool Name]")
    st.markdown("**NMC Alignment:** Platform [X]")
    st.markdown("---")
    st.caption("Built by [Clinical Quality Artificial Intelligence](https://github.com/Clinical-Quality-Artifical-Intelligence)")

# ── Main content ────────────────────────────────────────────
st.title("🩺 [Tool Display Name]")
st.markdown("[Brief description of what this tool does and who it's for.]")
st.markdown("---")

# ── Input section ───────────────────────────────────────────
with st.container():
    st.subheader("📋 Input")
    # TODO: Add your input widgets here
    # Examples:
    # user_input = st.text_input("Enter...")  
    # selected = st.selectbox("Choose...", options=[...])
    # value = st.number_input("Enter value", min_value=0, max_value=100)
    
    submitted = st.button("🔍 Generate", type="primary")

# ── Output section ──────────────────────────────────────────
if submitted:
    with st.container():
        st.subheader("📊 Results")
        # TODO: Add your output/results here
        st.success("✅ Results will appear here")
        
# ── Footer ──────────────────────────────────────────────────
st.markdown("---")
st.caption(
    "🩺 [Tool Name] v0.1.0 | "
    "[CQAI](https://github.com/Clinical-Quality-Artifical-Intelligence) | "
    "NMC Platform [X] | MIT License"
)
```

### requirements.txt

```
streamlit>=1.45.0
# Add your dependencies below:
# pandas>=2.0.0
# plotly>=5.0.0
```

### README.md (with HF Spaces YAML)

```markdown
---
title: [Tool Display Name]
emoji: 🩺
colorFrom: blue
colorTo: indigo
sdk: streamlit
sdk_version: "1.45.0"
app_file: streamlit_app.py
pinned: false
license: mit
---

# 🩺 [Tool Display Name]

[Description]

**NMC Alignment**: Platform [X] — [description]

**Built by**: [Clinical Quality Artificial Intelligence](https://github.com/Clinical-Quality-Artifical-Intelligence)

> ⚕️ This tool supports but does not replace clinical judgment.
```

### .github/workflows/sync-to-hf.yml

```yaml
name: Sync to Hugging Face Spaces

on:
  push:
    branches: [main]

jobs:
  sync:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
        with:
          fetch-depth: 0
          lfs: true
      - name: Push to Hugging Face
        env:
          HF_TOKEN: ${{ secrets.HF_TOKEN }}
        run: |
          git remote add hf https://[tool-name]:$HF_TOKEN@huggingface.co/spaces/NurseCitizenDeveloper/[tool-name]
          git push hf main --force
```

## Step 4 — Post-Generation Checklist

After generating the files:
- [ ] Clinical disclaimer is present and unedited
- [ ] NMC Platform alignment is specified
- [ ] `requirements.txt` lists ALL dependencies
- [ ] README has HF Spaces YAML front matter
- [ ] `.gitignore` excludes: `__pycache__/`, `.venv/`, `.streamlit/secrets.toml`, `*.pyc`
- [ ] GitHub repo created under Clinical-Quality-Artifical-Intelligence org
- [ ] `HF_TOKEN` secret added to GitHub repo settings
- [ ] Run `/review-clinical-safety` before first deployment

## Step 5 — Local Development

```bash
# Create virtual environment
python3 -m venv .venv && source .venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Run locally
streamlit run streamlit_app.py --server.port=8501

# Then run /qa-streamlit to test before shipping
```
