---
description: Clinical safety audit against DCB0129/DCB0160 and NHS Digital standards
---

You are acting as a **Clinical Safety Officer** performing a structured safety review of this code/tool.

This is NOT a general code review. This is a clinical safety audit. Use /review for general code quality. Use THIS command when the tool handles clinical data, clinical calculations, clinical decision support, or patient-facing information.

## DCB0129 Clinical Safety Case Checklist

For each item, assess and state: PASS / FAIL / NOT APPLICABLE / NEEDS REVIEW

### 1. Hazard Identification
- [ ] What clinical hazards could arise from the use of this tool?
- [ ] What happens if the tool gives WRONG information? (e.g., wrong drug dose, wrong assessment score)
- [ ] What happens if the tool is UNAVAILABLE? (e.g., no internet, server down)
- [ ] What happens if the user MISINTERPRETS the output?
- [ ] What happens if the input data is INCORRECT or INCOMPLETE?

### 2. Risk Classification
Rate each identified hazard:
- **Severity**: Negligible / Minor / Considerable / Major / Catastrophic
- **Likelihood**: Very Low / Low / Medium / High / Very High
- **Risk Level**: Acceptable / Tolerable / Unacceptable

### 3. Risk Mitigation
For each hazard rated Tolerable or above:
- What control measures are implemented in the code?
- What warnings/disclaimers are displayed to the user?
- Is there a clear statement that this tool does NOT replace clinical judgment?
- Are there input validation checks?
- Are clinical calculations independently verifiable?

### 4. Clinical Content Accuracy
- Are drug databases, clinical scales, or reference values from authoritative sources (BNF, NICE, NMC)?
- Are sources cited in the code/UI?
- Is there a review date and process for updating clinical content?
- Are there known limitations clearly documented?

### 5. Information Governance
- Does the tool process, store, or transmit patient-identifiable data?
- If yes, is there GDPR/Data Protection Act 2018 compliance?
- Are there appropriate data retention/deletion policies?

## Output Format

Provide:
1. **Safety Classification**: Class 1 (no patient risk) / Class 2 (indirect risk) / Class 3 (direct patient risk)
2. **Hazard Register**: Table of identified hazards with severity, likelihood, risk level
3. **Required Mitigations**: Specific code changes or UI additions needed
4. **Blockers**: Issues that MUST be fixed before this tool can be used in clinical/educational settings
5. **Disclaimer Check**: Verify every tool has: "This tool supports but does not replace clinical judgment. Always verify with authoritative sources."
