# Contributing to NurseStack

Thank you for wanting to contribute to NurseStack! Every contribution from the nurse citizen developer community makes these tools better for nurses and patients everywhere.

## What We're Looking For

We welcome contributions of:

- **New commands** — A new slash command that serves a genuine clinical or academic nursing need
- **Improvements to existing commands** — Better prompts, more complete checklists, wider clinical coverage
- **Bug reports** — Especially if a command gives clinically inappropriate or inaccurate advice
- **New templates** — Persona-specific CLAUDE.md templates for different nursing specialties
- **Documentation improvements** — Better examples, clearer explanations, more realistic demos

## Clinical Contribution Standards

Because NurseStack is used by nurses in clinical and educational contexts, contributions must meet a higher bar than typical software projects:

### Every New Command Must

1. **Have a clear clinical or educational purpose** — Who uses this? In what situation? What does it help them do?

2. **State its NMC alignment** — Which NMC Standards of Proficiency platform(s) does it address? Include this in the YAML frontmatter description and in the command body.

3. **Include appropriate safety disclaimers** — Any command touching clinical practice must include: *"This tool supports but does not replace clinical judgment."*

4. **Be evidence-based** — Clinical content must reference authoritative sources (BNF, NICE, NMC, NHS England, SIGN). Do not include clinical guidance that cannot be verified.

5. **Use UK NHS context** — NurseStack is primarily for UK nurses. Use UK terminology, UK drug names, UK escalation pathways, NMC standards (not NCLEX or US-centric content unless explicitly for international nurses).

## How to Submit a New Command

### 1. Open an Issue First

Before writing the command, open a GitHub issue with:
- **Title**: `[NEW COMMAND] /command-name — short description`
- **Clinical problem**: What nursing challenge does this solve?
- **Target audience**: Student / educator / NQN / registered nurse / researcher?
- **NMC alignment**: Which platform(s)?
- **Draft approach**: How would the command work?

This lets us discuss before you invest time writing it.

### 2. Write the Command

Commands live in `commands/` and are Markdown files with YAML frontmatter:

```markdown
---
description: One-line description of what this command does
---

You are acting as a [clinical role] helping [who]...

## [Section 1]
...

## Output Format
[clear, structured output template]
```

**Naming convention**: Use `verb-noun` format:
- `plan-*` — for planning/structuring tasks
- `review-*` — for auditing/reviewing existing work
- `scaffold-*` — for generating boilerplate/templates

### 3. Test Your Command

Before submitting:
- Run the command in Claude Code with at least 3 realistic scenarios
- Verify clinical accuracy — check against BNF, NICE, NMC standards
- Check that output is appropriately nuanced and does not overstate certainty
- Ensure no patient identifiable data is embedded in examples

### 4. Submit a Pull Request

PR title: `feat: add /command-name — short description`

PR description must include:
- What the command does
- The 3 clinical problems it solves
- NMC platform alignment
- The scenarios you tested it with
- Any clinical content sources cited

## Reporting Clinical Issues

**If a command gives clinically unsafe, incorrect, or misleading advice — this is a safety issue.**

Please raise it immediately as a GitHub issue with the label `clinical-safety`:
- Title: `[CLINICAL SAFETY] /command-name — description of issue`
- Describe the scenario and the problematic output
- Suggest the correct clinical guidance with source

We treat clinical safety issues as the highest priority.

## Code of Conduct

NurseStack contributors are expected to:
- Be respectful of all nursing backgrounds, specialties, and experience levels
- Acknowledge the diversity of nursing practice across different care settings
- Centre patient safety and patient dignity in all contributions
- Support nurse citizen developers at all skill levels

---

*Built by nurses who code. For nurses who care.*
