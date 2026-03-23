# Scan Methodology

## Purpose

This document outlines my basic network scanning workflow for authorized lab environments. The goal is to build a repeatable process for host discovery, port identification, service review, and clear documentation.

## Scope

This methodology is used only for:

- personal lab systems
- authorized environments
- educational and defensive use only

## Workflow

### 1. Confirm authorization and scope
Before scanning, I define which systems are in scope and confirm they are part of my lab or otherwise authorized for testing.

### 2. Identify targets
I identify the IP addresses, hostnames, or subnets that belong to the lab environment I am reviewing.

### 3. Perform host discovery
I begin by checking which hosts are online so I can focus further review on reachable systems.

### 4. Scan for open ports
I use port scanning to identify exposed services and better understand the network-facing footprint of each target.

### 5. Review services
I review service information to understand what may be running on each host and what could require further hardening or investigation.

### 6. Document findings
I record findings in a structured format, including target, observed ports, visible services, notes, and follow-up actions.

### 7. Recheck after changes
If I make lab changes such as firewall updates or service adjustments, I re-scan to confirm the effect of those changes.

## Documentation Standards

For each scan, I try to document:

- date of scan
- scope and authorization
- target system or subnet
- commands used
- notable open ports
- identified services
- security observations
- follow-up actions

## Professional Considerations

This methodology is intended to reinforce disciplined and ethical scanning habits. The focus is not just tool usage, but also authorization, repeatability, and clear reporting.

## Ongoing Improvement

As I build more experience, I plan to improve this methodology by adding better examples, clearer categorization of findings, and more polished documentation.
