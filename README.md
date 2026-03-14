<p align="center">
  <img src="https://img.shields.io/badge/Built_by-Nurse_Citizen_Developers-blue?style=for-the-badge" alt="Built by Nurse Citizen Developers">
  <img src="https://img.shields.io/badge/For-Claude_Code-purple?style=for-the-badge" alt="For Claude Code">
  <img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge" alt="MIT License">
  <img src="https://img.shields.io/badge/NMC-Aligned-red?style=for-the-badge" alt="NMC Aligned">
</p>

<p align="center">
  <a href="https://github.com/Clinical-Quality-Artifical-Intelligence/nursestack/actions/workflows/lint.yml">
    <img src="https://github.com/Clinical-Quality-Artifical-Intelligence/nursestack/actions/workflows/lint.yml/badge.svg" alt="Lint">
  </a>
  <a href="https://github.com/Clinical-Quality-Artifical-Intelligence/nursestack/actions/workflows/test.yml">
    <img src="https://github.com/Clinical-Quality-Artifical-Intelligence/nursestack/actions/workflows/test.yml/badge.svg" alt="Test">
  </a>
</p>

# 🩺 NurseStack

**Claude Code workflows built by nurses, for nurses.**

**24 healthcare-specific slash commands** that give Claude Code a clinical brain — covering every stage of nursing: student assignments, clinical practice, academic research, dissertation writing, NHS funding bids, and tool development. All in one install.

> *"Technology built by those who understand the ward is technology that works on the ward."*

