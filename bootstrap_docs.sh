#!/bin/bash

set -e

echo "Creating remaining documentation files..."

cat > PROJECTS/bash-automation/README.md <<'EOF'
# Bash Automation

## Overview

This project contains simple Bash scripts that support Linux administration, basic security tasks, and repeatable terminal workflows in authorized lab environments.

## Purpose

The goal of this project is to strengthen my command-line skills and build practical automation for routine checks, visibility, and documentation.

## Scope

This project is limited to:

- personal lab systems
- authorized environments
- educational and defensive use only

## Skills Practiced

- Bash scripting
- terminal confidence
- automation of simple admin tasks
- repeatable workflows
- readable script documentation

## Project Files

- `scripts/log-review.sh`
- `scripts/service-check.sh`

## Professional Note

All scripts in this project are intended for authorized lab and defensive use only.
EOF

cat > PROJECTS/writeups/README.md <<'EOF'
# Writeups

## Overview

This section contains lab writeups and reporting templates used to document cybersecurity exercises in a clear, structured, and professional format.

## Purpose

The goal of these writeups is to improve technical communication, note-taking, and reporting discipline while documenting hands-on learning in authorized environments.

## Contents

- `lab-report-template.md`
- `sample-writeup.md`

## Professional Note

All writeups are based on authorized lab, educational, and defensive security work only.
EOF

cat > PROJECTS/writeups/lab-report-template.md <<'EOF'
# Lab Report Template

## Lab Information

- **Title:**
- **Date:**
- **Environment:**
- **Objective:**
- **Authorization Confirmed:** Yes

## Tools Used

- 
- 
- 

## Steps Performed

1. 
2. 
3. 

## Observations

- 
- 
- 

## Key Findings

- 
- 
- 

## Lessons Learned

- 
- 
- 

## Follow-Up Actions

- 
- 
- 
EOF

cat > PROJECTS/writeups/sample-writeup.md <<'EOF'
# Sample Lab Writeup

## Title

Basic Linux Hardening Review in a Personal Lab

## Date

Add date here

## Environment

Kali Linux lab VM in an authorized practice environment

## Objective

Review baseline hardening steps, reduce unnecessary exposure, and document observations in a repeatable format.

## Tools Used

- Kali Linux
- Bash
- systemctl
- ss
- ufw

## Steps Performed

1. Reviewed package update status
2. Checked running services
3. Reviewed listening ports
4. Applied basic firewall settings
5. Documented notes and follow-up items

## Observations

- System updates are an important first step before deeper review
- Service visibility helps identify unnecessary exposure
- Firewall defaults improve awareness of allowed traffic
- Clear documentation makes later review easier

## Key Findings

- A small number of checks can quickly improve system visibility
- Hardening is more effective when done as a repeatable process
- Documentation is as important as configuration changes

## Lessons Learned

This lab reinforced the value of simple, consistent hardening habits and clear notes. Even basic reviews improve understanding of how Linux configuration affects security.

## Follow-Up Actions

- Expand hardening checklist
- Add more detailed service review notes
- Improve logging review steps
EOF

cat > PROJECTS/notes/linux-fundamentals.md <<'EOF'
# Linux Fundamentals

## Topics I Am Practicing

- file and directory navigation
- permissions and ownership
- package management
- process and service awareness
- user and group basics
- common administrative commands

## Why It Matters

Linux fundamentals support hardening, scripting, troubleshooting, and security operations work.
EOF

cat > PROJECTS/notes/networking-fundamentals.md <<'EOF'
# Networking Fundamentals

## Topics I Am Practicing

- IP addressing
- subnets
- common ports and protocols
- host discovery
- service exposure
- basic network troubleshooting

## Why It Matters

Networking knowledge is essential for scanning, enumeration, firewall review, and defensive analysis.
EOF

cat > PROJECTS/notes/web-security-notes.md <<'EOF'
# Web Security Notes

## Topics I Am Studying

- HTTP methods
- request and response structure
- authentication basics
- cookies and sessions
- common web risks
- secure input handling concepts

## Why It Matters

Understanding web fundamentals helps build a stronger foundation for application security learning.
EOF

cat > PROJECTS/notes/detection-and-response-notes.md <<'EOF'
# Detection and Response Notes

## Topics I Am Studying

- logging basics
- event review
- failed authentication visibility
- suspicious activity awareness
- investigation mindset
- documentation during review

## Why It Matters

Detection and response knowledge supports blue-team growth and stronger security analysis habits.
EOF

cat > CERTS/README.md <<'EOF'
# Certifications

## Overview

This section tracks certifications, coursework, and other professional development related to my cybersecurity journey.

## Current Focus

I am using this section to document completed certifications, in-progress study, and future certification goals as I continue building practical skills.
EOF

cat > PROJECTS/bash-automation/scripts/log-review.sh <<'EOF'
#!/bin/bash

# log-review.sh
# Review recent authentication failures on an authorized Linux lab system.

set -e

echo "Recent authentication review"
echo

if [ -f /var/log/auth.log ]; then
    sudo grep -i "failed\\|failure" /var/log/auth.log | tail -n 20 || echo "No matching entries found."
else
    echo "/var/log/auth.log not found on this system."
fi
EOF

cat > PROJECTS/bash-automation/scripts/service-check.sh <<'EOF'
#!/bin/bash

# service-check.sh
# Display running services on an authorized Linux lab system.

set -e

echo "Running services"
echo
systemctl list-units --type=service --state=running
EOF

chmod +x PROJECTS/bash-automation/scripts/log-review.sh
chmod +x PROJECTS/bash-automation/scripts/service-check.sh

echo "Done."
echo "Review the generated files, then run:"
echo "git add ."
echo "git commit -m \"Add remaining portfolio docs and scripts\""
echo "git push"
