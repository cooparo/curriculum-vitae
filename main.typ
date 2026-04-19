#import "@preview/basic-resume:0.2.9": *

// Put your personal information here, replacing mine
#let name = "Luca Parolini"
#let location = "København, DK"
#let email = "pparolini1@gmail.com"
#let github = "github.com/cooparo"
#let linkedin = "linkedin.com/in/luca-parolini-40b98a202/"
#let phone = "+45 71 89 57 74"
#let personal-site = "parox.dev"

#show: resume.with(
  author: name,
  // All the lines below are optional.
  // For example, if you want to to hide your phone number:
  // feel free to comment those lines out and they will not show.
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "us-letter",
  author-position: center,
  personal-info-position: center,
)

/*
* Lines that start with == are formatted into section headings
* You can use the specific formatting functions if needed
* The following formatting functions are listed below
* #edu(dates: "", degree: "", gpa: "", institution: "", location: "", consistent: false)
* #work(company: "", dates: "", location: "", title: "")
* #project(dates: "", name: "", role: "", url: "")
* certificates(name: "", issuer: "", url: "", date: "")
* #extracurriculars(activity: "", dates: "")
* There are also the following generic functions that don't apply any formatting
* #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
* #generic-one-by-two(left: "", right: "")
*/

== About me
Computer Engineer and MSc Cybersecurity student with 4+ years running self-hosted infrastructure on Proxmox; managing DNS, VPN, storage, and services through declarative NixOS configuration. Seeking a DevOps student position where hands-on systems experience meets security engineering.

== Education
#edu(
  institution: "Aalborg University",
  location: "København, DK",
  dates: dates-helper(start-date: "Sep 2025", end-date: "Present"),
  degree: "MSc. Cybersecurity",
)

#edu(
  institution: "Polytechnic University of Turin",
  location: "Turin, IT",
  dates: dates-helper(start-date: "Feb 2025", end-date: "Jun 2025"),
  degree: "Lifelong Learning Programme: Bitcoin, Lightning Network and Distributed systems Technologies",
)
- Practical and technical training covering Bitcoin fundamentals, protocol internals, cryptography, secure system development, and advanced Lightning Network design and implementations.

#edu(
  institution: "University of Padua",
  location: "Padua, IT",
  dates: dates-helper(start-date: "Oct 2021", end-date: "Mar 2025"),
  degree: "BSc. Computer Engineering",
)
- Relevant coursework: Data Structures, Internet Security, Operating System, Embedded Systems

// #edu(
//   institution: "Harvey Mudd College",
//   location: "Claremont, CA",
//   dates: dates-helper(start-date: "Aug 2023", end-date: "May 2027"),
//   degree: "Bachelor's of Science, Computer Science and Mathematics",
//
//   // Uncomment the line below if you want edu formatting to be consistent with everything else
//   // consistent: true
// )
// - Cumulative GPA: 4.0\/4.0 | Dean's List, Harvey S. Mudd Merit Scholarship, National Merit Scholarship
// - Relevant Coursework: Data Structures, Program Development, Microprocessors, Abstract Algebra I: Groups and Rings, Linear Algebra, Discrete Mathematics, Multivariable & Single Variable Calculus, Principles and Practice of Comp Sci

== Work Experience
#work(
  title: "Waiter",
  location: "Venice, IT",
  company: "Umana, SPA",
  dates: dates-helper(start-date: "Jul 2023", end-date: "Jun 2025"),
)
- Delivered professional service across catering services in hotels, restaurants, and luxury events.
// #work(
//   title: "Subatomic Shepherd and Caffeine Connoisseur",
//   location: "Atomville, CA",
//   company: "Microscopic Circus, Schrodinger's University",
//   dates: dates-helper(start-date: "May 2024", end-date: "Present"),
// )
// - Played God with tiny molecules, making them dance to uncover the secrets of the universe
// - Convinced high-performance computers to work overtime without unions, reducing simulation time by 50%
// - Wowed a room full of nerds with pretty pictures of invisible things and imaginary findings
//
// #work(
//   title: "AI Wrangler and Code Ninja",
//   location: "Silicon Mirage, CA",
//   company: "Organic Stupidity Startup",
//   dates: dates-helper(start-date: "Dec 2023", end-date: "Mar 2024"),
// )
// - Taught robots to predict when (and how much!) humans will empty their wallets at the doctor's office
// - Developed HIPAA-compliant digital signatures, because doctors' handwriting wasn't illegible enough already
// - Turned spaghetti code into a gourmet dish, making other interns drool with envy
//
// #work(
//   title: "Digital Playground Architect",
//   location: "The Cloud",
//   company: "Pixels & Profit Interactive",
//   dates: dates-helper(start-date: "Jun 2020", end-date: "May 2023"),
// )
// - Scaled user base from 10 to 2000+, accidentally becoming a small wealthy nation in the process
// - Crafted Bash scripts so clever they occasionally made other engineers weep with joy
// - Automated support responses, reducing human interaction to a level that would make introverts proud
// - Built a documentation site that actually got read, breaking the ancient RTFM curse
//
// #work(
//   title: "Code Conjurer Intern",
//   location: "Silicon Suburb, CA",
//   company: "Bits & Bytes Consulting",
//   dates: dates-helper(start-date: "Jun 2022", end-date: "Aug 2022"),
// )
// - Developed a cross-platform mobile app that turned every user into a potential paparazzi
// - Led a security overhaul, heroically saving the company from the menace of "password123"

