#!/bin/bash
set -e

mkdir -p docs .github/workflows

# mkdocs.yml
cat > mkdocs.yml <<'YAML'
site_name: ISO 27001 Lead Auditor Project (Simulation)
site_description: End-to-end ISO 27001 audit simulation and continuous compliance concept
theme:
  name: material
  features:
    - navigation.instant
    - navigation.expand
    - content.code.copy
    - search.highlight
    - toc.integrate
  palette:
    - scheme: default
      primary: blue
      accent: blue
markdown_extensions:
  - admonition
  - toc:
      permalink: true
  - tables
  - footnotes
  - attr_list

nav:
  - Home: index.md
  - Company Profile: 01-company-profile.md
  - ISMS Scope: 02-isms-scope.md
  - Evidence Reviewed: 03-evidence-reviewed.md
  - Audit Checklist: 04-audit-checklist.md
  - Audit Report: 05-audit-report.md
  - Statement of Applicability: 06-statement-of-applicability.md
  - Risk Register (Sample): 07-risk-register-sample.md
  - Compliance Dashboard: 08-compliance-dashboard.md
  - Annex A Checklist: 09-annex-a-checklist.md
YAML

# README.md
cat > README.md <<'MD'
# ISO 27001 Lead Auditor Project (Simulation)

This repo contains a complete ISO 27001 lead auditor simulation project:
- Company context (healthcare SaaS)
- ISMS scope & evidence reviewed
- Clause-mapped audit checklist
- Formal audit report with CAPA
- Statement of Applicability + Risk Register
- Continuous compliance dashboard concept
- Annex A checklist mapping

## Local Preview
pip install mkdocs mkdocs-material
mkdocs serve

## Deploy
Pushing to main will trigger GitHub Actions to publish the site to GitHub Pages.

> All content is fictitious and for demonstration only.
MD

# docs/index.md
cat > docs/index.md <<'MD'
# ISO 27001 Lead Auditor Project (Simulation)

**Goal:** Demonstrate lead-auditor competency end-to-end.

Highlights:
- Healthcare SaaS scenario
- ISO/IEC 27001:2022 clauses + Annex A mapping
- Audit report with CAPA
- Compliance dashboard concept

Start here:
- [Company Profile](01-company-profile.md)
- [Audit Report](05-audit-report.md)
- [Compliance Dashboard](08-compliance-dashboard.md)
MD

# (Repeat this style for docs/01-company-profile.md … docs/09-annex-a-checklist.md)
# -- You can paste the content from my earlier messages into here the same way --

# docs/01-company-profile.md
cat > docs/01-company-profile.md <<'MD'
# Company Profile & Context

**Organization:** FinWell Health Services (FHS)  
**Industry:** Healthcare SaaS  
**HQ:** Austin, Texas (USA)  
**Size:** ~300 employees  
**Platform:** AWS-hosted EHR, claims, secure data exchange

## Business Drivers
- HIPAA/GDPR compliance
- Customer assurance
- EU expansion
- Risk reduction (PHI + payments)

## Key Risks
- Confidentiality: unauthorized PHI access  
- Integrity: claim tampering  
- Availability: downtime of EHR  
- Regulatory: fines & damage

## In-Scope Departments
- IT (infra, IAM, logging, backups, crypto)  
- HR (on/offboarding, training, records)  
- Finance (claims, payroll, access reviews)
MD

# docs/02-isms-scope.md
cat > docs/02-isms-scope.md <<'MD'
# ISMS Scope

> “The ISMS of FinWell covers all systems/personnel managing patient records and insurance claims in AWS, plus HR/Finance systems. Marketing/public sites are out of scope.”

## Boundaries
- Included: AWS prod/staging, EHR, Finance, HRIS, IAM, SIEM/logging, backups  
- Excluded: Marketing website, blogs

## Interested Parties
Patients, providers, insurers, regulators, staff, cloud vendors

## Assumptions
Centralized SSO/MFA, segregated AWS accounts, incident/change mgmt in place
MD

# docs/03-evidence-reviewed.md
cat > docs/03-evidence-reviewed.md <<'MD'
# Evidence Reviewed

**Period:** Aug–Sep 2025  
**Methods:** Doc review, sampling, interviews

