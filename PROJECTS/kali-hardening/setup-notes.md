# Kali Hardening Setup Notes

## Purpose

These notes document configuration decisions, observations, and lessons learned while hardening a Kali Linux system in an authorized lab environment.

## Environment

- Platform: Kali Linux
- Usage: personal lab and educational practice
- Scope: authorized systems only

## Initial Goals

My goals for this setup were to:

- improve system hygiene
- reduce unnecessary exposure
- build repeatable hardening habits
- document changes clearly
- better understand Linux security basics

## Areas Reviewed

During setup and hardening, I reviewed:

- system updates
- installed packages
- running services
- firewall basics
- user accounts and privileges
- SSH necessity and configuration awareness
- file permissions
- logging visibility

## Notes and Observations

### System updates
I began by reviewing package status and applying updates so the system reflected current packages available in the configured repositories.

### Installed packages
I reviewed installed software to better understand what was present by default and what might not be needed for my specific lab goals.

### Running services
I checked active services to identify anything unnecessary and to better understand what was starting by default.

### Firewall awareness
I reviewed firewall status and basic host filtering concepts to reduce unnecessary exposure and to support safer defaults.

### User and privilege review
I reviewed local users, group membership, and general privilege considerations to build better awareness of account security and access control.

### SSH review
I considered whether SSH was needed for the lab scenario and treated remote access as something to enable only when required.

### File permissions
I reviewed how file and directory permissions affect system security and why overly broad access can create avoidable risk.

### Logging and audit awareness
I explored where useful logs are stored and why reviewing them matters when checking for errors, failed access attempts, or unusual behavior.

## Lessons Learned

This project reinforced that hardening is an ongoing process rather than a one-time task. Small configuration decisions, regular review, and good documentation all contribute to stronger security practices.

## Next Improvements

I plan to improve this project by:

- adding command examples with explanations
- documenting service review in more detail
- improving firewall documentation
- expanding notes on logging and audit checks
- refining scripts used for updates and review

## Professional Note

All work documented here is limited to authorized lab systems and is intended for educational and defensive security practice only.