Created by [Clinical Quality Artificial Intelligence](https://github.com/Clinical-Quality-Artifical-Intelligence) — open-source AI tools for UK nursing education and clinical practice.

---

## ⚡ All 24 Commands

### 🏥 Core Clinical Commands
| Command | Role | What it does |
|---|---|---|
| `/plan-clinical-review` | Senior Clinical Nurse | NMC-aligned product review — are you building the right clinical tool? |
| `/review-clinical-safety` | Clinical Safety Officer | DCB0129/DCB0160 safety audit — hazards, risk classification, mitigation |
| `/qa-streamlit` | QA Engineer | Test Streamlit apps locally or on Hugging Face Spaces |
| `/ship-hf` | Release Engineer | Ship to GitHub AND Hugging Face Spaces in one command |
| `/review-fhir` | FHIR Specialist | FHIR IG profiling, terminology binding, UK NHS interoperability |

### 🎓 Student Nurse Commands
| Command | Role | What it does |
|---|---|---|
| `/plan-assignment` | Academic Tutor | Deconstruct the question, map to NMC, produce full assignment structure |
| `/review-reflection` | Practice Educator | Audit a placement reflection against Gibbs, Johns, or Driscoll |
| `/review-clinical-reasoning` | Clinical Educator | Audit ADPIE documentation — Assessment through Evaluation |
| `/scaffold-drug-calc` | Pharmacology Tutor | Step-by-step drug calculations with mandatory safety checks |

### 👩‍🏫 Educator Commands
| Command | Role | What it does |
|---|---|---|
| `/plan-lesson` | Curriculum Designer | Lesson plan mapped to NMC Standards with Bloom's Taxonomy outcomes |
| `/review-simulation` | Simulation Specialist | Clinical accuracy + pedagogy audit for simulation scenarios |
| `/review-curriculum` | NMC Audit Expert | Map any curriculum to NMC, NHS 10-Year Plan, and digital health standards |
| `/review-feedback` | Assessment Specialist | Structure high-quality formative and summative feedback |

### 🩺 Newly Qualified Nurse Commands
| Command | Role | What it does |
|---|---|---|
| `/plan-revalidation` | Revalidation Advisor | Build your NMC revalidation portfolio — all 8 requirements |
| `/review-preceptorship` | Preceptorship Lead | Review goals against NHS Preceptorship Framework 2022 |
| `/plan-escalation` | Patient Safety Lead | SBAR escalation structure + NEWS2 urgency + escalation pathway |

### 🔬 Research & Dissertation Commands
| Command | Role | What it does |
|---|---|---|
| `/review-casp` | Research Specialist | Apply correct CASP checklist (RCT, SR, qualitative, cohort) — auto-selected |
| `/plan-pico` | Research Librarian | PICO/PICo/PECO framework + MeSH/CINAHL search strategy |
| `/plan-literature-review` | Systematic Review Expert | PRISMA flow, data extraction, thematic synthesis, chapter structure |
| `/plan-dissertation` | Dissertation Supervisor | Full chapter structure, milestone timeline, methodology guidance |
| `/review-evidence` | EBP Specialist | CEBM levels + GRADE assessment + common interpretation error checks |
| `/plan-funding` | Grant Writer | NIHR / HEE / RCN Foundation application structure + PPI + plain English |
| `/review-research-ethics` | Ethics Advisor | NHS REC / IRAS / GDPR / vulnerable populations / DCB0129 compliance |

### 🛠️ Tool Development
| Command | Role | What it does |
|---|---|---|
| `/scaffold-tool` | Streamlit Developer | Generate a complete new Streamlit nursing tool from scratch |

---

## 🎯 Who This Is For

| Persona | Commands to Start With |
|---|---|
| **Student nurse** | `/plan-assignment`, `/review-reflection`, `/review-casp` |
| **Nurse educator / practice educator** | `/plan-lesson`, `/review-curriculum`, `/review-simulation` |
| **Newly qualified nurse** | `/plan-escalation`, `/review-preceptorship`, `/plan-revalidation` |
| **Nurse researcher / PhD student** | `/plan-pico`, `/plan-dissertation`, `/review-casp`, `/plan-funding` |
| **Nurse citizen developer** | `/scaffold-tool`, `/plan-clinical-review`, `/ship-hf` |

---

## 📦 Install

### Prerequisite
**[Claude Code](https://docs.anthropic.com/en/docs/claude-code)** — Anthropic's AI coding CLI.

### Install NurseStack

**Option A: Global install** (available in all Claude Code sessions)
```bash
git clone https://github.com/Clinical-Quality-Artifical-Intelligence/nursestack.git /tmp/nursestack && /tmp/nursestack/install.sh && rm -rf /tmp/nursestack
```

**Option B: Project install** (committed to your repo, teammates get it)
```bash
git clone https://github.com/Clinical-Quality-Artifical-Intelligence/nursestack.git /tmp/nursestack && /tmp/nursestack/install.sh --project && rm -rf /tmp/nursestack
```

**Option C: Manual** — Copy any files from `commands/` to `~/.claude/commands/` (global) or `.claude/commands/` (project).

---

## 🔬 Demo: Student Nurse Writing a Dissertation

```
You: /plan-pico
     I want to study whether simulation-based learning improves clinical
     confidence in student nurses on their first placement.

Claude: PICO Framework:
        P: Pre-registration student nurses in Year 1 BSc programmes (UK)
        I: High-fidelity simulation learning (≥4 hours, structured debrief)
        C: Standard clinical placement without simulation exposure
        O: Clinical confidence (measured by validated scale e.g. Lasater)

        Search Strategy:
        CINAHL: (student nurs*) AND (simulation OR "high-fidelity") AND (confidence)
        MeSH: "Nursing Students" AND "Patient Simulation" AND "Clinical Competence"
        [Full search strings with Boolean operators provided]

You: /review-casp
     [pastes abstract of an RCT on simulation]

Claude: CASP Tool: RCT Checklist (11 questions)
        Quality Score: 8/11 — Moderate quality
        Key limitation: No blinding possible (nature of simulation)
        Suitable for dissertation inclusion: YES WITH CAVEATS
        [Full 11-question analysis]

You: /plan-dissertation
     BSc Year 3, systematic review, 10,000 words

Claude: Chapter Structure with word counts...
        Milestone timeline to submission...
        Common pitfalls checklist...
```

---

## 📐 NMC Standards Alignment

| Platform | Commands That Cover It |
|---|---|
| 1. Being an accountable professional | `/plan-clinical-review`, `/review-feedback`, `/plan-revalidation` |
| 2. Promoting health and preventing ill health | `/plan-lesson`, `/review-curriculum` |
| 3. Assessing needs and planning care | `/review-clinical-reasoning`, `/plan-pico`, `/plan-assignment` |
| 4. Providing and evaluating care | `/scaffold-drug-calc`, `/qa-streamlit`, `/plan-escalation` |
| 5. Leading and managing nursing care | `/review-preceptorship`, `/plan-funding` |
| 6. Improving safety and quality of care | `/review-clinical-safety`, `/review-evidence`, `/review-casp` |
| 7. Coordinating care | `/review-fhir`, `/review-research-ethics` |

---

## 🏗️ Project Structure

```
nursestack/
├── README.md
├── LICENSE
├── CONTRIBUTING.md
├── install.sh
├── commands/
│   ├── plan-clinical-review.md
│   ├── review-clinical-safety.md
│   ├── qa-streamlit.md
│   ├── ship-hf.md
│   ├── review-fhir.md
│   ├── plan-assignment.md
│   ├── review-reflection.md
│   ├── review-clinical-reasoning.md
│   ├── scaffold-drug-calc.md
│   ├── plan-lesson.md
│   ├── review-simulation.md
│   ├── review-curriculum.md
│   ├── review-feedback.md
│   ├── plan-revalidation.md
│   ├── review-preceptorship.md
│   ├── plan-escalation.md
│   ├── review-casp.md
│   ├── plan-pico.md
│   ├── plan-literature-review.md
│   ├── plan-dissertation.md
│   ├── review-evidence.md
│   ├── plan-funding.md
│   ├── review-research-ethics.md
│   └── scaffold-tool.md
├── templates/
│   ├── CLAUDE.md
│   ├── CLAUDE-student.md
│   ├── CLAUDE-educator.md
│   └── CLAUDE-nqn.md
└── examples/
    └── workflow-demo.md
```

---

## 🤝 Contributing

NurseStack is built by the **Nurse Citizen Developer** community. See [CONTRIBUTING.md](CONTRIBUTING.md) for our clinical contribution standards.

- **New commands** — Open an issue first with the clinical problem and NMC alignment
- **Clinical safety issues** — Label as `clinical-safety` for immediate priority review
- **Improvements** — Better prompts, wider clinical coverage, more realistic examples

---

## 👥 About

### Clinical Quality Artificial Intelligence
A UK-based open-source organisation building free AI tools for nursing education and clinical practice.

**Founder:** Lincoln Gombedza, RNLD — Registered Learning Disability Nurse | Practice Educator | Nurse Citizen Developer

**Key Collaborator:** Kelly Thobekile Ncube, RN — Senior Lecturer in Adult Nursing (SFHEA) | Global Health Lecturer Volunteer Fellow

### Powered By
**[Claude Code](https://docs.anthropic.com/en/docs/claude-code)** by Anthropic — the AI coding assistant that powers it all.

---

## 📄 License

MIT. Free to use, modify, and distribute.

---

<p align="center">
  <strong>Built by nurses who code. For nurses who care.</strong>
</p>
