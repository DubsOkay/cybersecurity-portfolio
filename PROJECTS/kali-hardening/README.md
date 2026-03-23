# Kali Hardening

## Overview

This project documents my approach to improving the security posture of a Kali Linux system in an authorized lab environment. The focus is on basic hardening, system hygiene, service review, update routines, and safer default configurations.

## Purpose

The goal of this project is to practice security-minded Linux administration and build repeatable hardening habits that can be documented clearly and improved over time.

## Scope

This project is limited to:

- personal lab systems
- authorized environments
- educational and defensive use only

## Objectives

This project is designed to help me practice:

- secure system setup habits
- package update routines
- service review and minimization
- firewall configuration basics
- SSH configuration awareness
- logging and audit awareness
- documentation of hardening steps

## Project Files

- `hardening-checklist.md` — checklist of baseline hardening tasks
- `setup-notes.md` — notes on configuration decisions and observations
- `scripts/update-and-audit.sh` — update and basic audit helper script
- `scripts/basic-firewall.sh` — simple firewall configuration script for lab use

## Hardening Areas

The main hardening areas covered in this project include:

- updating packages and reviewing installed software
- reducing unnecessary services
- improving firewall defaults
- reviewing user and privilege settings
- checking file permissions where appropriate
- improving awareness of logs and system activity
- documenting all changes for repeatability

## Methodology

My approach to Kali hardening is based on small, repeatable steps:

1. update the system
2. review installed packages and active services
3. reduce unnecessary exposure
4. apply basic host firewall rules
5. document changes and rationale
6. revisit the configuration and improve it over time

## Key Lessons

This project helps reinforce that hardening is not a single command or tool. It is a process of reducing risk, reviewing defaults, documenting changes, and understanding how system configuration affects security.

## Professional Note

All work in this project is performed in authorized lab environments only. Any scripts or configurations included here are intended for educational and defensive purposes.

## Next Improvements

Planned improvements for this project include:

- expanding the hardening checklist
- adding service review examples
- documenting SSH-related configuration considerations
- improving logging and audit coverage
- refining scripts for safer automation
