# Sopra Recruit — Intelligent Recruitment Portal

## Organization Overview

**Sopra HR Software** is a subsidiary of the Sopra Steria Group, specializing in Human Resources management, payroll administration, and talent management. In 2024, the group operates in nearly 30 countries with ~51,000 employees. Sopra HR Software serves 850+ clients across 54 countries, offering solutions for large and medium-sized enterprises in both public and private sectors.

**Project context:** Final Year Project (PFE) at the Higher Institute of Technological Studies of Nabeul — internship at Sopra HR Software Tunisia.

---

## Problem Statement

The current recruitment process at Sopra HR Software suffers from:

- **Lack of centralization** — candidate data and job offers scattered across multiple platforms
- **Time-consuming CV screening** — manual sorting increases processing time and recruiter workload
- **Reduced decision accuracy** — no structured evaluation tools for comparing candidates
- **Limited process visibility** — difficulty tracking application status and recruitment stages

These limitations slow down hiring, increase manual effort, and prevent HR teams from focusing on strategic tasks.

---

## Proposed Solution

**Sopra Recruit** — an intelligent recruitment portal built around five core capabilities:

1. **Centralized platform** for managing job offers, applications, and recruitment stages from a single interface
2. **Automatic CV parsing** that extracts and structures candidate information (skills, experience, education, languages, certifications)
3. **AI-based matching engine** that scores candidates against job requirements using configurable weighted criteria
4. **Collaborative recruitment workflow** enabling HR officers and managers to evaluate, forward, and validate applications with full traceability
5. **Real-time notifications, interview scheduling, and recruitment dashboard** with exportable statistics

---

## Requirements Analysis and System Design

### Actors
| Actor | Role |
|-------|------|
| **Visitor** | Browses offers, registers as candidate |
| **Candidate** | Applies for jobs, uploads CV, tracks applications |
| **HR Officer / Admin** | Manages offers, applications, scoring criteria, interviews, dashboard |
| **Manager** | Reviews forwarded applications, validates/rejects, recommends new offers |

### Functional Requirements
- Registration with email verification & JWT-based authentication
- Job offer lifecycle (create, publish, archive)
- Application submission with CV upload
- Application pipeline management with status transitions
- AI-powered CV analysis and scoring
- Configurable scoring criteria (weighted)
- Interview scheduling and calendar management
- Structured evaluation with decisions
- Notifications for recruitment events
- Dashboard with KPIs and exportable statistics

### Non-Functional Requirements
| Category | Key Constraints |
|----------|----------------|
| **Security** | Role-based access, encrypted passwords, secure communication, GDPR compliance |
| **Performance** | Page load < 2s, CV analysis < 10s, background AI processing |
| **Reliability** | 99% availability, graceful AI service degradation |
| **Usability** | Modern UI, responsive design, visual feedback |
| **Compatibility** | Chrome, Edge, Firefox, Safari — desktop/tablet |
| **Scalability** | Growing users/offers without slowdown |
| **Maintainability** | Modular code, externalized configuration |

---

## Methodology & Sprints

**Methodology:** Agile / Scrum  
**Sprint duration:** 4 weeks each  
**Total:** 4 sprints (16 weeks)

| Sprint | Theme | Key Deliverables |
|--------|-------|-----------------|
| **Sprint 1** | Authentication & Setup | Registration with email verification, sign-in/sign-out, user & role management, profile management, landing page |
| **Sprint 2** | Recruitment Management | Job offer CRUD, offer browsing with filters, application submission, application pipeline, manager offer recommendations |
| **Sprint 3** | Artificial Intelligence | CV parsing & extraction, structured candidate profiles, scoring criteria configuration, AI matching scores, score-based ranking |
| **Sprint 4** | Finalization & Deployment | Interview scheduling, structured evaluation, notification system, recruitment dashboard & statistics, deployment |

---

## Architecture & Technologies

### Architecture
- **Frontend:** React JS SPA (Single Page Application)
- **Backend:** Spring Boot REST API (Java)
- **AI Service:** Python microservice for CV analysis and scoring
- **Database:** PostgreSQL

### Tech Stack

| Layer | Technologies |
|-------|-------------|
| **Frontend** | React JS, JavaScript, CSS3, Vite |
| **Backend** | Spring Boot, JDK (Java), Swagger (API docs) |
| **AI Module** | Python |
| **Database** | PostgreSQL |
| **DevOps / Tools** | Git, Node.js (npm), IntelliJ IDEA, VS Code, StarUML |

---

## Conclusion

Sopra Recruit delivers a **complete intelligent recruitment platform** that:

- Supports the full recruitment lifecycle (offers → applications → AI scoring → interviews → decisions)
- Reduces manual processing effort and accelerates candidate screening
- Improves traceability and consistency in hiring decisions
- Provides explainable AI-based evaluation for HR decision support

**Future perspectives:**
- Advanced analytics
- Multilingual CV intelligence
- External calendar synchronization
- Broader integration with enterprise HR ecosystems