- ISMS Policy v1.2  
- Risk methodology + register  
- AWS IAM reports  
- Finance access logs  
- Encryption configs (S3/RDS)  
- CloudTrail logging/retention  
- Backup test reports  
- HR onboarding/offboarding SOPs  
- Security training logs
MD

# docs/04-audit-checklist.md
cat > docs/04-audit-checklist.md <<'MD'
# Audit Checklist (Excerpt)

| Clause | Requirement | Evidence | Conformity | Notes |
|---|---|---|---|---|
| 5.2 | InfoSec Policy | ISMS Policy v1.2 | ✓ | CEO-signed |
| 6.1.2 | Risk Methodology | Method + Register | ✗ | Inconsistent |
| 7.2 | Competence | Training logs | ✓ | Annual complete |
| 7.5 | Document control | SOP versions | ✗ | Outdated |
| A.9.2 | Access reviews | IAM + Finance logs | ✗ | No quarterly review |
| A.10 | Cryptography | S3/RDS configs | ✓ | Enforced |
| A.12 | Logging | CloudTrail | ✓ | Centralized |
| A.12 (Backups) | Restore tests | Test results | ~ | Annual only |
MD

# docs/05-audit-report.md
cat > docs/05-audit-report.md <<'MD'
# ISO 27001 Internal Audit Report

**Org:** FHS  
**Date:** Sep 2025  
**Lead Auditor:** <Your Name>  

## Scope
AWS-hosted EHR, Finance, HR.  

## Findings
- **Major (6.1.2):** Risk method not applied org-wide → fix in 90 days  
- **Minor (A.9):** No Finance access reviews → quarterly req’d  
- **Minor (7.5):** Outdated procedures → update annually  
- **Obs (A.12):** Backups tested annually → recommend quarterly  

## CAPA
| Finding | Action | Owner | Due |
|---|---|---|---|
| 6.1.2 | Standardize risk process | CISO | 90d |
| A.9 | Add quarterly reviews | Finance Mgr | 60d |
| 7.5 | Update docs | Compliance | 30d |
MD

# docs/06-statement-of-applicability.md
cat > docs/06-statement-of-applicability.md <<'MD'
# Statement of Applicability (Excerpt)

| Control | Status | Rationale |
|---|---|---|
| A.5.1 Policies | ✓ | Governance |
| A.5.23 Cloud services | ✓ | AWS primary |
| A.9.1 Access policy | ✓ | Role-based control |
| A.9.2 Access mgmt | ✓ | On/offboarding |
| A.10 Crypto | ✓ | PHI protection |
| A.12 Logging | ✓ | Forensics |
| A.17 Continuity | ✓ | Backups/BCP |
| A.7 Physical security | ✗ | Cloud provider scope |
MD

# docs/07-risk-register-sample.md
cat > docs/07-risk-register-sample.md <<'MD'
# Risk Register (Sample)

| ID | Asset | Threat | Vuln | CIA | Risk | Treatment | Residual | Owner |
|---|---|---|---|---|---|---|---|---|
| R1 | Finance app | Priv misuse | No access review | C,I | High | Add quarterly reviews | Med | Finance Mgr |
| R2 | EHR DB | Data exfil | Weak crypto | C | Med | Enforce encryption | Low | IT Sec |
| R3 | Backups | Ransomware | Infrequent tests | A | Med | Quarterly restore test | Low | IT Ops |
MD

# docs/08-compliance-dashboard.md
cat > docs/08-compliance-dashboard.md <<'MD'
# Continuous Compliance Dashboard

## Example Checks
- A.9: List users w/o MFA, flag stale accounts  
- A.10: Verify S3/RDS encryption  
- A.12: Confirm CloudTrail active, backups <90d  

## Sample Metrics
| Control | Status | % | Issues |
|---|---|---:|---|
| A.9 | ⚠️ | 85% | 3 users no MFA |
| A.10 | ✗ | 70% | 2 unencrypted S3 |
| A.12 | ✓ | 100% | - |

## Pseudocode
```python
def users_without_mfa(iam_client):
    for user in iam_client.list_users()['Users']:
        if not iam_client.list_mfa_devices(UserName=user['UserName'])['MFADevices']:
            print(user['UserName'])

