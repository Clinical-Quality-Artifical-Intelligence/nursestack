# [Your Tool Name]

## NurseStack
Healthcare-specific Claude Code commands for nurse citizen developers.

Available commands:
- `/plan-clinical-review` — NMC Standards-aligned clinical product review
- `/review-clinical-safety` — DCB0129/DCB0160 clinical safety audit
- `/qa-streamlit` — Streamlit + Hugging Face Spaces QA
- `/ship-hf` — Ship to GitHub + Hugging Face Spaces
- `/review-fhir` — FHIR IG compliance audit

## Project Context
- This is a Streamlit app deployed to Hugging Face Spaces
- Clinical disclaimer MUST be present: "This tool supports but does not replace clinical judgment."
- All student-facing tools must map to NMC Standards of Proficiency (2018)

## Workflow
1. `/plan-clinical-review` — Is this the right thing to build for nurses?
2. Build the feature
3. `/review-clinical-safety` — Clinical safety audit
4. `/qa-streamlit` — Test the Streamlit app
5. `/ship-hf` — Push to GitHub + Hugging Face Spaces