== Projects
#project(
  name: "Runtime attacks detection system",
  dates: dates-helper(start-date: "Feb 2026", end-date: "Present"),
)
- Researching and developing a proof-of-concept attack and designed a novel detection algorithm to trace program execution for real-time protection.

#project(
  name: "P2P Secure Chat",
  dates: dates-helper(start-date: "Sep 2025", end-date: "Dec 2025"),
)
- Developed in Golang with development environment and package build managed through Nix. Implemented: Double Ratchet algorithm, gossip-oriented mechanism to support distributed peer discovery and information propagation and designed IPC protocol between the background daemon and the CLI.

#project(
  name: "Secure VPN Authentication via Bitcoin and Blockchain",
  dates: "Mar 2025",
)
- Bachelor thesis: proof-of-concept that uses on-chain challenge–response authentication for OpenVPN. Built reproducible infrastructure and development environments with Nix; implemented the post-authentication script in Python and contributed documentation fixes to the OpenVPN project.

//
// #project(
//   name: "Hyperschedule",
//   // Role is optional
//   role: "Maintainer",
//   // Dates is optional
//   dates: dates-helper(start-date: "Nov 2023", end-date: "Present"),
//   // URL is also optional
//   url: "hyperschedule.io",
// )
// - Maintain open-source scheduler used by 7000+ users at the Claremont Consortium with TypeScript, React and MongoDB
//   - Manage PR reviews, bug fixes, and coordinate with college for releasing scheduling data and over \$1500 of yearly funding
// - Ensure 99.99% uptime during peak loads of 1M daily requests during course registration through redundant servers

== Extracurricular Activities

#extracurriculars(
  activity: "Homelab System Administration",
  dates: dates-helper(start-date: "Jan 2022", end-date: "Present"),
)
- Self-host and maintain personal infrastructure running on Proxmox. Maintaining various services such as AdBlocker, local DNS, cloud photo storage, media services, VPN, and other personal services.
- Manage declarative system configuration and deployment using Nix/NixOS across virtual machines and services.

// #extracurriculars(
//   activity: "Capture The Flag Competitions",
//   dates: dates-helper(start-date: "Jan 2021", end-date: "Present"),
// )
// - Founder of Les Amateurs (#link("https://amateurs.team")[amateurs.team]), currently ranked \#4 US, \#33 global on CTFTime (2023: \#4 US, \#42 global)
// - Organized AmateursCTF 2023 and 2024, with 1000+ teams solving at least one challenge and \$2000+ in cash prizes
//   - Scaled infrastructure using GCP, Digital Ocean with Kubernetes and Docker; deployed custom software on fly.io
// - Qualified for DEFCON CTF 32 and CSAW CTF 2023, two of the most prestigious cybersecurity competitions globally

// #extracurriculars(
//   activity: "Science Olympiad Volunteering",
//   dates: "Sep 2023 --- Present"
// )
// - Volunteer and write tests for tournaments, including LA Regionals and SoCal State \@ Caltech

// #certificates(
//   name: "OSCP",
//   issuer: "Offensive Security",
//   // url: "",
//   date: "Oct 2024",
// )

== Skills
- *Programming Languages*: C/C++, Nix, Go, Java, Python
- *Technologies*: Agentic AI, Proxmox, Docker, Tailscale, Git, UNIX, NixOS, OpenVPN

== Languages
- English: IELTS 7.0
- Italian: Native
