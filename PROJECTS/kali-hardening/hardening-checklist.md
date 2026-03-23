# Kali Hardening Checklist

## Purpose

This checklist documents baseline hardening steps I review for Kali Linux systems in authorized lab environments. It is designed to support repeatable setup, safer defaults, and better security hygiene.

## Scope

This checklist is for:

- personal lab systems
- authorized environments
- educational and defensive use only

## Baseline Hardening Checklist

### 1. Update the system
- [ ] Refresh package lists
- [ ] Upgrade installed packages
- [ ] Remove unused packages
- [ ] Clean package cache where appropriate
- [ ] Reboot after major updates if needed

### 2. Review installed software
- [ ] Check which packages are installed
- [ ] Identify unnecessary tools or services
- [ ] Remove software not needed for current lab goals
- [ ] Verify important packages come from trusted repositories

### 3. Review users and privileges
- [ ] Confirm active user accounts
- [ ] Review group membership
- [ ] Ensure only expected users have sudo privileges
- [ ] Use strong, unique passwords in lab systems
- [ ] Lock or remove unused accounts where appropriate

### 4. Check SSH configuration
- [ ] Confirm whether SSH is needed
- [ ] Disable SSH if not required
- [ ] Review authentication settings
- [ ] Avoid weak or default configurations
- [ ] Restrict access where practical in the lab

### 5. Minimize exposed services
- [ ] List enabled services
- [ ] Stop services not needed for current tasks
- [ ] Disable unnecessary services from starting at boot
- [ ] Review listening ports after changes

### 6. Configure a basic firewall
- [ ] Review current firewall status
- [ ] Set default inbound policy appropriately
- [ ] Allow only required services
- [ ] Recheck rules after configuration changes
- [ ] Document any exceptions made for lab use

### 7. Review network exposure
- [ ] Identify local IP addressing in the lab
- [ ] Review open ports on the host
- [ ] Confirm only expected services are reachable
- [ ] Re-scan after hardening changes

### 8. Review file and directory permissions
- [ ] Check sensitive directories for overly broad permissions
- [ ] Review ownership of important configuration files
- [ ] Limit unnecessary write permissions
- [ ] Protect scripts and configuration backups appropriately

### 9. Enable logging awareness
- [ ] Identify important system logs
- [ ] Review authentication-related logs
- [ ] Review service logs relevant to enabled software
- [ ] Note unusual errors or repeated failures
- [ ] Document where useful evidence is stored

### 10. Apply safe operational habits
- [ ] Avoid storing secrets in plain text
- [ ] Do not leave sensitive lab files in public repositories
- [ ] Sanitize screenshots, outputs, and notes before publishing
- [ ] Keep documentation updated with configuration changes
- [ ] Use Git carefully to avoid committing sensitive files

## Validation Steps

After making hardening changes, I review:

- running services
- listening ports
- firewall status
- user privileges
- system update status
- relevant logs
- documented notes and rationale

## Notes

This checklist is a living document and will be improved over time as I strengthen my Linux administration and system hardening skills.
