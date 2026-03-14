# NurseStack Workflow Demo

This example walks through building a **Drug Interactions Checker** using the full NurseStack workflow.

---

## Step 1: Clinical Product Review

```
You: /plan-clinical-review
     I want to build a drug interactions checker that lets student
     nurses enter two medications and see if they interact.

Claude:
  Clinical Product Direction:
  "Drug interactions checker" is the feature. The real job is helping
  student nurses develop pharmacological reasoning. A lookup tool is
  useful but doesn't build competence.

  The 10-star version:
  - Enter 2+ medications → show interaction severity + mechanism
  - Explain WHY they interact (receptor, enzyme, pathway)
  - Link to BNF entries for deeper learning
  - Quiz mode: "Would you give these together?" with explanation
  - Case scenarios: "Mrs Jones is on warfarin and has been prescribed..."

  NMC Alignment: Platform 3 (Assessing needs), Platform 4 (Providing care)
  Patient Safety: Class 2 — educational tool but wrong information
                  could influence future clinical decisions
  Health Equity: NEUTRAL — ensure drug names include generic names
                 not just brand names (accessibility for international nurses)
```

## Step 2: Engineering Review

```
You: /plan-eng-review

Claude:
  Architecture:
  ┌──────────┐    ┌──────────────┐    ┌───────────┐
  │ Streamlit │───▶│ interactions │───▶│ BNF data  │
  │    UI     │    │   engine     │    │ (local)   │
  └──────────┘    └──────────────┘    └───────────┘
                         │
                  ┌──────▼──────┐
                  │  quiz mode  │
                  │  generator  │
                  └─────────────┘

  Key decisions:
  - Local data (no API dependency — works offline on placement)
  - Severity levels: Avoid / Caution / Monitor / No known interaction
  - Session state for quiz mode progress tracking
```

## Step 3: Build

*You implement the feature...*

## Step 4: Code Review

```
You: /review

Claude:
  Issues found:
  1. MEDIUM: No input sanitisation on drug name search — could crash
     on special characters
  2. LOW: Quiz state not cleared when switching between tabs
  3. STYLE: Inconsistent error message formatting
```

## Step 5: Clinical Safety Audit

```
You: /review-clinical-safety

Claude:
  Safety Classification: Class 2 (indirect patient risk)

  Hazard Register:
  | Hazard | Severity | Likelihood | Risk |
  |--------|----------|------------|------|
  | Incorrect "no interaction" result | Major | Medium | Tolerable |
  | Missing interaction in database | Considerable | High | Unacceptable |
  | Student relies on tool instead of BNF | Minor | High | Tolerable |

  BLOCKER: "No known interaction" must state "Based on limited local
  database. Always verify with the current BNF."

  Required: Add data source date and coverage limitations to footer.
```

## Step 6: QA

```
You: /qa-streamlit

Claude:
  App: drug-interactions-checker
  URL: localhost:8501
  Status: PARTIAL

  Clinical Accuracy Spot-Check:
  - Warfarin + Aspirin interaction: PASS (correctly shows "Avoid")
  - Metformin + Insulin interaction: PASS (correctly shows "Caution")

  Issues:
  1. MEDIUM: Quiz mode shows answer before user responds on slow reruns
  2. LOW: Search doesn't find paracetamol when typed as "Paracetamol" (case issue)

  Recommendation: Fix case sensitivity, then ship
```

## Step 7: Ship

```
You: /ship-hf

Claude:
  Ship Report: drug-interactions-checker
  GitHub:     ✅ Pushed f7a2bc1 to origin/main
  HF Spaces:  ✅ Pushed to hf/main — building
  Verification: ✅ App live at huggingface.co/spaces/NurseCitizenDeveloper/drug-interactions
```

---

## Key Takeaway

The workflow caught:
- A product direction issue (lookup vs. learning tool)
- A clinical safety blocker (misleading "no interaction" message)
- A usability bug (case sensitivity in drug search)

All before a single student nurse used the tool. That's NurseStack.
