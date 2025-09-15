![Annex A to Automated Checks](assets/images/annex-checks.svg)

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

