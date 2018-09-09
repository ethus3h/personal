The structure of this document is based on "Text-based project proposal: Template" (http://jonippolito.net/teaching/capstone/text_proposal_template.html).

Note that some sections have been re-ordered, to ensure that the most relevant and accessible information is presented first, with lengthier and more abstruse sections placed later. This proposal incorporates some earlier writings on the project.

# Abstract

This proposal suggests a project to develop and facilitate collaboration on a specification, a computing environment, a library, and a model community, to serve as resources and infrastructure for innovative communities.

# The problem

There is no project to systematically support the libre development and distribution as best as possible of the full set of knowledge and resources needed to support humans' standard of living. This results in wasted effort on developing redundant proprietary technologies, regressions in standards of living caused by the unavailability of proprietary systems, and the incalculable loss of shared cultural heritage through inconsistent or nonexistent archival practices (and in many cases active hostility towards historical preservation, especially in the interest of short-term personal economic gain).

There is also no project to ensure the availability of communities managed in the long-term interest of their constituents, humanity, and the environment. This results in human suffering and inequality, catastrophic cultural and historical loss, and prolonged global ecological crises caused by government and corporate apathy and abuse.

These problems are not hypothetical. They are very real and ongoing problems, and are actively causing very real and ongoing harm.

# Existing work towards solving this problem
- MusicBrainz
- Wikimedia
- United States of America
- GNU
- Internet Archive

# General approach

This project should aim to systematically support the libre development and distribution as best as possible of the full set of knowledge and resources needed to support humans' standard of living, and to ensure the availability of communities managed in the long-term interest of their constituents, humanity, and the environment. The communites should attempt to provide a consistent and complete experience to the people who are part of them, without depending on support from external infrastructure, technology, or government. Relying on external support increases fragility. 

To organize the broad scope of this project, it is currently divided into four primary areas of work: 
- A specification of principles and methods on which the project is based
- A community and a non-profit organization to manage and implement the project
- An information technology environment
- A library of knowledge and great cultural works

## Current project status

"Ember" is the current name of this project.

The primary components comprising the project are currently unfinished, but a variety of software maintained to facilitate the development of the project is available.

The main output of the project so far has been the successful development of two well-tested, partially completed software applications that are currently used to facilitate the further development of the project. The first of these is a static Web site generator, which is used to build the project's Web site (it includes working features for theming using CSS, with some included themes, automatic blog pagination, and discography Web site generation for musicians). The second of these is a suite of tools for working with file version tracking, document archiving, and data storage and distribution. It is currently in use for storing and managing the more than eleven million files and forty version control repositories used now for the project, as well as the structured archiving of more than eighteen million additional documents outside of the project.

# Expected outcomes

- Completed, stable software environment used for developing the project
- Project objectives completed
  - Support and ongoing development of the project's intellectual deliverables, all of which (with the exceptions of parts 2 and 3 of the library) should be libre-licensed
    - Specifications
      - Philosophy and rationale
      - Community
      - Technology and engineering
    - Information technology environment software implementation
    - Library of knowledge and great cultural works
  - A self-sustaining financially, technologically, and resource-independent community and a non-profit organization to manage and implement the project, and to serve as a model for other communities using this strategy
    - Managed, geographically-redundant computing infrastructure and data archival
  - Distribution of the knowledge assets, allowing a decentralized network of communities using these specifications
    - Ideally, the entirety of the knowledge assets (perhaps excluding section 3 of the library) would be available in a wristband storage format, or something similar, ensuring that every person carries the entirety of the contents of the project with them, essentially becoming human backups of the data, and with any single person having the knowledge necessary to recreate the entire project and all its technology if they want. Printed books should also be available and distributed to libraries.
    - The cloud computing infrastructure should use a decentralized, asynchronously resolving append-only data store, similar to blockchains, to ensure the preservation and longevity of data stored using it as best as possible.

# Tasks list

## Planning and strategy
- The most important tasks are also the most difficult. Developing assets (specifications, software, etc.) is trivial compared to developing communication skills and establishing allies. There's a reason there are several usable computer programs developed for this project, but no other people working on it.
- My role in this project should be to coordinate and facilitate until a person or persons more capable is/are available, and/or until it is self-managed, and my presence or absence would have no appreciable effect on it.

## People and communication
- Establish connections with people. Human connections will be critical for the success of this project.
- Develop effective communication skills and strategies. Without being able to get allies in developing the project, it would be dead in the water.
  - That means being able to express clearly, succinctly, and persuasively the following (at least): _what_ this project is, _why_ it is important and achievable, and _how_ to help with it.
  - This includes both in writing and in person. My in-person speaking on it is particularly disastrously bad.

## Finances, budget, and stability
- Finances: Develop a financial strategy and budget requirements. As a single, close to broke student without employment, a degree (yet), or a rich family giving me a small loan of a million dollars, I can barely support keeping the lights on for the Web site. (Hosting is going to expire in October, and I haven't figured out how I'm going to pay for it for the next few years. It's somewhere in the US$5/month range. The domain name registration (`futuramerlin.com`) is good through the end of 2022, at which point it will need renewal, which is about US$10/year.)
- While the project still has a bus factor of 1, my personal stability is critical for the project. Barring exceptional circumstances, I should be able to continue working on it through graduation thanks to the university and government's student financial aid, and my family's financial support.

## Steps dependent on interpersonal connections
- Establish the physical community. This will require initial capital of *at least* tens of thousands of US dollars, as well as support for ongoing expenses.
- Create a non-profit organization to manage and be responsible for the project
- Ensure that organization's financial stability (through sources such as an endowment and grants)
- Transfer control of the project's assets (Web presence, etc.) to that organization 

## Development

These tasks are much less important than the above, but are much easier and comprehensible for me. Consequently, this is where most of my work so far has been.

- Develop, write, test, and document specifications
  - Community governance specifications
  - Technology information and specifications (engineering, construction, information technology, etc.), without dependencies (enough information should be included to enable full construction of all technologies starting from nature, without any existing knowledge or technology/machinery; this should be _tested_)
- Continue development of support software
- Develop software for information technology environment (EITE)
  - Finish specifying and implement portable, trivial staging language (StageL)
  - Port existing EITE implementation to StageL
  - Provide and implement StageL inside EITE
  - Get text rendering implemented in EITE
  - UI widgets
  - Implement simple document editor in EITE
  - Complex text rendering support
  - Other EITE development tasks: networking, data storage and distribution, etc.
- Write/compile the library
  - Write, compile, and organize content for part 1 of the library
    - Specifications (from above)
    - Subject area information (history, mathematics, linguistics, engineering, etc.)
  - Continue compiling part 2 of the library
- (Dependent on additional finances, land, and people) Provide physical cloud computing infrastructure
- Figure out how to connect the community's network to the Internet, somehow (it shouldn't be dependent on external parties: it should follow the Internet Archive's model of being an AS with peering agreements) to allow accessing and preserving the knowledge there

# Resources needed
- Communication skills
- Strategic planning
- Team-building skills
- Financial support
- Time
- Stability
  - Financial
  - Personal (finances; energy and focus; time availability)
  - Organizational

# Evidence of the problem

- https://www.archiveteam.org/
- https://archive.org/download/DigitalAmnesiaDocumentary/DigitalAmnesiaDocumentary.HD.mp4
- https://medium.com/mydata/gdpr-data-portability-is-a-false-promise-af460d35a629
- https://mydata2017.org/presentations/
- https://medium.com/mydata
- https://en.wikipedia.org/wiki/National_Museum_of_Brazil_fire

# Features of the proposed solution, in detail



I have generally advocated for the use of an information technology system to manage and facilitate work by individuals, by tracking what needs to be done and what skills people have, and offering jobs to people with the relevant skills. This would allow the individuals to bypass the difficult job search and application process, which uses a lot of individuals’ time and energy without producing any real value from that expenditure. Then, when a job is completed, the person who did the work would be granted credits corresponding to the work they did, which could then be exchanged for goods or services. This type of system could be implemented as a single, centralized system. However, it could also be implemented as a decentralized system.

To decentralize such a system, individual computers that make up the information technology system would have to be able to negotiate information sharing between other computers that are accessible via network. If each individual computer has the entire capability to maintain the system, then the network would be able to split and recombine as needed depending on situation.

For instance, if a community in Maine, USA implemented such a system, and a community in Peru implemented such a system, the two systems would be able to be connected when a network connection between them was available, being able to share work assignments remotely, but if a storm or other situation disrupted the network connection, the two communities’ economies would split into separate economies and continue working independently seamlessly, and then recombine when the network connection returned. In such a system, each individual who has a computer thus has access to and control over that part of the economy. This still leaves one centralized aspect, though, which is the software controlling the economies. If it is community-maintained libre software, that problem is largely eliminated, aside from the usual problems of project governance. If it is preferred, the software could also have facilities for creating ad-hoc centralization, where one instance of the software within each group of instances accessible within a given network would adopt the role of leader. This could be decided automatically, and made fully invisible to users of the system, or through community selection with automatic selection as a fallback, which would probably be preferable so as to ensure that systems with good connectivity and uptime (such as servers in datacenters) were selected as leaders, avoiding unnecessary inefficiency and maximizing reliability.

Problem: At present, Web-based information technology companies such as Google, Amazon, and Facebook have a disproportionately large amount of power, have a disproportionately large role in how individuals are able to conduct their daily lives, and are single points of failure for a large portion of the modern lifestyle. There is no practical way to rebel against this system. Van Gelder refers to “institutions whose behavior calls into question their right to exist” (“Introduction: How Occupy Wall Street Changes Everything”, Sarah Van Gelder, 2011, p. 10). The hegemony of corporations is a strong parallel to such institutions — unlike the government, corporations are private institutions with little to no public oversight and control, despite having a large and visible role (perhaps even larger than any one government) in individuals’ lives.

Proposed solution: To begin to challenge this power structure, as part of an ongoing project, I propose developing an semi-decentralized document-oriented computing platform that can integrate the abilities of traditional information technology systems into a single, cohesive system. Such a system should be free/libre software, and should be designed in such a way that it can adapt when needed to functioning as a fully decentralized, serverless system, transparently adjusting to the networking capabilities or lack thereof available to it on an ad-hoc basis. The existence of this project as a replacement would prevent single IT companies’ systems being single points of failure, and its distributed model would prevent it itself from being a single point of failure. Additionally, by being fully free/libre software, and by using a single system and data format for the full range of services, this proposal would reduce the dangers created by vendor lock-in, proprietary products, and incompatible IT systems.

Top strategies: My goal is to develop an initial implementation for this system, and create a community-led nonprofit organization to manage it. An alternative strategy could be omitting the implementation phase, and only focusing on developing a specification for such a system that could be presented elsewhere, although that strategy would risk increasing the problems the project is intended to fix (by providing existing IT companies with the project’s technological innovations, but not having a free/libre implementation of them to prevent existing companies using distorted clones of the idea to further their proprietary goals and vendor lock-in).

Target audience: This project is aimed at and would benefit people who currently use proprietary IT systems. Secondary audiences include people who already use and care about free/libre software, and people who have not used IT systems but would like to. Making such a system be accessible and aesthetically pleasing is important, but achieving those aims is mostly a solved problem, and by following standard best practices this should not be a significant issue in the development of this project. To help it be easy to use, a user interface proposal is available that serves as an iteration on traditional computing models while being simpler and more capable; I believe that this proposal should be used as the default user interface modality for the proposed IT system. The project itself is quite serious, reflecting its great importance (at least in my opinion) and substantial scope, but fun elements certainly play a role in it (free/libre computer games, etc.) — not to mention the simple fun of using a great system that you know you fully control and can rely on, rather than being controlled by and dependent on corporate interests!

I envision this information technology system as a component of a more general community development project. One other possible innovation to try in the course of this community development project is the use of an information technology system to manage and facilitate work by individuals, by tracking what needs to be done and what skills people have, and offering jobs to people with the relevant skills. This would allow the individuals to bypass the difficult job search and application process, which uses a lot of individuals’ time and energy without producing any real value from that expenditure. Then, when a job is completed, the person who did the work would be granted credits corresponding to the work they did, which could then be exchanged for goods or services. This type of system could be implemented as a single, centralized system. However, it could also be implemented as a decentralized system.

To decentralize such a system, individual computers that make up the information technology system would have to be able to negotiate information sharing between other computers that are accessible via network. If each individual computer has the entire capability to maintain the system, then the network would be able to split and recombine as needed depending on situation.

For instance, if a community in Maine, USA implemented such a system, and a community in Peru implemented such a system, the two systems would be able to be connected when a network connection between them was available, being able to share work assignments remotely, but if a storm or other situation disrupted the network connection, the two communities’ economies would split into separate economies and continue working independently seamlessly, and then recombine when the network connection returned. In such a system, each individual who has a computer thus has access to and control over that part of the economy. This still leaves one centralized aspect, though, which is the software controlling the economies. If it is community-maintained libre software, that problem is largely eliminated, aside from the usual problems of project governance. If it is preferred, the software could also have facilities for creating ad-hoc centralization, where one instance of the software within each group of instances accessible within a given network would adopt the role of leader. This could be decided automatically, and made fully invisible to users of the system, or through community selection with automatic selection as a fallback, which would probably be preferable so as to ensure that systems with good connectivity and uptime (such as servers in datacenters) were selected as leaders, avoiding unnecessary inefficiency and maximizing reliability.

Approach 1—ElliotC (Updated Again)
Abstract

This is a proposal for developing an information technology system that allows various types of data to be given a first-class role; this is part of a broader proposal to develop and facilitate collaboration on a specification, a computing environment, a library, and a model community, to serve as resources and infrastructure for innovative communities.
Background

This part of this project will challenge the power structures of information technology corporations by providing a free/libre alternative to their services. The goal of the project is to develop an alternative system that respects freedom and openness. At present, owning common consumer goods often tends to turn one into a walking billboard through the presence of built in advertising on products. This should not be be necessary to be able to participate practically and meaningfully in society. Rather, it should only be something that people could choose if they explicitly want to.
Explanation

This project has a very large scope. Consequently, for this Approach, the target goals would be more limited. A practical implementation target for the context of this class project is the development of a simple state-machine–driven interpreter of the token-based document format specification for the information technology environment aspect of the project. A JavaScript implementation of this project is under way. JavaScript would allow the project to be portable on the Web platform, and perhaps allow implementing graphical user interface elements of the project sooner, while Bash would allow a character-mode textual user interface, perhaps a command-line environment. Either of these types of implementations of the format is valuable, regardless of the language they are developed in, and should be developed at some point; for this project only one would really be practical for meeting the implementation target within the context of this class, most likely. There have been several previous attempts at developing this, but they have not worked out for various reasons.

The first implementation was in PHP, and had poor architecture and rather unmaintainable code. A second attempt in Java was excessively ambitious in attempting to parse a programming-language-style document format interactively, without any specification and only minimal planning or architecture, as well as being highly overengineered. An attempt in PHP and JQuery to build a user interface toolkit based on these principles crashed and burned due to poor code architecture and attempting to “put the cart before the horse” in developing a UI toolkit without any specification for it, and without consideration of the existing (specified) aspects of the format. A fresh attempt in PHP stalled due to also being rather unmaintainable and awkwardly written, specifically in its use of dynamically written JavaScript, and trouble storing arbitrary binary content, independent of character encoding, in HTML text boxes (which are really the wrong tool for the job). An implementation in Bash was considered and a command-line interface designed for it, but probably this will simply become a wrapper around the JavaScript implementation. The JavaScript implementation here will attempt to avoid these issues by only implementing what has already been specified, not attempting to handle the programming-language-style format yet, using extensive unit tests (which was very helpful in the Java implementation), and using modularized code (which has been helpful in successful projects undertaken in the interim), and by planning the architecture of the code (shown in the diagram below) before implementing it.
Design diagram

        External I/O: document source ──────────────╮
               (as Dc sequence)                      │
                                                     ↓
   [○ Document execution state] ╮    ╭ [○ Document as Dc sequence] ←╮
                ↑               ↓    ↓                              │
                ╰───── Document execution loop:  ───────────────────╯
  Other External I/O ← iterates over tokens (Dcs)
                                   ↓
                              Renderer: converts and
                              and writes to renderer
                              buffer visible document
                              elements
                                     ↓
                              ⎡ Renderer buffer: holds     ⎤
                              ⎢ representation of document ⎥
                              ⎢ in the format desired for  ⎥
External I/O: render target ← ⎢ output (terminal text for  ⎥
(e.g. terminal or browser)    ⎢ a CLI, HTML for a browser, ⎥
                              ⎢ bitmap for a raster        ⎥
                              ⎢ monitor or HTML Canvas,    ⎥
                              ⎢ other formats for export,  ⎥
                              ⎣ etc.)                      ⎦

Current JavaScript implementation

The new JavaScript implementation is in progress. The source code for the project, including the new JavaScript implementation, can be found online (its main interesting code file is here as of this writing), and it can be run at this Web page, although the Web page version of it may not be up to date with the current version of the source code (at the moment, it is still showing the results of a marginally-related CSS test I was doing; I will update it periodically, although updating it takes a bit longer than just updating the source code, so I am not inclined to bother that often).
Pictures

Here is a picture of the latest mockup of this proposal, running in a Web browser.

 
Interactive mockup

Here is an interactive mockup of a proposed user interface for the project.

http://futuramerlin.com/people/elliot/writings/blogs/elliotchandlernmd442/2017/12/06/12799819e/
Budget

The work for the partial implementation of the project in JavaScript will probably take in the area of 100 hours, spread throughout the semester. The costs of supporting me during this semester are approximately $420 per month for housing including utilities, and $150 per month for food, yielding $570 per month total, and $3420 for the semester. I plan to volunteer my time for this. I would not have a job anyway until the summer, so the investment of time for this will come out of my time outside of class, rather than replacing a job. The most recent costs of technical infrastructure is US$106.20 for three years of Web hosting, plus US$83.76 for eight year ownership of domain name. The cost for the semester of Web hosting is therefore US$17.70, and the cost for the semester of the domain name is US$5.24. The full implementation of the project is a very large project, and will require substantial investment of time and money. Land and a building for the project would cost tens or hundreds of thousands of US dollars, which I hope to fund by getting a well-paying job enabled by my education. That education will probably require at least two semesters of university without financial aid, which will require tens of thousands of dollars in student loans and their interest. Significant volunteer involvement and/or external investment would be necessary for a full implementation, since the project is too large for me to complete solo.
Audience

The intended audience for the part of this project I am undertaking this semester is very limited. It is simply a technology demo and beginning of an implementation of a tool with larger scope. Consequently, it will presumably be rather limited in its practical utility, making it not suitable for a general audience, and mainly useful as a tool for demonstrating some of the principles used in this project, and as a core starting-point for the implementation of a more substantial and practically useful set of capabilities. People that would be especially benefited by the full form of this project include individuals from marginalized groups, especially those with disabilities, mental illnesses, and the homeless, by enabling them to support themselves through a community and reducing barriers presented to them by discrimination, and by reducing the need for individuals’ dependence on the traditional monetary economy.
Credits

I would like to thank my classmates for their feedback on the project, and Jeremy Mason for mentoring me during an earlier iteration of the development of some of these ideas.

 robotic gardener. What it would do is automate the process of growing and harvesting crops. By combining small motors and sensors and a simple programmable computer system like an Arduino, a small self-contained box could be constructed that would accept a seed as input and produce crops and more seed as output. This could be used for easily growing many types of plant, by providing different growing instructions and seeds as needed. It could also be built in a way that tries to use energy from the environment efficiently, and avoid excessive use of mains power. This would be helpful in simplifying access to plant products, even plants that are not commonly available easily. For example, if one wants a type of plant like clover that is usually only available in the wild in summer, and not sold in the winter, but the person wants it available to them year round, then it could be grown by the robotic gardener.
More complex version:

I would like to create a robotic gardener. What it would do is automate the process of growing and harvesting crops. By combining small motors and sensors and a simple programmable computer system like an Arduino, a small self-contained box could be constructed that would accept a seed as input and produce crops and more seed as output. This could be used for easily growing many types of plant, by providing different growing instructions and seeds as needed. It could also be built in a way that tries to use energy from the environment efficiently, and avoid excessive use of mains power. This would be helpful in simplifying access to plant products, even plants that are not commonly available easily. For example, if one wants a type of plant like clover that is usually only available in the wild in summer, and not sold in the winter, but the person wants it available to them year round, then it could be grown by the robotic gardener.

# Specification

Page location: [Core project components](/components.htm)

## Strategy

See [the dedicated sub-page](strategy.htm).

## Goals

An Ember community should provide useful elements of survival: shelter, nutrition (including food and water), medical care, education, and information. It would do this as its fulfilment of its objective of managing the various needs of a society, by enabling people to be effective participants in that society.

One role of Ember would be to provide goods. For this, it would be ideal for Ember to control as much of the supply chain as possible. That would allow efficient provision of the goods such as to reduce cost and ensure quality. That control of the supply chain would, in an ideal scenario, extend to all stages of the process, from production of the raw materials to component production to assembly to distribution, as well as shipping at all stages of the process. If Ember both controlled production of raw materials in a region and was the dominant institution working to ensure that those resources are used responsibly, it would of course be important to take the interest Ember has in using the resources sustainably into consideration.

There should be a universally and easily accessible facility to allow the community to vote easily, with systems in place to prevent voter suppression or intimidation.

## Project structure and implementation

Ember will achieve these goals through creating individual components that each provide an integral part of the whole societal system. Implementation will probably need to be undertaken in stages.

## Rationale

Human society is sometimes unpredictable in the rights and safeties it affords. Consequently, a unified institution with the aim of remedying these issues should be established outside of the realms of traditional governmental structures. Participation in Ember communities shall be dependent on agreement to specified terms, to best protect the rights of the individuals making up the community.

## Licensing

Aside from sections 2 and 3 of the [Ember Library](/library), all portions of the Ember project should be compliant with the Ember Freedom Requirements, and all portions of the project original to Ember should be compliant with the Strict Ember Freedom Requirements. This is likely not yet a legally effective license, due to a lack of available legal expertise to work on it, and consequently, most of the Ember project and its [ancillary projects](/ancillary) are licensed under the GNU Affero GPL, version 3 (see the licensing information in each individual repository for details). The term "Information", in these requirements, refers to things such as music, software, computer typefaces, visual art, patents and inventions, specifications, schematics for equipment, etc.

### Rationale

These licensing requirements are present to attempt to prevent regressions in the availability and utility of the Ember project.

### Ember Minimal Freedom Requirements (EMFR)

For given Information to be compliant with this standard, the following must be true:

*   Self-contained: All information necessary for the full and complete use of the Information must also be EMFR-compliant.
*   Redistributable: The Information must be legally redistributable.
*   Source included: The preferred form for editing the Information must be available and EMFR-compliant; when used by Ember or when presented as EMFR-compliant, if the Information is in a form that is not the preferred form for editing it, a copy of the Information in the preferred form for editing it must always be included with the other copy.
*   Notice of terms: When used by Ember or when presented as EMFR-compliant, documentation of these requirements must be provided with all copies of the Information.
*   Irrevocable: The restrictions on the Information that make it EMFR-compliant must be irrevocable, at least until it falls into the public domain by legal necessity.
*   Unencumbered and unencumbering: The Information may not employ any means to prevent or hinder copying or using it freely (e.g. DRM); furthermore, if the Information enables access to information that employs such means, the Information must not be complicit in facilitating those restrictions (for instance, an EMFR-compliant app that allows streaming DRM-protected content to an HDMI content-protection–enabled monitor MUST enable that content to be used freely by the user, and may not simply pass protected content through to the monitor without being able to decrypt it and enable its free use by the user; software like Firefox's content-decryption-module sandbox is thus not EMFR-compliant).

### Ember Freedom Requirements (EFR)

This is the same as the Ember Minimal Freedom Requirements, with the following additional restrictions:

*   Requiring non-misleading attribution: Attribution to the source of the Information must be required; if the Information is a derivative work, it must be made clear that it has been modified from the source information.
*   Editable: It must be legal to modify the Information, and to redistribute both modified and/or unmodified copies of the Information.
*   Mandatory publication: The Information must be promptly published and made widely available publicly at the cost of distribution or less.
*   Copyleft: These requirements must be required to apply to all derivative works of the Information, and must be required to apply to all information packaged with the Information (e.g., non-EFR-compliant firmware may not be provided with an EFR-compliant kernel).
*   Inherited: New information created using the Information must be EMFR-compliant.
*   Provision as a service: When the Information is provided as a service (as in the case of software being run on a server), the Information must be made readily available to those who access the service, and documentation of these requirements must be provided with the service.
*   Notice of terms: Documentation of these requirements must be provided with all copies of the Information.
*   Restricted use: The Information may not itself be used as or as part of advertizement or propaganda without the agreement of its creator or creators, although it may be used as a tool for the creation of advertizement or propaganda.
*   Irrevocable: The restrictions on the Information that make it EFR-compliant must be irrevocable, at least until it falls into the public domain by legal necessity.

## Designs

The Ember project should develop designs for things such as clothing, tools, and housing. Any finished design provided by the project should conform to some specific traits.

*   Buildable: All technologies and materials needed to build, use, and disassemble the design must also meet these design requirements, and must be fully specified in this document, with reference within the design to those other design specifications, so that every design listed here can be built, used, and disassembled without any knowledge outside of this document, beginning with only the materials available naturally.
*   Deconstructable: The design should be able to be disassembled and/or reassembled without any damage or loss to the materials used.
*   Materials: All materials needed to build and use a design should be:
    *   readily available (not rare or geographically restricted)
    *   in a form that can be efficiently returned to a natural state if desired at the end of their lifespan (many plastics, for instance, would fail this criterion unless an energy-efficient tool for reversing their creation is available)
    *   all technologies needed for their sourcing, processing, and end-of-life processing must meet these requirements
    *   in a form that will return to a natural material over time (the goal of this rule is to avoid materials that result in nonbiodegradeable litter like the microparticles that synthetic textiles sometimes result in; it could probably be better written)
*   Rugged: All item designs should be long-lasting (not disposable, able to function for many years), rugged, and able to function in adverse conditions.
*   Safe: All designs should be safe to build, use, disassemble, and biodegrade.
*   Reliable: All designs should work predictably and reliably.
## Community

An Ember community is a group of individuals who have chosen to create an Ember community, and to live in accordance with shared principles so as to best protect individuals' rights.

## Services collective

An Ember community's services collective is a not-for-profit that organizes the procurement and distribution of goods and services for its members, and perhaps those who are not its members as well. The goal of this organization would be to provide any needful things desired by its members for their lives. For instance, if a person chose to receive food through Ember, they could request that it be provided in exchange for labor. Their labor would help contribute to services requested in the future by them or other Ember members. The organization should have 24/7 available buildings staffed by Ember members from whom aid could be sought, such as the furnishing of meals, shelter, clothing, access to information, or other services, in exchange for labor. That way, if an Ember member is in trouble in a strange town, for instance, with no money, identification (beyond their own body), or other resources, they could go to the local Ember building to receive any services they desire; they could even build up credit in preparation for such an incident by working for the Ember collective prior to taking a trip, for instance, so they would have already earned any services they might want.
## Introduction

This section documents the Ember computing environment: a centralized append-only information store, a computer operating system integrated with that information store, and related specifications. This is a work-in-progress draft, and everything here is subject to change and is not presently suited for implementation.

## Overview

The computing environment will consist of the following components:

*   Development principles, describing the process to use for creating the computing environment
*   Data formats
    *   Specifications
    *   Reference implementations
*   Client app
*   Server apps:
    *   Public-facing API
    *   Search engine
    *   Storage backend

## Development principles

### Prerequisites for code to be added to the repository

*   Code must be readable and documented.
*   Code must not cause or have failing tests.
*   Code should include thorough automatic test coverage.
*   Code must address a deviation from the current specification (bug, missing feature, etc.), and may not contain other code.

### How issues should be prioritised

Ordered from highest priority to lowest priority

1.  Security vulnerabilities
2.  Functional regressions
3.  Incorrect results
4.  Crashes and similar critical usability issues
5.  Slow code with a significant impact on usability
6.  Aesthetic regressions
7.  Minor usability issues
8.  Slow code with a moderate impact on usability
9.  Missing features

## Implementation process flow

This diagram shows conceptually how data flows at a high level in the process of running an EITE document using an interpreter (a compile-then-run system would use different data flows, but the overall effect would be equivalent). The non-bracketed elements represent programmed processes. The bracketed elements represent data structures. A circle ○ represents data storage persists for the lifetime of the document being open or being executed (not necessarily in RAM: for a long-running background task, like a periodic mail fetcher, this data could be moved to disk or the cloud if useful to free up local memory). Other data structures can be buffered/streaming FIFOs that discard input as it becomes unneccesary. The arrows represent data flows into and out of data storage or the system. This diagram assumes a Dc sequence as input; other forms of input would need a separate conversion/interpretation step for this.

        External I/O: document source ──────────────╮
               (as Dc sequence)                      │
                                                     ↓
   \[○ Document execution state\] ╮    ╭ \[○ Document as Dc sequence\] ←╮
                ↑               ↓    ↓                              │
                ╰───── Document execution loop:  ───────────────────╯
  Other External I/O ← iterates over tokens (Dcs)
                                   ↓
                              Renderer: converts and
                              and writes to renderer
                              buffer visible document
                              elements
                                     ↓
                              ⎡ Renderer buffer: holds     ⎤
                              ⎢ representation of document ⎥
                              ⎢ in the format desired for  ⎥
External I/O: render target ← ⎢ output (terminal text for  ⎥
(e.g. terminal or browser)    ⎢ a CLI, HTML for a browser, ⎥
                              ⎢ bitmap for a raster        ⎥
                              ⎢ monitor or HTML Canvas,    ⎥
                              ⎢ other formats for export,  ⎥
                              ⎣ etc.)                      ⎦

## Command-line interface (mostly unimplemented)

The EITE provides the following user-facing command-line scripts.

`eite`

This is the main interface for EITE. Synopsis: `eite [check|run|run-tests|source-to-tree|tree-to-source] (<path-to-document>|-)`

The EITE provides the following additional command-line scripts that it uses internally.

`eite-check`

Return false if the specified source document cannot be parsed. Synopsis: `eite-check (<path-to-document>|-)`

`eite-run`

Run the specified document. Synopsis: `eite-run (<path-to-document>|-) [--graphical]`

`eite-run-tests`

Run test suite. Synopsis: `eite-run-tests`

`eite-source-to-tree`

Given a source file, print out an AST representation of the document. Synopsis: `eite-run (<path-to-document>|-) [--graphical]`

`eite-tree-to-source`

Given an AST representation of a document, print out the source file for it. Synopsis: `eite-run (<path-to-document>|-) [--graphical]`

## Data formats

### Test suite

eet

EITE execution test: given an input document in a specified format, run it and compare its output (the printable state of the document after it exits) to the expected output.

ept

EITE parse test: given an input document in a specified format, parse it and compare its representation as a Dc list to the expected representation.

### EITE Language

#### Objective

Develop a machine-readable language that can be source-to-source translated into other languages. It should be practically useable as a shell as well as for running stored programs. Possible target languages to investigate include Bash, Rakudo Perl 6, NQP, C--, C, PyQt5, and JQuery.

#### Language profiles

EITE Language programs may optionally declare a non-default language profile to use: Core, Basic, and Dangerous (the default is "Standard"). Core and Basic both restrict the program to a subset of the language. The Basic language interpreter is written using the Core subset of the language, and provides useful shortcuts to use in the development of the interpreter for the Standard profile. The Default language interpreter is written using the Basic subset of the language. The Dangerous profile allows using language features which are probably a bad idea to use, but may be needed in some cases.

#### Dcs

The core unit of the EITE Language is the Dc (Document Component). The defined Dcs are listed in DcData.csv. An EITE Language document is a list of Dcs, and a file is considered _structurally valid_ if it can be interpreted as such. A Dc can have a syntactical pattern that it can require if it is to be meaningful. For example, a marker to _begin_ a section of a document might be required to have a matching _end_ marker. A document is only _syntactically valid_ if the usage of each Dc contained within it conforms to the Dc's defined syntax, even if the document is otherwise structurally valid.

##### Reading DcData.csv

DcData.csv contains nine columns, each of which gives some information about a given Dc.

From left to right, the columns are: ID, Name, Combining class, Bidirectional class, Simple case mapping, Type, Script, Details, and Description.

The "ID" column specifies the number used to refer to a given Dc. Once an ID has been specified in a stable version, its meaning will not change in future versions.

The "Name" column specifies an informative name for the Dc. The names may change in future versions if the current names seem suboptimal. They should not be relied on as unique or stable identifiers. If a name is prefixed with "!", then that Dc is deprecated. Names _should_ be unique within any given version of DcData.csv, although errors in it could compromise that (it is not currently checked by a computer).

"Combining class" column: See below.

"Bidirectional class" column: See below.

"Simple case mapping" column: This column contains the ID of the uppercase form of characters with the "Ll" type, and the ID of the lowercase form of characters with the "Lu" type.

"Type" column: See below.

The "Script" column indicates the script or other set to which the character belongs. Values needing further explanation include "Semantic", "DCE", "DCE sheets", "Noncharacters", "DCE versions", "Encapsulation", "EL Syntax", "EL Routines", and "EL Types".

The "Details" column contains various additional information about characters, as a comma-separated list.

*   List entries beginning with ">" are cross-references to related Dcs. List entries beginning with "<" are decompositions.
*   List entries beginning with "(" indicate the syntax (parameter type signatures) for EITE Language routines.
*   List entries beginning with ":" indicate the required syntax for the given Dc, using a form similar to regular expressions:
    *   a bracketed list of Dcs \[\] indicate a set of possible Dcs
    *   a bracketed list of Dcs with a ^ at the beginning indicates an inversion of the set
    *   \+ indicates 1 or more of the preceding item
    *   a Dc ID in brackets with a colon before the closing brackets indicates any syntactically correct sequence of Dcs beginning with the enclosed Dc ID
    *   "~" represents the Dc the syntax of which is being defined

The remaining list entries are aliases (alternate names for the characters, for ease of look-up).

The "Description" column contains additional comments regarding the Dc.

Three columns' contents are directly inherited from the Unicode Standard: Combining class (inherits Unicode's "Canonical\_Combining\_Class property"), Bidirectional class (inherits Unicode's "Bidi\_Class" property), and Type (inherits Unicode's "General\_Category" property). The "Simple case mapping" and "Script" columns should also be inherited from Unicode in some manner, but are not at present. For characters not included in Unicode, a reasonable value is chosen in the pattern of the values used by Unicode. If there are discrepancies between this value and Unicode's value for a given character that is in both sets, this should be reported as an error in the EITE Language standard. Unicode's values should take precedence.

"Type" column values also extend the Unicode Standard's possible values with the "!Cx" category, denoting characters that do not fit neatly into Unicode's existing categories.

##### Notes on specific Dcs

###### Dcs 241–245: Mode indicators

Inclusion of the mode indicators in documents is _optional_. The selected mode expresses information about the document's expected execution environment. These modes are shortcuts that set up the environment in advance so that the document does not need to contain specific code to set up these contexts. This lets the resulting documents more concise and readable.

###### Dcs 246–255: Source formatting control

Dcs 246 through 255 control the formatting of the EM format version of a document.

#### Document formats

There are six file formats defined by this specification. Five of them (ELD, ELS, ELQ, DELQ, SELQ, and ELQ) are general-use formats, while the fifth (ERD, not yet specified) is a special-purpose format with a subset of the other formats' capabilities. ELQ and DELQ are intended as an intermediate, more-readable format, and are not intended for information interchange (they are much larger than the other formats for a given document, in general).

To allow backward compatibility, once a completed version of this standard has been released, the meaning of any given Dc will not change. That will ensure that existing documents retain their meaning when interpreted using a newer version of the specification. While they are semantically stable, they are not necessarily presentation-stable (a Dc representing "A" in one version may look different from one version to the next, but it won't change to represent a "B"). Implementations should be able to render a document exactly as determined by earlier versions of the specification as well. A syntax should be provided to indicate the version of the specification a given Dc, region of Dcs, or document should be displayed using (exactly, not just semantically), although Dcs have not been created for this purpose yet.

There is a one-to-one correspondence between ELD, ELS, ELQ, and DELQ files (for any given document in one of those formats, there is only one way to represent it in the other formats), but not for ERD files (because ERD files can only represent a subset of EITE Language documents). That means that documents can be losslessly round-trip-converted between those four formats. _However_, when converting from an ELS file, if it does not have a version specified, its behavior may change due to changes in the mapping between source code and Dc IDs. Source form should be able to represent syntactically invalid documents unambiguously. Whether structurally invalid source-form documents should be able to be represented as structurally valid Dc sequences is debatable.

ELD, ELS, and ELQ files are subsets of ASCII text files, with lines delimited by 0x0A (line feed). Bytes 0x00 through 0x09, 0x0B through 0x1F, and 0x7F through 0xFF (all ranges inclusive) are disallowed. Files must end with 0x0A. This may later be changed to use UTF-8.

At the end of each format's summary (except for EMR), a simple "Hello, World!" document is given in the format.

##### EITE Language documents (ELD), .eld

EITE Language documents are a list of Dcs. The Dcs mappable to the permitted ASCII characters are represented by those ASCII characters, with the exception of 0x40 "`@`" (Dc 1). All other Dcs are represented by "`@`" followed by the integer Dc ID followed by a space, such that, for instance, "`@`" would be represented as "`@1` ".

    Hello, World!

##### EITE Language source files (ELS), .els

EITE Language source files are a programming language–inspired representation of EITE Language documents. It is the most readable of the formats, but also the most technically complex.

    dc:
        Hello, World!

or more idiomatically (but not the exact equivalent of the others in terms of the Dcs used),

    say 'Hello, World!'

which would be

    256 258 260 262 # . . . .
    264 263 57 86 # . . H e
    93 93 96 30 # l l o ,
    18 72 96 99 # . W o r
    93 85 19 261 # l d ! .
    259 # .

in Dcs, or even more simply the `say` could be omitted since literals are printed by default: `'Hello, World!'`.

##### EITE Language sequence files (ELQ), .elq

A list of Dc numbers. Four Dcs are given per line, separated by spaces.

    57 86 93 93
    96 30 18 72
    96 99 93 85
    19

##### Documented EITE Language sequence files (DELQ), .delq

A variant of the EMS format for easier reading: after each line, the printable ASCII equivalent of each Dc is given following `0x202320`, each separated from the next by a space. If there is no printable ASCII equivalent, or the character is a space, "." is used instead.

    57 86 93 93 # H e l l
    96 30 18 72 # o , . W
    96 99 93 85 # o r l d
    19 # !

##### Source-Documented EITE Language sequence files (SELQ), .selq

A variant of the ELQ and ELS formats for easier reading: the ELS source version is given in a comment in the style of the DELQ format, but the number of Dcs on each line is determined by the source lines to which they correspond.

    # dc:
    57 86 93 93 96 96 30 18 72 96 99 93 85 19 #     Hello, World!

##### EITE Record Documents (ERD), .erd

This is a special format in the "Structured" mode used for structured record storage in the EITE cloud. It is not yet defined, but will most likely be a subset of one of the other formats.

#### Structures in the EITE Language

The EITE Language uses the following main types of entity to represent information:

Type

Types are templates describing the structure of objects. They are known as prototypes or classes in most programming languages, depending on whether objects described by them inherit changes to the types made after the object was created. (Objects can be used as types by casting.) Type names begin with a capital letter when in source form.

Object

An object is an entity that conforms to a given type (an _instance_ of that type). The most general type is _object_, and there is no need for an object to conform to any other type.

Block

A block is a group of statements. The routine `block` indicates a separation between blocks, although in most cases block division is indicated implicitly by a `:` at the end of a line (in which case the block indentation level increases), or by the decrease in whitespace marking a decrease in block indentation level.

Project

A project is a single document, and if relevant, any other documents maintained as part of that document.

Module

A module is one or more Library-mode documents that have a package name for addressing the things they provide.

List

A list is an ordered list of objects. An inline list is begun by `[` and terminated by `]`. Example: `listName=["a" [5 6] $b]; say $listName[0]` stores three Objects in a list named `listName` and prints `a`. Objects can be given custom identifiers for addressing them by separating them using `:` , in which case they should be additionally separated by `,` . Example: `listName=[foo: "a", bar: [5, 6], baz: b]; say $listName[foo]`.

String

A string is a list of Dcs. (Because all Dcs can be used in strings, any data type can be cast to a string.) An inline list is begun by `"` and terminated by a second `"`. In source form, `"` and `\` must be escaped using `\`. Example: `stringName="Hello, \"World\"!"` stores the string `Hello, "World"!` in a string named `stringName`. Strings can be concatenated by placing them beside each other: `a="foo"; b="baz"; say $a"bar"$b` prints `foobarbaz`. String literals can be specified without the quotation marks when they are used as parameters to a routine, because then they won't be confused for routine invocations. They need to have quotation marks if they look like numbers, though. I \*think\* context can be used to ensure that they aren't mistaken for types, but I'm not sure about that.

Routine

A routine is a set of instructions for a computer to follow as part of the process of interpreting a document. Similar concepts are known as functions or subroutines in most programming languages, or as methods when used within objects. Routines have an associated structure that indicates what parameters may be passed to it; they will be accessible through a list named `!par`, and if named, then also through their names. Specifying a return type for a routine is optional. If none is specified, it will be treated as "void", meaning no return type is expected. It is denoted by `()` followed by a block of statements, with its structure, if desired, within the parentheses. Example: `String foo(String, String qux?, *){say $!par[1]$!par[2]$qux}; foo("bar" "baz"); foo("bar" 6 "qux") # qux is 6, param 0 is bar, param 1 is 6, and param 2 is qux; foo(qux=6 "bar") # qux is still 6, but now parameter 0 is 6 and 1 is bar` represents an unnamed (positional-only) string parameter, an optional string parameter named "qux", and an unknown number (zero or more) of additional parameters of any type, and prints

    bazbaz
    6qux6
    bar6

. Because literals are printed by default when at the beginning of a statement, the "invoke" routine must be used to invoke a routine in some cases, such as when referencing a routine by a name stored in a variable or constant: `a="I! Am! An! Awkward! Identifier!"; $a(){say "blob"}; invoke $a`. An alternative syntax for routine invocation, omitting parentheses, can be used if desired: `foo(String, String qux?){}; foo qux=6 bar`

Operator

An operator is a short notation or syntax pattern for some common routines (e.g., `Number a + Number b` in place of `add(Number a, Number b)`, or `if true; then say 'Hello, World!'; else die` in place of `if(true, (){say 'Hello, World!'}, (){die})`).

Identifier

An identifier is a name for an object. They are indicated by `$`, except for identifiers for routines, which do not have the `$` prefix. Before the `$` a type signature is often present. Except for routines, `!` following the `$` indicates a language-defined identifier, and must be escaped if used as the first character of a custom identifier. For routines, the pattern is inverted: `!` before an identifier indicates that a custom routine is being referenced (it must be included in calls to `invoke`, as well). `(` following the `$` indicates a special value, not a normal identifier, using Bash's syntax: `$(say "foo"; say "bar")` represents the output of the code between the `(` and the `)`, and `$(<foo)` represents the contents of the file `foo`.

Structure

A structure is the definition of what the structure is that an entity can have, similar to type definitions or type signatures in some programming languages. A type can contain named Structures without any values for defining an interface.

Statement

A statement is a logical line of a document. It can be an invocation of a routine, or a declaration of an entity's structure or value.
# Alignment of the project approach to the traits of the currently emerging new media

Henry Jenkins's article "Eight Traits of the New Media Landscape" (http://nmdprojects.net/teaching_resources/jenkins_eight_traits_of_new_media.pdf) provides eight traits that its author observes in the prominent currently emerging new media. This section of the proposal evaluates this project's expression of this set of traits.

The first of these traits is _innovation_. As a communication medium, the information technology environment aspect of this project proposal is arguably merely an extension and refinement of existing communication media. However, because those existing media are themselves innovative, this project remains a work within new media, even if it is not itself a new medium.

The second trait is _convergence_. This proposal is highly convergent, being a broadly scoped project to innovate across a wide range of aspects of society, industry, and technology. Even regarding only the information technology environment, it is intended to inherit the capabilities of existing computers, which are used for text, sound, image, video, and interactive media, among others.

The third defining trait is _everyday_ presence. As a project to develop a unified system providing all the knowledge resources needed for running a society, if it is successfully completed and used to its envisioned potential, it would serve as the framework for people's everyday lives. When only available in partial form, those portions of it can be used in everyday settings as well (e.g. large chunks of my classwork and other data I rely on and use on an everyday basis (personal projects, music library, email, etc.) are stored and managed using software developed in the course of developing this project).

The fourth trait is _appropriation_. This proposed project ideally will be highly appropriative, because so much work has already been done. It would in all probability be hugely wasteful and impractical to attempt to build everything from scratch, rather than to leverage existing systems (even if only practical through inspiration!) and merely work to fill gaps and integrate the various existing technologies well. That said, reliance on proprietary or externally managed technologies should be eliminated as soon as practical, with all elements of the project and its dependencies being fully libre, because proprietary, non-maintainable, and trade-dependent systems are brittle and are a huge threat to the ability of human society to maintain its standards of living over time.

The fifth trait is _networkedness_. As a design goal for this project, networking should be provided when available, but never mandatory. Systems that depend entirely on networking are, echoing the discussion of the fourth point, brittle. A cloud computing–backed virtual digital assistant, for instance, is thoroughly useless in the event of networking being unavailable. Once constructed, the best tools would be fully usable in a vacuum.

The sixth trait is being _global_. The proposed project is intended to be able to be geographically dispersed, although individual communities would only be able to collaborate on physical projects by being physically colocated, for obvious reasons.

The seventh trait is _generational_. Whether an age gap will affect this project is hard to predict. If it does, it should only be by the choice of individuals, rather than by inaccessibility or prejudice: if people who are a different age than the majority involved in the project, those people should be provided any necessary accommodations to the fullest extent possible (medical care for the elderly, education for the young, and so on). This project should not engage in discrimination based on age, although for the time being probably only adults would be practical for this project to serve, in the interest of ensuring the presence of a sufficient child protection framework (e.g. I think Google doesn't allow kids to use it, so this presumably shouldn't either).

The eighth trait is _inequality_. Unfortunately, this likely may affect the project initially, because a community would presumably be unable to sufficiently support individuals with some disabilities to modern standards until it was somewhat technologically sophisticated, meaning that people involved in the project would need to be able to provide for themselves and (for the physical community or communities) provide transportation for access, restricting practical use of the project to those who are wealthy or otherwise supported. Working to reduce undesired inequality as much as possible should be a design goal of the project, while promoting diversity and freedom.
