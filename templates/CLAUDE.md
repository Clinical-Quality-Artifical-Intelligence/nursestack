# [Your Tool Name]

## gstack
Use the /browse skill from gstack for all web browsing. Never use mcp__claude-in-chrome__* tools.

Available gstack skills:
- `/plan-ceo-review` — Founder/product review
- `/plan-eng-review` — Engineering architecture review
- `/review` — Paranoid code review
- `/ship` — Release engineer (GitHub only)
- `/browse` — Browser-based QA and testing
- `/qa` — Diff-aware QA testing
- `/setup-browser-cookies` — Import browser sessions
- `/retro` — Weekly retrospective

If gstack skills aren't working, run: `cd .claude/skills/gstack && ./setup`

## NurseStack
Healthcare-specific commands for nurse citizen developers:

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
2. `/plan-eng-review` — Is the architecture sound?
3. Build the feature
4. `/review` — General code quality
5. `/review-clinical-safety` — Clinical safety audit
6. `/qa-streamlit` — Test the Streamlit app
7. `/ship-hf` — Push to GitHub + Hugging Face Spaces
8. `/retro` — Weekly reflection
