The structure of this document is based on "Text-based project proposal: Template" (http://jonippolito.net/teaching/capstone/text_proposal_template.html).

Note that some sections have been re-ordered, to ensure that the most relevant and accessible information is presented first, with lengthier and more abstruse sections placed later. This proposal incorporates some earlier writings on the project.

At the bottom is a bunch of text related to the project. Most of it is probably pretty bad....

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
    - Managed, geographically-redundant computing infrastructure and data archiving
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
- Finances: Develop a financial strategy and budget requirements. As a single, close to broke student without employment or a degree (yet), or a rich family giving me a small loan of a million dollars, I can barely support keeping the lights on for the Web site. (Hosting is going to expire in October, and I haven't figured out how I'm going to pay for it for the next few years. It's somewhere in the US$5/month range. The domain name registration (`futuramerlin.com`) is good through the end of 2022, at which point it will need renewal, which is about US$10/year.)
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
  - Finish specifying and build JavaScript implementation of portable, trivial staging language (StageL)
  - Port existing EITE implementation to StageL
  - Provide and implement StageL inside EITE
  - Get text rendering implemented in EITE
  - UI widgets
  - Implement simple document editor in EITE
  - Complex text rendering support
  - Other EITE development tasks: networking, data storage and distribution, etc.
  - Write C implementation of StageL
  - Benchmark JavaScript implementation versus C→WebAssembly, out of curiosity. WASM would require clang in the toolchain, which wouldn't be ideal until clang can be run on non-WASM EITE, but anyway...
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
- https://web.archive.org/web/20171004135730/https://www.nytimes.com/2017/08/22/world/middleeast/syria-youtube-videos-isis.html
- https://www.archiveteam.org/index.php?title=A_Million_Ways_to_Die_on_the_Web
- 

# Features of the proposed solution, in detail


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

# Needs work

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
The most recent costs of technical infrastructure is US$106.20 for three years of Web hosting, plus US$83.76 for eight year ownership of domain name. The cost for the semester of Web hosting is therefore US$17.70, and the cost for the semester of the domain name is US$5.24. The full implementation of the project is a very large project, and will require substantial investment of time and money. Land and a building for the project would cost tens or hundreds of thousands of US dollars, which I hope to fund by getting a well-paying job enabled by my education. That education will probably require at least two semesters of university without financial aid, which will require tens of thousands of dollars in student loans and their interest. Significant volunteer involvement and/or external investment would be necessary for a full implementation, since the project is too large for me to complete solo.
Audience

The intended audience for the part of this project I am undertaking this semester is very limited. It is simply a technology demo and beginning of an implementation of a tool with larger scope. Consequently, it will presumably be rather limited in its practical utility, making it not suitable for a general audience, and mainly useful as a tool for demonstrating some of the principles used in this project, and as a core starting-point for the implementation of a more substantial and practically useful set of capabilities. People that would be especially benefited by the full form of this project include individuals from marginalized groups, especially those with disabilities, mental illnesses, and the homeless, by enabling them to support themselves through a community and reducing barriers presented to them by discrimination, and by reducing the need for individuals’ dependence on the traditional monetary economy.


I would like to create a robotic gardener. What it would do is automate the process of growing and harvesting crops. By combining small motors and sensors and a simple programmable computer system like an Arduino, a small self-contained box could be constructed that would accept a seed as input and produce crops and more seed as output. This could be used for easily growing many types of plant, by providing different growing instructions and seeds as needed. It could also be built in a way that tries to use energy from the environment efficiently, and avoid excessive use of mains power. This would be helpful in simplifying access to plant products, even plants that are not commonly available easily. For example, if one wants a type of plant like clover that is usually only available in the wild in summer, and not sold in the winter, but the person wants it available to them year round, then it could be grown by the robotic gardener.

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
These do not indicate that information is guaranteed correct within the given authority context, but only that that is the intended authority of the material.

  * Objective consensus: Like Wikipedia. Neutral point of view. Doesn't necessarily represent all points of view equally because of lack of consensus about them.
  * Objective egalitarian: Neutral point of view, and tries to accept all viewpoints as equally legitimate.
  * Subjective consensus: No neutral point of view, but established by general consensus.
  * Objective single/subset source: Neutral point of view, as established by a single source or a subset of available sources.
  * Objective individual/organization source: Neutral point of view, as believed by an individual or organization.
  * Subjective single/subset source: Opinion (no neutral point of view), as established by a single source or a subset of available sources.
  * Subjective individual/organization source: Opinion (no neutral point of view), as believed by an individual or organization.

And the in-universe counterparts of the above:
  * In-universe consensus
  * In-universe egalitarian
  * In-universe subjective consensus
  * In-universe objective single/subset source
  * In-universe objective individual/organization source
  * In-universe subjective single/subset source
  * In-universe subjective individual/organization source
  
Note that not all suggested behaviours are absolute. For example, the document chunk options (see under STRUCTURAL) are not necessary; they are just one option for doing things. Semantic tagging is always good though — the system could probably be expanded a lot to maximize this. Or the automatic bibliography management option à la BiBTeX is optional too, or could be customized, etc. The basic philosophy of DCE is *FLEXIBILITY* — letting the user do what they want in an elegant manner and without undue shenanigans, intrusive 'assistance', or ugly hacks.

====== STRUCTURAL ======


There are two principle structural levels for which elements need to be described: documents and texts. A document is a complete unit such as a book or journal article, which would comprise various textual regions (note that in typesetting some items, such as database records of titles or filenames, only one textual region would be used; in the first, either a "Document Title" or a "Standard" region type would be used, depending on how the database was being queried, that is, the presentation style of the information as a title or as standard text (such as if it were being displayed in a page that contained a list of database fields), and in the second, a "Standard" region type would be used for interface display in lists (other region types might be used at other times) (note that in any use cases when it is in a "Standard" textual region, it would still have the text type Title)). A textual region is a section of content that has one semantic componency, e. g. the body of a document or the title; a document is therefore comprised of texts.
=====Textual region types: =====

* Document title

 * Author name (multiple author names will be compiled into a list) 

* Illustrator name (multiple illustrator names will be compiled into a list) 

* Editor name (multiple editor names will be compiled into a list) 



*  Publisher's name 

*  Address 

*  Printing history 

*  Copyright notice 

*  Dedication 

*  Author's note 

*  Illustrator's note 

*  Editor's note


*  Publisher's note 

*  Introduction 

*  Forward 

*  Preface


*  Prologue 

*  Date 

*  Section title (might change in definition within document based on section hierarchy) 

*  Standard (Document content) 

*  Postlogue 

*  Afterword 

*  Date 

*  Signature 

*  Author biography 

*  Illustrator biography 

*  Editor biography 

*  Typographic credits 

*  Index 

*  Bibliography


===== Document chunks: =====

*  Spine 

*  Cover 

*  Front flap


*  End pages 

*  Title page 

*  Half-title 

*  Contents 

*  Back end pages 

*  Back flap


*  Back cover
===== Text classes: =====

*  Standard 

*  Numbered list 

*  Bulleted list 

*  Block quotation 

*  Poetry
===== Text subclasses: =====

*  Non-person proper name (can be linked to a Weave node) 

*  Person (can be linked to a Weave node) 

*  Non-person entity (can be linked to a Weave node) 

*  In addition, any other text class can be a subclass

====== CONTENTS ======
: various presentation elements need to be addressed, such as animation of other elements, actions on keypresses, the ability to write programs, macros, etc. So basically one could make anything (program, slideshow, animated film) using this technique. Additional functionality like fonts (referenced or embedded), document- or character-specific additional glyphs or glyph modifications, colors, text sizes, text backgrounds and background types, page backgrounds, object stacking, wrap, leading, columns (both linear nd multiple-section/semantic (e. g. the columns in a newspaper being used to store separate articles) (a 'column break' control would be needed for this)), Fontworks and similar, gradients (normal or using variables (e. g. using the text color or background color to determine the color of the gradient) (also as text itself, so text could have a gradient fill or outline)) should also be included.

====== CONCEPTUAL ======


Text language classes are types of text used to denote the language and script of a document or a section of text within the document (e. g. latin/english, han/vietnamese, latin/vietnamese, mixed/japanese, latin/php, latin/base64, latin/html, latin/c, latin/visual-basic-.net, none/whitespace (a programming language), latin/volapuk, latin/romaji, cyrillic/russkiy). They are used for identifying the correct spelling-check language. Characters from other scripts (most usefully, symbols) can be inserted in other script regions however. 


<html>&#42;</html><html>&#42;</html><html>&#42;</html><html>&#42;</html> Are encodings such as volapuk or base64 'languages' as such? Should they be handled differently???

<html>&#42;</html><html>&#42;</html><html>&#42;</html><html>&#42;</html><html>&#42;</html><html>&#42;</html> They should be handled differently. For one thing, spell checking is irrelevant. Also note the distinction between natlangs, programming languages, and encodings in how autocompletion, spellchecking, grammar/syntax checking, hyphenation, display, syntax highlighting, etc. are handled.
===== Cross-language text type classes: =====
 

*  Mathematics 

*  Geometric sketches and graphs (2d, 3d, nd) 

*  Western musical notation 

*  Ancient Greek musical notation 

*  Byzantine musical notation 

*  Feynman diagrams 

*  Electrical diagrams 

*  Flow charts 

*  Braille 

*  Graphs 

*  Tables 

*  Graphics 

*  Hybridization charts 

*  Genealogical charts 

*  Bitmaps 

*  Symbols 

*  Maps 

*  Sign language transcriptions (see Chicago p. 145) 

*  Hyperlinks 

*  Raw data

==== Only meaningful for electronic media: ====

*  Vector audio (such as MIDI or Vocaloid) 

*  Audio 

*  Animated graphics 

* Video

* Interactive panoramic imagery (QuickTime-style)

* Interactive 2D imagery (Google Maps - style; 2d video games too)

* Interactive 3D imagery (Google SketchUp - style; 3d video games too)

* Interactive text

* Software (how will this work?)

* Embedded resource: Typeface data (store a typeface as a DCE file); colour chart data (store a colour pallet as a DCE file); etc.



Specify alt text for bitmaps, audio, and video, because they are binary files. 
====== CHARACTERS ======
 Separate conceptual characters should be encoded (as Unicode does). Variant glyph forms should be provided however, e. g.

{{ :screen_shot_2011-12-13_at_11.49.00_am.png |}}

vs

{{ :screen_shot_2011-12-13_at_11.47.58_am.png |}}


for the letter 'a', because in some source documents, this distinction is important. These glyph forms should be specified by variant form selector control characters (as in Unicode) that for each character have specific defined values. The character without any variant selector should not be required to default to any specific form (the font may determine this). Distinctly from Unicode's handling of this issue, the source separation rule should NOT be applied here; that applies to composite characters (e. g. "cm2" should remain a set of 7 characters (BEGIN UNIT, LATIN SMALL LETTER C, LATIN SMALL LETTER M, BEGIN EXPONENT, DIGIT TWO, END EXPONENT, END UNIT). This may seem clumsy, but it is much simpler for archival of large quantities of data to only have one encoding method for each possible content being encoded. If it is necessary to provide round-trip encoding, the following could be used: BEGIN CHARACTER UNIT, BEGIN UNIT, LATIN SMALL LETTER C, LATIN SMALL LETTER M, BEGIN EXPONENT, DIGIT TWO, END EXPONENT, END UNIT, END CHARACTER UNIT. This will, while remaining roughly internally and semantically equivalent to the previous example (because the CHARACTER UNIT characters are used for handling characters from other standards that are not 'real characters' but rather should be specified as multiple characters), will provide unambiguous round-trip compatibility with existing Unicode or other encoding implementations. A font would not need to have a separate glyph for that unit being viewed as as set of characters or as an individual character; rather, the pile of glyphs that would represent the first character would provide equally well for the second. Each character in an existing standard should have exactly one mapping to a character or sequence of characters in this standard (disregarding CHARACTER UNIT codes), so there will only be one possible mapping for every charater.

===== STYLES =====

Slant, italicization angle, weight, spacing, etc can also be defined using specific values. (might that be difficult, rendering wise? dynamic glyph modification? Eh so what if it is…)
==== Useful: ====
 

*  Serif/Roman (Centaur) 

*  Sans-serif 

*  Equal stroke thickness 

*  Comic book (like in Naruto for dialogue bubbles) 

*  Monospacey (a style that 'looks like' a monospaced typeface ("typewriter"), but because styles don't determine advance width, all it is is a style)

* Fraktur (Fraaaaktur, anyone?)

==== Blackboard styles, mostly useful for math or for education: ====

*  Blackboard Italic 

*  Blackboard Roman
==== Handwritten or script: ====
 

*  Cursive 

*  Chancery 

*  Lucida Handrwriting 

*  Handwritten cursive


*  Handwritten sans-serif
==== Display: ====



*  Papyrus


*  Herculanum


*  Harrington 

*  Underland Chronicles

* Forest

* Centre Post

* Inkcalig
===== SPACING =====

*  Ve r y d e n s e 

*  Dense 

*  Normal 

*  Monospaced 

*  Monospaced unstretched 

*  Loose 

*  Ve r y l o o s e
===== SHAPES =====

*  Upright 

*  Italic 

*  Slanted 

*  Reversed italic 

*  Reverse slanted
===== WEIGHTS =====
 

*  Extra-light 

*  Light 

*  Normal


*  Bold 

*  Extra-bold
===== FILLS =====
 
Plus pattern fills, gradient fills, animated fills, you name it…

*  Solid 

*  Outlined
===== EFFECTS: =====
Whether these are altered by the above font changes depends on the nesting.

Stroke/dot/dash thickness/size/etc can be specified numerically as different from the default to enable such things as big dot - little dot - big dot - little dot patterns of underlines. And just as an example of the flexibility of DCE: the dot/dash patterns of strokes should be able to be modified programattically/dynamically too if desired (able to, for example, use the time the document is loaded to define the stroke pattern, or encode the time in a Morse code underline that updates every second (only in electronic media of course!), etc. EPIIC!
==== STROKES ====

Should vertical advance lines etc be specified here? Where should anchor points go? Kerning lines? Hint lines? etc. See down in Covers section too…

*  Underlined (multiple builds down) 

*  Overlined (multiple builds up) 

*  Struck (multiple is centred) 

Obviously these build up / down / out behaviours could be overridden by the user if so desired…

*  Ascender line


*  Descender line 

*  X-height line
==== DOTS (for used in modifying STROKES and COVERS) ====
 

*  Dot 

*  Rounded dash 

*  Square dot


*  Dash
==== COVERS ====
 

*  Circle 

*  Square 

*  Rounded square 

*  Rounded-corner rectangle like {{ :screen_shot_2011-12-14_at_12.00.43_pm.png|}}

*  Zero position (for typography)


*  Advance width (for typography)
==== COVER TYPES ====
 

*  Normal 

*  Outlined 

*  Outlined negative 

*  Negative


*  Outlined inverse 

*  Inverse
====== COVERAGE ======
 In any system, there should be at least one font that covers all the possibilities to allow for complete typesetting fexibility.
====== ODD CHARACTERS ======

: ASCII transcriptions For use in node titles, transcriptions, &c. 

*  Unknown value: # 

*  Unknown value: illegible: 

* 


*  Unknown value: Guess or approximation: ~ 

*  Unspecified value: } 

*  Escape: \ 

*  Opening grouping character: (


*  Closing grouping character: ) 

*  Approximation range character: _ 

*  Single character wildcard: ? 

*  Multiple character wildcard: $ 

*  Start name reference (use ()s): ! 

*  Alternative: | 

*  Approximate number of metacharacters: % 

*  Error range opening (use ()s): { 

*  Error range plus: +


*  Error range minus: - 

*  Error range plus or minus: ^ 

*  Record sum: = 

*  Non-original data: & 

*  Begin annotation: [ 

*  End annotation: ] 

*  Original value: < 

*  Ommitted portion: / 

*  Insertion: > 

*  Replaced original text with: `

===== Examples =====

: Assume that these special characters are distinguished somehow from the surrounding text to make their usage distinct from the same characters in the text.

==== Comment ====

Hangonaminnit. If these are separate characters, what do we need escaping for?? Maybe so the special annotation characters can be annotating text containing special annotation characters? This recursion is confusing… Also, that could pose a challenge to rendering… how to provide unambiguous visual clues about this kind of thing?? (A document is though possibly going to want to have parts of it that conflict with the determined visual clues… therefore they can't be *totally* unambiguous.) But at least in the edit view maybe there's some way… maybe WYSIWYM editing, sort of??

<html>  &nbsp;&nbsp;Need to think about this…</html>

==== Bibliographic entry. ====

   !(#). "!(Tou 'ta ~(t(f|v)(a|o))niken yo*(%{((**){(+1){(-1)))ai me)". Serialised {(1856^(~2))_1897=1984_~(Winter 1984|Spring 1985). Pages ((&(128_129))|(<(56_}))).
The author's name is unknown, and is being referenced as a node. The title of the book is _Tou 'ta_ and then something like either 'tva', 'tvo', 'tfa', or 'tfo', _niken yo_ and then two (plus or minus 1) illegible characters, _ai me_. The book was serialised beginning between approximately 1854 and approximately 1858, and ending in 1897, and then again from 1984 to sometime around either winter of 1984 or spring of 1985. Two possibilities for the pages being cited are given. First were some page numbers that were not in the original version of the document, which were used to indicate that the portion being cited is between pages 128 and 129 of the non-original numbering. Second was an original numbering system, using which the cited portion is between page 56 and an ending page that did not have a specified number in the original system.

==== Quotation. ====
```
  "This is a very wellwritten>( \[sic\]) book /as `(Mr Carter) said."
```
After the word 'wellwritten', '[sic]' has been inserted. Some text has been skipped between 'book' and 'as'. 'Mr Carter' is replacing some text.
A **[[DCE]] calendar format** is a structure for representing date/time within DCE. Which calendar format the parser uses is specified by the [[DCE calendar identifier|calendar identifier]].

======Ranges:======
A range is specified by:

{base string #1}@4@{base string #2}

where the base strings are the start and end points, and @4@ represents the [[DCE range character]].

======Wrapper syntax:======

The syntax for specifying a set of dates/times/ranges is using the [[DCE record summation character]] (represented here and in the [[Weave]] database as @5@).

======List of formats======

=====How to read this list:=====

Each set of braces {} indicates an option that can be chosen or a value to be filled in.

{@10@|@11@} means choose @10@ or @11@.

All values to be filled in are in the [[DCE number format]].

(@2@2@3@ represents the DCE sequence [[DCE separators|begin separator]] - [[DCE number format|2]] - [[DCE separators|end separator]].)

=====Gregorian:=====

(@2@1@3@ represents the DCE sequence [[DCE separators|begin separator]] - [[DCE number format|1]] - [[DCE separators|end separator]].)

{[[DCE calendar identifier]]}@2@1@3@{[[DCE calendar string]]}

====Base structure:====

 {@10@|@11@}{year}@2@2@3@{month}@2@2@3@{day}@2@2@3@{hour}@2@2@3@{minute}@2@2@3@{second}@2@2@3@{subdivisions of a second}

Example: @1@@2@1@3@**@10@****2012**@2@2@3@**10**@2@2@3@**7**@2@2@3@**15**@2@2@3@**@8@**@2@2@3@**@8@**@2@2@3@**@8@**

What this represents is the year 2012 A. D., 10nth month October, 7th day — Sunday, 15th hour after midnight, and that the minute, second, and subdivisions of a second are unknown. The @8@ is representing a character for an unknown value (see also [[CDCE ideas]]; other of these "Odd Characters" could be used here too). The values have been marked in bold for clarity.

A **[[DCE]] calendar identifier** is a DCE character representing a specific calendar, so that when handling e. g. [[datetime_string]]s the parser knows what [[DCE calendar format|calendar format]] to use. DCE calendar identifiers are also given mappings to ASCII letters by Weave for use in [[datetime_string]]s. If the number of calendars surpasses the number of ASCII letters, multiple letters can be used.

======List of identifiers======

=====Gregorian calendar:=====

DCE: 9

ASCII: G
The **DCE number format** is the proper method for representing numbers in [[DCE]].

Its simplest format is to use the Western/Arabic numerals 0123456789 to represent numbers. The decimal point is represented internally in [[Weave]] by its CDCE equivalent @12@. For example, 3 and three quarters would be: 3@12@75
The **DCE range character** is the character used in DCE to represent ranges in data. DCE code 4. See [[Representing ranges in DCE]] for more information.
The **DCE record summation character** (DCE code 5) is the [[DCE]] character used to denote the union of two records. Its deprecated internal ASCII representation in the [[Weave]] database was =.
The **DCE separators** are ways of denoting divisions in strings. The two relevant characters are //begin separator// and //end separator//. Between the two is a positive [[DCE number format|integer]] denoting the level of separator, 1 being the highest-level separator, and continuing indefinitely.
**DCE** is the //document-character-entity// encoding model/document structure model.

The implementation of it in Weave is [[CDCE]].

It assigns a numeric ID to every character it will encode.

DCE data represents a string of **action**s to be taken. For example, a Character action indicates that the character it represents should be appended to the relevant **output context** (e.g. a screen, a paper document, or a data stream in a different text encoding). ← I came up with the ideas in this paragraph over supper at York tonight (8 February 2014)!

DCE characters are grouped into Classes, that represent certain structures or use case groupings. These classes are not mutually exclusive, but are simply a convenient way to develop the DCE standard modularly. For example, I want to develop a [[DCBoxLayout]] or [[DCLayout]] character class corresponding to the [[Fracture Fluid|Fracture//Fluid]] box layout structure to enable the representation of flexible, semantically represented document layouts.

In the context of DCE, the term "document" is largely used in a general sense, referring not only to static documents but to, for example, documents with embedded multimedia, or interactive Application documents.

====== Brainstorming ideas: ======

DCE should have Lego Dcs — be able to represent a Lego structure using DCE. DCE should use a HTML-based administration frontend to access characters, and manage characters and mappings (add/remove/edit). Mappings need to be stored for EACH version of DCE — not just the current one —… so a method for managing separate versions of DCE would be necessary. Use a SQLite database to store DCE data? (note 13 June 2013: I think MySQL would be better suited) Could add extensions to DCE to allow storing database-style data, & then use a DCE document to store the DCE database. That would be interesting… Should have Dcs & mapping databases stored separately & by version separately to avoid accidentally modifying data from previous versions.
**dceutils** is PHP software for working with [[DCE]] data. Previously named [[libdce]]; renamed to dceutils 3 October 2013 due to a naming conflict with the [[https://gitorious.org/gstreamer-omap/libdce/source/80587a8de98494ebca4a20e68f47493769b13bbf:|Distributed Codec Engine]].

Eventually it should support character set inheritance, so that, for example, precomposed Tibetan stacks conforming to the [[ref:GB T 22238-2008|GB/T 22238-2008]] standard (an extension of Unicode, with specific PUA assignments) could be converted to DCE with minimal effort by inheriting the Unicode parser and only providing mapping overrides for the needed codepoints.

===== Subproject scope =====

  * DcCore: Conversion utilities, Dc_Data class. [work in progress]
  * DcMeta: Support functionality, including DcMetaArgumentHandler().
  * DcRender: Rendering and related operations. [not begun]
  Might be useful: http://www.slideshare.net/DanLynn1/storing-and-manipulating-graphs-in-hbase


====== Example schema ======
Note that this is simplified (doesn't deal with character encodings, localisation, strings, etc.... FIXME

Rough example of how things might work (note that type 2 is a relationship and does not necessarily take data but has a node as its target, while type 3 is a metadatum and has to take data but only has its root node:

===== Classes =====
^ id ^ description ^
| 0 | node |
| 1 | relationship |
| 2 | metadatum |

===== Types =====
^ id ^ class ^ description_1 ^ description_2 ^
| 0 | 0 | person | |
| 1 | 0 | basic node | |
| 2 | 1 | has author | is author of |
| 3 | 2 | has title | is title of |

===== Users =====
^ id ^ username ^ salted_password_hash ^ node ^ biometrics data ^
| 0 | test | blahblahblah | 0 | DCEe... |

===== Nodes =====
^ id ^ node ^ date ^ type ^ data ^ node_1 ^ node_2 ^ author ^ permissions ^
| 0 | 0 | DCEe... | 0 | DCEe... | | | 0 | DCEe... |
| 1 | 0 | DCEe... | 0 | DCEe... | | | 0 | DCEe... |
| 2 | 1 | DCEe... | 1 | DCEe... | | | 0 | DCEe... |
| 3 | 2 | DCEe... | 2 | | 1 | 0 | 0 | DCEe... |
| 4 | 3 | DCEe... | 1 | DCEe... | | | 0 | DCEe... |
| 5 | 2 | DCEe... | 2 | DCEe... | 1 | 0 | 0 | DCEe... |
| 6 | 4 | DCEe... | 3 | DCEe... | 1 | | 0 | DCEe... |
====== Comments and ideas ======

How to deal with complicated situations, e.g. three-node relationships? Could relationships all just be special cases of metadata? (Or maybe vice versa, although I don't think that would work?) What about nondirectional relationships? Or unidirectional?

Everything in one big table??

How to delete relationships??

Relationships and metadata as nodes, all together in one big table??

For each node: id

For each node revision: id, node_id, revision_date, type, data, node_1, node_2

node_id: related to node table

type: e.g. "Node has number of pages metadata" or "Data" or "Person" or "node_1 is author of node_2"

data: DCE data ID associated with the node (for metadata, this would be the value of the metadata; for a data-type node this would be its contents)

node_1 and node_2: two nodes that this node represents a relationship between
  * [[Authority contexts]]
  * [[Modular Dc Sequence Builders]]

  * Tagged nodes, including a system for storing the tags as part of a tag grouping (which could have permissions like a document). Would also have a global tag system, so people could add tags to the global tag grouping.
  * Liberal relationship formation and node typing: A node can be assigned any other node as its type; a relationship can be from any type of node to any other type of node even if that is not how the relationship is defined (this situation could display a warning, for example)
  * Hopefully these traits would help keep restrictions from being a pain in the ass


====== Data flows ======
Listed: tolerance per item — (maximum ping in ms | minimum bandwidth per second)
===== Fully featured client =====

==== Input ====
  * keyboard(s) and button(s) — (0 | 200b)
  * microphone(s) — (5 | 6144kb assuming 32 bits per sample 192kHz) (calculated using http://www.theaudioarchive.com/TAA_Resources_File_Size.htm )
  * GPS(es) — (1000 | 1kb?)
  * accelerometer(s) — (1000 | 512b?)
  * ambient light sensor(s) — (1000 | 512b?)
  * camera(s) — (100 | 48gb) (assuming 8K 60fps 48-bit RGBA) (calculated using http://web.forret.com/tools/video_fps.asp?width=7680&height=4320&fps=60&space=rgba&depth=48 )
  * pointing tool(s):
    * Simpler:
      * mouse — (0 | 800kb?) ( see https://answers.yahoo.com/question/index?qid=20060707143627AAsH1ay )
      * pointing stick
      * trackball
      * trackpad
    * Complexer:
      * tablet
      * touchscreen
      * multitouch trackpad (0 | 200kb?) (see http://www.digikey.com/product-search/en/integrated-circuits-ics/data-acquisition-touch-screen-controllers/2557134 )
      * 3-dimensional pointing tools
==== Output to user====
  * Display(s) (2-dimensional)
  * speaker(s)
  * Display(s) (3-dimensional)
  * status (etc.) light(s)
  * projector(s)
===== Server =====

==== Input from clients ====
  * Requests: 
    * insert record
    * get record
    * get matching record list (e.g. search results)
    * establish authentication
==== Output to clients ====
  * Responses:
    * Confirmation messages (ACKs)
    * records
    * record lists
    * authentication confirmation

====== Note ======

DCE named syntaxes? (as extension of named sequences) E.g. U+1F4B0 MONEY BAG could map to a Dc "Money bag". The Money bag Dc would be defined as: <Enclosing Bag>(<Class:Currency symbols>)

This would allow a) the mapping to represent the money (currency symbol) semantic of the Unicode character and b) a user to create a visually identical sequence with something else in it (e.g. <Enclosing Bag><Begin Discrete Block><Begin Style Override><Begin Style Definition><Sans Serif><End Style Definition>XXX<End Style Override><End Discrete Block> to create a flour bag if the user wanted the same style as the Money bag)

====== A little argument for the devising and establishment of an informatics economy and libertarian welfare NGO ======


[[http://futuramerlin.com/Diffed-and-downloaded-19Oct2014/DiffNow%20Comparison%20Report.htm|Comparison with version 8, made using DiffNow]]



===== Part 1: The Institution =====


==== Rationale ====


I would like to establish a project to create an adequate infrastructure for managing and providing for the basic needs of society. This organization could exist alongside governments and other social structures, as well as potentially taking their place in the event that they collapse or fail to perform as expected (as appears to be happening, for example, in several African countries) (Fund For Peace 2014; Wikipedia 2014).

In this document, I will use the term “person” to refer to any independent, quantizable (able to be assessed discretely and independently of other elements) unit with a soul; a firmer, more satisfactory, analytical definition of it is unfortunately out of my grasp at present, as is a complete understanding of whether some things are rightly considered as persons. For example, does a rock have a soul? If that rock is is split in two, does each resulting portion have its own soul?

In my view, as human society is sometimes unpredictable in the rights and safeties it affords those partaking of its benefits, I believe there is a need for a unified institution to be established outside of the realms of traditional governmental structures to provide some semblance of a filling of this void. While humans, as any other life, have the liberty of doing as they choose, and, in one way of looking at things, have no obligation to any particular social contract or structure, — (in other words — technically, everyone has the choice to do what they want, inasmuch as they can send the electrical signals to their nerves they choose to when they choose to, assuming they have such physical capacity) — while such “liberty” is indeed held by humans, they have come to expect and rely upon such social constructs for their safety and mutual benefit. For such reasons I feel it ideal to pursue the measure of establishing a single institution as I mentioned above. Those who choose not to partake of the protections I propose that such an organization would provide would, of course, open themselves up to forceful control by any who see fit: they would end up finding themselves in Hobbes' “state of nature”, “all at war with all” (HON211 2014). Locke writes that “The natural liberty of man is to be free from any superior power on earth” … “to have only the law of nature for his rule” (Locke 1997, p. 15). There presently exist many types of authority in the world, for example: the law of war, the principles established by the United Nations and similar organizations, the laws established by states' governments and their constituents (in the United States this would encompass the powers vested in the national, state, county, and township authorities, for example), and the bounds enforced within a family. What I propose in this essay does not neatly fall into any of those categories. It would not attempt to interfere with those authorities, allowing it to coexist with them — thus its purpose being mainly the protection of and provision for those people who choose to become, so to speak, the shareholders and benefactors of its contract. It would ideally provide some recourse for those who would desire asylum from those other power structures, by holding land, under its exclusive control, that it could share in various ways. These ways could include through the issuance of private parcels within which the owners could dictate their terms, and through the construction of tenements made available without charge to those participating in the organization I propose. Within all of these, parcels and tenements, the sole binding policy (in other words, the protections and/or restraints imposed through the organization's policy, doctrine, and practice) would be those of the organization (beyond any that may be held by private landholders). (There could also be, and in all probability would be, unallocated land over which no control is held or claimed.) Through allocation of such private parcels, large governments could theoretically be provided land technically held by this organization I propose, them being given authority over the land to dispense of as they choose — although such an arrangement would perhaps be unnecessary, as land with existing power structures would presumably be already managed in fair order. Locke writes that a king's privilege “may be questioned, opposed, and resisted” if he uses “unjust force”. In all, the basic premise of what I propose is yet another layer of order provided on an opt-in basis within the context of a world which is, fundamentally, in what I would consider a state of nature with power structures founded within it. (This brings to mind one of my arguments against some philosophical ideals of “anarchy”: the true absence of any social order imposed on the world would by definition allow the imposition of order by those within it, thus creating something of a paradox.) And yet, Locke writes that if “the electors or ways of election are altered without the consent and contrary to the common interest of the people” then “those chosen are not the legislative appointed by the people” (Locke 1997, p. 121). This is used as a justification for revolution, for example in Thomas Jefferson's Declaration of Independence, as mentioned in Professor Glover's lecture[TODO cite].

I believe that the general rules of this organization should be established on the basis of rights: rather than making a rule that, for example, prohibits murder, instead a rule should be established that protects individuals’ right to life. In such a way, rules would not be created that infringe freedom more than that which is necessary to retain order in society.

In the event that an individual who is party to the organization has interests that conflict with the interest of, for example, a government within the context of which this organization exists, such action should be taken as is deemed prudent and sensible. It would be, for example, distinctly unwise to antagonise a militarily powerful government the citizens of which are under threat from an individual who is party to this organization in the interest of protecting this individual’s rights. It can be considered that all who are not a member of any given social contract being discussed are in a state of nature. In this document, the social contract being discussed is that held between the members of this organization. From this perspective, there is no evident reason not to hunt for food those who are not party to this contract (for the same reason that humans hunt deer even when they are part of a social contract that forbids killing each other, since the deer are not party to their social contract); however it would likely be imprudent to hunt those who are protected by an institution with a strong military force.

In my model world-state, such an organization is sufficiently extensive and effective as to in effect preclude the necessity of separate governments, outside of the individual community branches of the organisation serving to manage the organisation’s local presence and interests.

==== What such a structure would provide ====


This project would, in its complete form, provide useful elements of survival: shelter, nutrition (including food and water), medical care, education, and information. It would do this as its fulfilment of its objective of managing the various needs of a society, by enabling people to be effective participants in that society.

One of its fundamental elements would be the creation of a butt-based information technology system, intended to provide rapid information storage and retrieval (ISR). This would likely use an append-only NoSQL database to store a softly directed concept graph. It would use, in the current implementation I am working on, eight columns: id (integer), node (integer, related to id), date (integer, related to a String node’s id), type (integer, related to type.id), data (integer, related to a String node’s id), deleted (Boolean), author (integer), access_control (integer, related to a String node’s id). Other tables would be needed, including class (id: integer; description: string); …[TODO]. [Also TODO: Looking at it as an object inheritance hierarchy?] [Also TODO: Asynchronous/non-request-driven (background/daemon/triggered/cron tasks)] I think that most or all knowledge can be effectively represented using three basic structures: nodes, relationships, and metadata. I am also developing the Document-Character-Entity encoding system (DCE), which is a state-switching hierarchical many-to-one binary character encoding model. DCE comprises a list of “DCE characters” (Dcs), which are individual semantic units that can be compiled together as a list, as well as individual mapping tables from Dcs to bytes; these mapping tables are linked by state-switch Dcs. Each Dc has rules indicating the syntactic context in which it can be sensibly used, and instructions for parsing it. These rules can be defined using the keywords if, then, else, precedes, succeeds, invalidate, any, state, valid, e.g. if Dc 165 meant “start styled region” it could perhaps be defined as: “if(precedes(<any, [end styled region]>)){state(styled);valid;}”. A Backus-Naur Form representation of this language would be [TODO].

The nodes of a graph are the individual records that it stores. Relationships between those nodes are the edges of the graph, although it is possible that the system I am developing will provide for more complex relationships, for example by allowing relationships to connect several nodes to each other in a variety of ways, although whether that proves necessary or useful remains to be seen. Metadata are an item’s traits: information such as the title of a node, or a description of it. The way I have designed this system, placing all three of these types of entity into one table, allows relationships and metadata to have the attributes of nodes: for example, metadata could be attached to a relationship or another metadatum, or relationships could be specified that connect any combination of the three. There are many existing ISR systems, such as flat files and flat searching, flat-search filterable record sets, sorted records, a variety of tree and tree-like structures, tagged or labeled records, traditional tabular databases, relational databases, sparse tables, sparse matrices and entity-attribute-value models, graphs and digraphs, Boolean-queriable datasets, hierarchies, automated natural-language document acquisition and indexing, metadata-enriched natural-language document acquisition and indexing, and selective-display intelligent query results. The system I am proposing would primarily leverage a graph structure augmented through the use of richly labeled nodes, providing great flexibility in the structures it can manage; in addition, I believe that most or all of the above structures could be emulated within a graph-driven environment.

One large challenge faced by the system I propose is the role of server-side processing (SSP). SSP is a vital element of much of modern cloud application software, but it does not fit nicely into the information-driven model I propose. I think the best solution for this is through the application of dynamic parsing of DCE content as it is returned by the server. While this strategy could present a serious security risk, if the dynamic content is handed off to servers dedicated to this purpose and sandboxing is employed, I think this risk could be effectively mitigated, at least to the extent of avoiding access privilege escalation attacks against the main database. This will also provide effective options for building the wide variety of ISR systems I outlined above as both self-hosted applications and in userspace.

There are a variety of content sources that would populate this ISR system: publicly available datasets, creative works, and other resources; resources added and/or created by individuals using the system; “dark” content such as is currently held by social networks, governments, and other organizations that do not publicly release their records; moderated content that has been reviewed and fact-checked and annotated as such by the NGO; dynamically generated content; and computed content, for example, the results from a mathematical calculation or an operation on a dataset.

I propose that this ISR system be leveraged by the NGO for several purposes. First, it can be used to record the individuals who are participants in the NGO. Through the development and application of a multipronged biometrics system, perhaps similar to that of India’s Aadhaar program (Wikipedia 2014(d)), the use of names could be easily foregone, allowing for people who are mononymous, change their name frequently, have unconventional names (such as names without graphic representation, names that mutate over time, musical names, graphic names, etc., or even names that simply are not very common (For example, 马𩧢 (Mǎ Chěng) in China who is inconvenienced because her name is not supported by China’s computer systems. (LaFraniere 2009;  Wikipedia 2014(e)))), have no name, and so on and so forth to easily use the system, without being subjected to the usual tribulations that accompany any of the above in many modern governments. (It would also eliminate similar gender identity and other issues in receiving government services.) While instability of identification traits in individuals, either through subversion of the system or through chance, is indeed a concern, both for positive and negative identification (Sahoo, Choubisa, and Prasanna 2012), hopefully a sufficiently deep set of metrics could be established to prevent this from being an issue. When an individual becomes part of the NGO, they would be enrolled in the biometric identification system, and marked with a system for tracking of some type. This could take several forms: the most practical and useful, probably, would be a wristwatch-like interface to cloud computing systems that would contain a GPS system and other useful electronics. The purpose of this would be the providing of emergency services: in the event of an emergency, the wearer could interact in it in a way to convey the existence and, if possible, the nature and situation of an emergency. This information would be entered automatically into the ISR system, which would provide a report of the emergency, including the person’s location, their direction and speed of travel, any pre-existing health conditions, their current health state (heart rate, blood pressure, and such). The system could automatically delegate the emergency to a nearby station of the NGO, which would act (presumably with the assistance of emergency response services) to resolve the situation. (I recall having encountered similar systems designed for elderly or disabled individuals; these served in large part as the inspiration for this scenario and solution.)

This system also would provide an excellent opportunity for surveillance. By unifying all document processing and communications within the organization into the ISR system I propose, the process of collecting this data and monitoring it for threats would be vastly simplified. There are certainly compelling arguments against surveillance, but if one does not have faith and trust in the organizations created to protect them, those organizations have clearly failed at their purpose and begun to act not in the interest of those whose interests they are designed to protect, but most likely rather in the interest of their own perpetuation for the benefit of those who hold the power to control them. Thomas Jefferson famously wrote in the Declaration of Independence

“that all men are created equal, that they are endowed by their Creator with certain unalienable Rights, that among these are Life, Liberty and the pursuit of Happiness. —That to secure these rights, Governments are instituted among Men, deriving their just powers from the consent of the governed, —That whenever any Form of Government becomes destructive of these ends, it is the Right of the People to alter or to abolish it, and to institute new Government, laying its foundation on such principles and organizing its powers in such form, as to them shall seem most likely to effect their Safety and Happiness” (Jefferson 1776);

in this rather radical passage he lays out in shockingly blunt language the Lockean principle that government is more of a means to an end than an end in and of itself. It is from this basic premise that I draw my conclusion that surveillance in the interest of safety of the people by the institutions they create for their protection is an excellent strategy; I also feel that similar scrutiny must be brought to bear upon the institutions themselves by the people who have created them, thus ensuring that those institutions act effectively in their interests. In addition, these institutions should never attempt to withhold armaments from the people they protect: individuals should be provided the means to create the weapons held by their government. At present this would be impractical (it would, for example, be foolhardy to attempt to overthrow a nuclear power at present, and yet giving nuclear weapons to every person would likely end up in global annihilation), but a long-term global general de-escalation of arms is of significant importance, so that people can, relatively realistically, be in control of the institutions they have created in power as well as in name. Any revolution, of course, would likely only be engendered by horrible social mismanagement or oppression triggering a societal consensus to revolt (this has indeed been the case in some areas recently, such as in the Egyptian revolution in 2011 (Al Jazeera 2011)); this is quite fortunate as if it were not so, unpleasant chaos would no doubt ensue.

Education and qualifications could be tracked through this system, as could taxes. For example, when a person completed testing by the organisation in a given subject, that score could be recorded in their profile in such a way that it could be used to determine what jobs they are allowed to work at. Taxation should be managed through time, so that a person would put in a certain number of hours of work selected from the jobs that need doing according to the ISR’s task record tracking system (possibly the number of hours necessary for a given amount of the organization’s services provided would be related to the level of qualification necessary for the work in question) to receive the organisation’s services in exchange. The person could choose which services to allocate their time credits to — for example, requesting food credits, requesting tickets to operas, or donating them to a militia. In such a way, the taxes levied would hopefully never have to be put to a use the individual did not believe in. Trading could also perhaps be managed through the ISR system.

==== Implementation methodology and practical concerns ====


Land property rights are often contentious. For example, if most of the farmers in a community use barbed wire to impede predators’ travel onto their property, thus averting the risk they present to their livestock, but a landowner whose property is surrounded on all sides by the property of these farmers wants to hunt the predators for their fur, there is a conflict between the interests of the landowners: the presence of barbed wire will interfere with the enclosed property’s supply of fur, while the absence of it will interfere with the outer properties’ supplies of livestock. For this reason, I think that the best solution is to have private land allocations be relatively small, and surrounded by buffer zones of publically owned land. In general, privately owned land could then be used in whatever manner desired by its owner. Some exceptions to this that seem to me rather inevitable would be: the use of streams (interfering with a stream to the detriment of public access or downstream property owner(s) should be restricted); the introduction of invasive species (as they can spread to public land or other properties); the introduction of dangerous quantities of radioactive substances (as they can present a health hazard to life outside of the property); and so on and so forth. These restrictions seem to be a necessary evil until a solution to the problem is found.

A system for punishment for violating the standards of this organization could be created by the removal of benefits and protections provided by it.


===== Sources =====


Al Jazeera. “Timeline: Egypt's revolution”. 2011. ( http://www.aljazeera.com/news/middleeast/2011/01/201112515334871490.html )

Apache Software Foundation. The Apache HBase™ Reference Guide, Revision 2.0.0-SNAPSHOT. 2014. Chapter 5, “Data Model”. ( http://hbase.apache.org/book/datamodel.html )

Fund for Peace. “The Fragile States Index 2014”. 2014. ( http://ffp.statesindex.org/rankings-2014 )

Gibbs, Phil. 1996. (Updated 1997 by Sugihara Hiroshi.) “What is Occam’s Razor?”. ( http://math.ucr.edu/home/baez/physics/General/occam.html )

Glover, Robert. Lecture of 2 October 2014.

Haddon, Mark. The Curious Incident of the Dog in the Night-time. 2003.

Jefferson, Thomas. “The Declaration of Independence: A Transcription”. 1776. ( http://www.archives.gov/exhibits/charters/declaration_transcript.html )

LaFraniere, Sharon. “Name Not on Our List? Change It, China Says”. New York Times. 2009. ( http://www.nytimes.com/2009/04/21/world/asia/21china.html?pagewanted=all&_r=0 )

Locke, John. The Second Treatise of Government. 1997.

HON211. Discussion in HON211 class of 2 October 2014 — Hobbes' “state of nature”, “all at war with all” was mentioned

Malewicz, Austern, Bik et al. “Pregel: A system for large-scale graph processing”. 2010. In Proceedings of the 2010 ACM SIGMOD International Conference on Management of Data. ( http://dl.acm.org/citation.cfm?id=1807184 )

Personal conversation

Sahoo, Choubisa, and Prasanna. “Multimodal Biometric Person Authentication: A Review”. 2012. In IETE Technical Review, vol. 29 issue 1, January–February 2012.

Stravinsky, Igor. Poetics of Music in the Form of Six Lessons. 1970.

DJ Spoke. “Million Miles Away”. Trance Number Ones, Vol. 1. 2007.

Trask, R. L. and Mayblin, Bill. Introducing Linguistics. 2005.

Wallace, Elliot. “Analytical Paper 2”. 2013.

Wallace, Elliot. “Articles”. 2012(b).

Wallace, Elliot. “Weave structures”. 2012.

Wikipedia. “Entity-attribute-value model” (revision 623968433). (2014(c)) ( https://en.wikipedia.org/w/index.php?title=Entity%E2%80%93attribute%E2%80%93value_model&oldid=623968433 )

Wikipedia. “List of countries by Fragile States Index” (revision 626538232). 2014. ( https://en.wikipedia.org/w/index.php?title=List_of_countries_by_Fragile_States_Index&oldid=626538232 )

Wikipedia. “Naming laws in the People’s Republic of China” (revision 590983533). 2014(e). ( https://en.wikipedia.org/w/index.php?title=Naming_laws_in_the_People%27s_Republic_of_China&oldid=590983533 )

Wikipedia. “Occam’s razor” (revision 629036926). 2014(b). ( https://en.wikipedia.org/w/index.php?title=Occam%27s_razor&oldid=629036926 )

Wikipedia. “Unique Identification Authority of India” (revision 627783261). 2014(d). ( https://en.wikipedia.org/w/index.php?title=Unique_Identification_Authority_of_India&oldid=627783261#Security_features )

009 Sound System. “Dreamscape”.



When a statement is not accompanied by a citation footnote, it is likely from any of my opinions and things I have picked up as “common knowledge”, and/or syntheses of the various texts listed above (although I have tried to put footnotes on the latter).

====== UI ideas for the Ember project ======

===== Button =====

Layers:
  - Background
  - Highlights (like murrine, except not round: `-. `-' .-' .-. = left up right down, respectively)
  - Content
  - <del>Content highlights (?) (like the iOS glossy-icon overlay)</del>

Instead of content highlights, have a boolean parameter for stacking order that allows the Highlights layer to go above or below the Content layer.
**Fracture%%//%%Active** is a in development web service for providing data storage, manipulation, and web UI construction to authorised clients. Provides access to the [[DCE utilities]]. Renamed from [[Futuramerlin Active Scripting Library]] 3 October 2013.

It should use a database to maintain a list of API keys (not really, since it's not an API, but you get the idea). Those keys could be assigned unique numbers by the Token Registry.

====== Components ======

  * FractureTokenRegistry
    * Accepts: request for a key and paired value [required even for simply assigning unique identifiers, so as to enable some amount of reverse lookup], OR a retrieval request, specified by key
    * Does: Adds a key to the key registry, making sure to prevent conflicts/race conditions, OR reads a key's accompanying data from the registry
    * Returns: A new key, OR the retrieved data
  * FractureFMDR
    * Accepts: a submission of data (see [[Futuramerlin Document Registry]] for information on specifics of database fields), OR a retrieval request, specified by ID
    * Does: Adds a record to the Document Registry, making sure to prevent conflicts/race conditions, OR reads an ID's accompanying data from the registry
    * Returns: A new ID, OR the requested data
  * FractureStorage
    * Accepts: data (optionally with authorization code) OR request for data, accompanied by key OR request for removal of data, providing a key and an authorization code for authentication OR request for updating data, providing a key, data, and an authorization code for authentication
    * Does: store data, using FractureTokenRegistry to get unique identifier OR read data OR remove data (accompanied by removal code) OR replace data accompanying key with new data
    * Returns: identifier OR data OR confirmation OR confirmation
  * FractureDceutils
    * Provide wrapper around necessary [[dceutils]] functions, including converting to/from base64 Dc list, converting a sequence of key/value pairs of arbitrary base64 Dc lists to a DCE document, and extracting data from a DCE document given a key.
  * FractureDB
    * object-oriented wrapper for some common database operations around PDO
  * SpecialPurposeUtilities
    * removed from roadmap

**Futuramerlin IDs** are sequential, unique numbers assigned. The current registration data is the [[Futuramerlin Document Registry]]. These are not the same as [[Token Registry]] keys.
**HTTP sync**: be able to keep a local, up-to-date copy of a website w/o having to redownload each file every time (check modification times & such). (what I wanted for WG2 document registry) Part of the [[DCE interface]] project.
**Metadata** are records of concrete attributes of [[nodes]]. See [[metadatum]] for more information.
A **metadatum** is a record of a concrete attribute of or an objective truth regarding a [[node]], such as the number of words in a book or the dimensions of a sculpture.
Idea: Modular Dc Sequence Builders

For instance: A set builder: Collects nodes. Could be used for file uploads, etc.

So, if I want to "upload" a file (send it to an Ember app), I am given a set builder dialog. It lets me pick a document or data record to send. Then, the set containing that document (at its present revision) is saved as a node; that node ID is then passed to the app. The node would have a trait indicating that it was static (that the contents it references would not be able to be changed — just revisions of them at the present state). Alternatively, a dynamic set could be created, in which the document would be able to be updated. Sets could have restrictions e.g. about how many documents they could contain, whether they could contain complex structures (such as a directory tree), whether one document could be swapped out with another or not, (or whether they are dynamic or static). Sets could also be driven by search criteria (e.g. the most relevant 10 nodes for a given keyword, or all nodes matching "DOOM" XOR "MOOD", or all four nodes with type Musician and a "is member of" relationship to "The Beatles", or the rapidly changing set of nodes with type Musician and a current or past "is member of" relationship to "Yes"), or built programmatically from new or existing nodes. This would allow file uploads, searches, etc. to all be driven using the SAME basic user interface module. Basically, a file picker on steroids. The set node would have a Dc sequence representation, as do all nodes, so this is really a Dc sequence builder. A set builder could also be used, for example, to choose what nodes to perform an operation on. So, if I'm writing an app to find all the "has foo of" relationships, delete them, and create corresponding "has bar of" relationships, I could create a dynamic set representing all the "has foo of" relationships, the app would know the node ID of that set, and it would then operate on the present state of that set whenever it is run. Of course, like anything else in Ember a set could "time travel" — a new set could display its results as if it had existed at a previous time, or the previous contents of the set could be displayed even if it did exist then. Another application of the set builder could be creating an Ember theme to share with the community that displayed the current top 10 tracks on the Billboard Hot 100 — a set could be created representing the top 10, and a rule could be created if desired to deal with the condition if the Hot 100 was discontinued: the set could be configured to return nothing, to return a fixed list, to return the top 10 from the final edition of the charts, etc..

Likewise, a Color sequence builder should exist, and a Time sequence builder, and a Number sequence builder (could handle variables and complex expressions!), and a Mathematical Equation sequence builder (which would create a Number sequence builder for numbers).
====== n-space-native computer graphics system ======

Idea for a robust //n//-space-native multithreaded compositing computer graphics system...:

There can be many applications.

Each application can write to many source spaces, each of which has its own pair of buffers. Each source has two buffers so the data can be read by the compositor at any time, even while the source AND one buffer are being updated. That way, the compositor doesn't ever have to wait. It could just not paint things that weren't ready, but then that could make those things flicker.

There is one OS output system.

Compositor is a space of the same type as the output (for a 2-dimensional computer screen, for example, the composition space is 2-dimensional).

A space is an //n//-dimensional data structure of graphics (generally vector) objects. Except for the composition space, spaces are organized in relation to other spaces (the origin of the enclosed space corresponds to a given position in the enclosing space). When the enclosed space has more dimensions than the enclosing space, each extra dimension can be chosen to be sliced, projected, or (sliced and?) protruding from the enclosing space. The compositor should also be able to handle other cases correctly, e.g. when the size of one unit in a space is different from another, when a space is rotated relative to another, when the size of one unit changes within a space, unusually shaped spaces, spaces that wrap around at the edges, spaces with holes in them, spaces split into parts, spaces with areas that teleport, spaces that change over time, two or more //a//-dimensional spaces with //b// intersecting dimensions (for //b// less than or equal to //a// — the other dimensions protruding), etc..

Regarding unusually shaped spaces: consider a piece of string as a one-dimensional space. It has a clear linear point system along its length, but it can be bent within 3 dimensions. This case should be handled correctly by the compositor.

FIXME: How to handle situations where an application needs to reference another application's spaces? Shouldn't be too hard to do, but maybe should have some sort of security/access protection system in place....

{{ ::diagram-graphics-system-15may2014-v2-15may2014_crop_15_may_2014.png?1000 |}}

The finely dashed lines indicate data going to or coming from multiple instances of the structures shown.

To clarify: the compositor should be able to composite any number of simple or complex //n//-dimensional spaces into a single simple //n//-dimensional space.

===== Pseudocode for the methods: =====

==== Semaphores used, and their meanings/purposes: ====

  * When S is up, Compositor can read buffer A
  * When T is up, Compositor can read buffer B
  * When U is up, Source can write to buffer A
  * When V is up, Source can write to buffer B

==== Source.push() ====

```
if(S, V are up):
    T.down()
    copy Source to buffer B
    T.up()
else if(T, U are up):
    S.down()
    copy Source to buffer A
    S.up()
```

==== Compositor.pull() ====

```
if(S is up):
    U.down()
    copy buffer A into Compositor
    U.up()
else if(T is up):
    V.down()
    copy buffer B into Compositor
    V.up()
```

A **node** is an individual record of an item. It is the central element to data organisation in [[Weave]]. A node can have both [[metadata]] and [[relationships]] to provide information regarding it. 

It can have a [[data]] file attached to it.

A node's dissemination can be controlled through the use of [[Permissions]].
**Nodes** are individual records of items in [[Weave]]. See [[node]] for more information
**Physical location ideas**: retail area, meditation area, soup kitchen, office (?), free shelter. Objective: provide a peaceful sanctuary where people can go when they need somewhere to go. Could have modular housing underground, extensible by addition of units? Meditation area & soup kitchen should be 24/7. Have work space for producing full-body suits? ←far-out idea, probably… Have multistory gardens, with mirrors to reflect sunlight in?
**Quick look equivalent** behavior (proposal): when using file manager or [[DCE interface]] [[project browser]] or [[indexing launcher tool|Home Screen]] (or KFind?), space should be the trigger hotkey for previewing documents Quick Look style. If a document or documents is/are selected, hotkey previews those. If no document or documents are selected, document under cursor is previewed & highlighted using a special color. While previewing documents, the arrow keys can be used to navigate between which document is being shown. Previews of multipage documents should be scrollable, & audio/video should be playable.
A **relationship** is a description of the connection between two [[nodes]].
**Relationships** are information regarding the connection between two [[nodes]]. See [[Relationship]] for more information.
Representing ranges in [[DCE]] is handled using the [[DCE range character]], as such: [start value] - [range] - [end value].

2015-01-11 note: (note that the previous note, dated 2014-01-08a09 was actually in 2015). I should add another (maybe 2 more?) sections to the Ember book, one detailing the knowledge necessary to build a society from scratch, from skills necessary for basic survival, to current technology; as well as perhaps history that can be used to understand what the best systems of government are, etc. — and the other describing Ember as a book (since there are all the other aspects of Ember — the media library, the computing environment, etc. that have sections of the book, perhaps the Ember book should have a section).

2015-01-12 note: To add to Ember book: a mathematics section in the skills section.

2015-04-22a23 note: The [[ref:PHMV]] ([[ref:Pixie Hollow Music Video]]) is effectively a dead art form. Because the Pixie Hollow game — the medium through which the videos are created — has been closed, never again <del>will</del>can such artworks be created, most likely. And as copyright holders choose to take them down, there might be fewer and fewer of them in existence, until perhaps they have all disappeared, mere specks of dust in the ashes of history.
====== Structuring EMBER DMS ======

The [[Ember]] data management system: project objectives, implementation plan, and operational structure.

===== Project objectives =====


===== Implementation plan =====


===== Operational structure =====

**Weave** — the subject of this wiki, at the time of its creation — is a database designed to use relationships to organise information.

It is an organisational structure based on three classes of information using which all knowledge can be organised. Its structural philosophy uses [[nodes]], [[relationships]], and [[metadata]] to organise information. A [[node]] represents an individual item or concept. A [[relationship]] is a description of the connection between two [[nodes]]. A [[metadatum]] is an objective truth about a [[node]], such as the number of words in a book or the dimensions of a sculpture. (Illustrations of this are available at [[use cases]].)

Its homepage in English can be found at [[http://futuramerlin.com/r.php?c=w&a=1&locale=|http://futuramerlin.com/r.php?c=w&a=1&locale=]].

It uses the [[CDCE]] format for the storage of its data. It uses a MySQL database for storage. It is written in PHP.  This is a documentation wiki regarding it.

====== Documentation links moved from from start page: ======

[[Weave]]

[[Glossary etc]]

[[use cases]]

[[database layout (old)]]

[[CDCE ideas]]

[[datetime_string]]


## Overview

A simple programming language should be provided for easily writing portable algorithms to be transpiled to and used by programs in other languages. The name "StageL" comes from calling it a "staging language" (which refers to its being a tool for developing the main EITE software, which should provide a more complete language). This project was inspired by the ugly code that resulted when I tried to write using these principles directly in JavaScript, needing a lot of easy-to-mess-up boilerplate code and awkward notation (largely because it is not strongly typed).

## Design goals

*   Imperative language. Trivial to implement, learn, and read; extremely portable.
*   Provide function calls, arrays, strings, numbers, booleans, and operators for these types with strict typing. Objects and first-class functions are out of scope for this language.
*   Implemented as a transpiler that accepts a file as input and produces a file in the target language as output.
*   Have an implementation of itself using itself, to provide testing and portability of the language.
*   Have an implementation in Bash.
*   Should transpile to (at least) JavaScript, C, Java, Bash, PHP, Microsoft CIL, Lisp, x86 assembly, and Python, in roughly that order of priority. (JavaScript is desired as soon as possible for work on the main EITE software; C and Java should follow soon thereafter for their portability; the other languages are nice to have to cover a diverse range of development environments, and additionally, in the case of CIL/x86 assembly/Lisp, of providing interesting challenges in ensuring that the language really is easily portable due to their difference from the others.)
*   Focus on simplicity and portability: it should purely be an algorithm representation format, without input/output capabilities. It is for implementing the algorithms of a program once, and having it be available in various languages. Things such as input/output and native calls should be provided as an API specification for the StageL source file: at the top of the file, it should declare all the implementation-dependent functions that it requires; these would then be provided separately by the programmer and/or by a set of functions provided with StageL for each target language.
*   All input/output to/from the language is as functions. All code must be in a function, with declared parameters, parameter types, variables needed, and return type. (The expense of the simple type system is that changing return values would break functions' API, since "out" parameters and/or pointers would not be available, but this should allow the code to be simple and readable, which is a priority for this language.)
*   Output files should retain the structure and comments of the input files, thereby retaining readability as far as the target language permits.
*   All behavior should be specified. Ambiguous programs should be impossible to write knowing the specification, and (as far as possible) the meaning of a program should be obvious and unambiguous _without_ the language specification. Programs that do not match the specification exactly should be entirely rejected, rather than produce warnings or have a best guess of its meaning made.
## Library Section 1: Basic knowledge, to be included in the text of this specification

This section of the library will require research and writing. It should consist of many short sections, each covering a topic. Each of these sections should list all other sections that must be understood as prerequisites for understanding it; the dependency tree of every section should culminate in a single section that gives a basic understanding of the dominant language of the reference (probably English, for the forseeable future), so that by translating that one section into another language, every other concept in the reference can be understood by reading its section and its section's prerequisites.

## Library Section 2: Great cultural works, to be included as digital data as part of this specification


## Library Section 3: The data held by the Ember cloud infrastructure

This section of the library will presumably be too much information to be included in the Ember specification, although future information storage technology advances may render that less of an issue.
**Ember** is the successor to [[:Weave]], [[:Wreathe]], [[:FMOS]], etc..

====== Project objectives / mission statement ======

Create a system to enable efficacy, efficiency, and justice of society.

The Ember Project would create a global power structure that would work to create an efficient opt-in society.

====== Project structure and implementation information ======

Ember will achieve these goals through creating individual components that each provide an integral part of the whole societal system. Implementation will probably need to be undertaken in stages, given the nature of 

====== More details ======


It is a database designed to use relationships to organise information.

It is an organisational structure based on three classes of information using which all knowledge can be organised. Its structural philosophy uses [[:nodes]], [[:relationships]], and [[:metadata]] to organise information. A [[:node]] represents an individual item or concept. A [[:relationship]] is a description of the connection between two [[:nodes]]. A [[:metadatum]] is an objective truth about a [[:node]], such as the number of words in a book or the dimensions of a sculpture. (Illustrations of this are available at [[:use cases]].)

The homepage of Weave in English can be found at [[http://futuramerlin.com/r.php?c=w&a=1&locale=|http://futuramerlin.com/r.php?c=w&a=1&locale=]]. Ember does not yet have a working implementation.

Ember (and Weave) use the [[:DCE]] format for the storage of its data. It uses a MySQL database for storage. It is written in PHP.

I found a quotation (14 March 2014, when I'm writing this) that seems to explain to some extent what I'm trying to do with this/these project(s): "Machines don't have a universal noun - that's why they suck." (http://www.looah.com/source/view/2284). This is one of the problems I hope Ember+DCE will solve.

[[:Structuring EMBER DMS]]

[[:Ember UI]]

//[[:n-space-native computer graphics system|n]]//[[:n-space-native computer graphics system|-space-native computer graphics system]]

[[:Coal]] (data storage system)

====== Brainstorming ideas: ======

===== Node examples — use cases: =====

Node — a new document someone created… — type: Digital data Has title (file name); has relationships: ☆→created by (ember account), ☆has revisions (each time saved or autosaved). Node: — a piece of music someone had in their computer upon backing up w/ Ember… — type: Digital data. Has title (file name); Relationships: has revision: only the current revision, since it’s never been resaved; has creator (ember account).; has date created (date created from filesystem — with source annotation) Note that the content & format metadata are stored with the Revision nodes, not with the main nodes. Each revision node has autodetected music metadata (e.g. by Musicbrainz PUID lookup) or other autodetected metadata, such as plagiarism detection information. Music metadata & such can be added manually to main &/or revision nodes. DCE (and Wreathe and Ember) should use Google Wave’s letter-by-letter edit tracking technology… then DCE data backed up wouldn’t need independent revision nodes like that — but instead justindependent revision nodes for actual conceptual revisions of the document. Maybe, to prevent confusion, autosaved revisions could be called by a different name (i.e. a word other than “revision”.)?…. Wreathe and Ember should hide their DCE underpinnings, for the most part, but at the same time, lower-level DCE editing should be easy.
====== Implementation ======

A full DCE editor à la Wreathe isn’t necessarily necessary for Ember’s web-based administration — just use the all-in-one DCE editor / Ember browser / etc. in Wreathe if one wants desktop-power-level DCE editing in Wreathe [possibly meant to write Ember there?]. Plus, DCE editing can be easily implemented in a web environment without worrying about rendering or display so much — just work with the raw Dcs if that kind of “advanced” functionality is desired, if necessary…?
===== Database schema ideas =====

[[:Ember data modeling]]


Article: Cecelia Kang. "Court strikes down FCC ‘net neutrality’ rule". 14 January 2014. //Washington Post//. (http://www.washingtonpost.com/business/technology/court-creates-new-game-for-web-access-in-america/2014/01/14/539c9a2a-7d3e-11e3-95c6-0a7aa80874bc_story.html)


This article discusses a range of concerns regarding the use of corporate funds to finance increased Internet service speeds for individual Internet content provider companies. In January 2014, a federal court invalidated previous government attempts to encourage competition in the World Wide Web. The disadvantage of such a change, as with any monopolization of an industry is the reduction of choice between content providers for consumers. Another concern is the possible restrictions this could place on political speech, for example if politically biased news sources are sponsored, and thus become more accessible via the World Wide Web. The article mentions several responses to the change from a variety of influential individuals in the Web industry, mostly expressing dismay at the implications of the changes. The ruling concluded that because the Internet is considered as a service rather than a utility, the Federal Communications Commission is not in a position to regulate it. The article describes this as a "technicality". The article also mentions concerns on the part of consumer rights groups that the FCC's position will not be upheld by its new chairman, Tom Wheeler. Some Internet access providers have created arrangements by which companies can sponsor access to specific Web sites for free, while charging for access to others. The ruling, according to the article, is mostly disliked by the political left, but supported by the right.

===== Analysis =====

This article accurately addresses a number of the concerns involved in the thorny issue of network neutrality. Nevertheless, it fails to address a few key economic points. I also read another article from //Forbes// (Mark Rogowsky, "Netflix Decides The Free Market Isn't So Good After All, Wants Government To Step In". //Forbes//, 21 March 2014. (http://www.forbes.com/sites/markrogowsky/2014/03/21/netflix-decides-the-free-market-isnt-so-good-after-all-wants-government-to-step-in/print/)). These two articles together might present a more complete and accurate picture of the issue than either individually does. The //Forbes// article presents compellingly some of the various arguments in opposition to network neutrality, many of them not addressed thoroughly in the //Washington Post// article. For example, one of its major points is that proposals for network neutrality would place undue financial burdens on Internet service providers, by compelling them to finance the rapidly increasing amounts of bandwidth demanded by Internet content providers. However, I think there is a fundamental flaw in the //Forbes// article in that it doesn't particularly consider the role of the customer in the question. When it brings up the concern that increased bandwidth usage on the part of Internet content providers will present a burden to the Internet service providers, it only considers that the cost could be borne by the service provider or the content provider, when (as is the traditional model) it would make the most sense for the cost to be borne by the individual customers based on the connection speed and bandwidth usage they want. The article also suggests that Internet content providers without significant financial resources could work with content delivery networks to achieve connectivity speeds matching those of more wealthy companies. This argument especially seems like a point that the //Washington Post// article neglects to address.
====== Article summary/analysis #4: Minimum wage ======
17 March 2014.
Article: "Compromise on minimum wage hike discussed". Mark Walker. 16 March 2014. //U-T San Diego//.
(http://www.utsandiego.com/news/2014/mar/16/will-there-be-a-deal-on-minimum-wage/)
===== Summary =====
This article discusses a recent proposed increase to the minimum wage in San Diego. Lawmakers have proposed this change, but it has been opposed by local businesses and the Chamber of Commerce. The argument in favor of this increase is backed up by the statistics of three hundred thousand households in the county being financially unable to meet basic needs, but only 180,000 workers are making within a dollar an hour of the minimum wage. The article mentions that businesses are not entirely opposed to an increase in the minimum wage, but there is dissent regarding the amount and the rapidity of implementation of such a change.

===== Analysis =====
While the article discusses some of the issues involved and presents an effective argument for the raising of the minimum wage, it neglects to address some of the important issues such a change would present. For example, while suggesting that the minimum wage increase could be tied to a cost-of-living estimate, it hardly mentions the effects a minimum wage increase could have on the cost of living. If the economic equilibrium is disturbed too rapidly, it would be very conceivable for the cost of living to increase correspondingly to the changes in the minimum wage, which would in turn increase yet again to compensate for the increased cost of living. This sort of "vicious cycle" effect is not really discussed as a possible outcome by the article. While such a serious effect would be unlikely, a similar effect on a lesser scale could seriously disrupt the local economy. In neglecting to address these issues, I must conclude that the article shows a clear bias in its selection of subjects in the debate to discuss, and thus its conclusions — though not necessarily its data — should be taken with a grain of salt.
====== HON170 article summary and analysis: # 3: Income inequality ======

Article: "The American right focuses on poverty, not inequality, to avoid blame". Robert B Reich. //The Observer//. 22 February 2014. http://www.theguardian.com/world/2014/feb/23/american-right-inequality-robert-reich-obama


===== Summary =====

In this article, former labor secretary of the United States Robert Reich argues that American conservatives focus economic discussion on reducing poverty, rather than economic inequality, so it will not be considered that their ways must be changed to implement a more egalitarian economic reality. He argues that the rapidly shrinking middle class reduces opportunities for upward economic mobility, and that the current economic imbalance leaves the lower classes financially trapped, less able to get the jobs they would need at the wages they would need to become part of the middle and upper classes.

===== Analysis =====

While Reich makes some good points in his article, he neglects to take into account the effects of high tax rates on the poor. Massive government spending on military expansion and welfare services points to inefficiency in the financial management of taxpayer dollars. This arguably has as much an effect on the lower classes as excessive wealth in the hands of the wealthy. I think that an effective solution would need to strike simultaneously at these weaknesses, reducing government spending to only the most critical and fiscally efficient services, both at a federal and state level, and pruning inefficient spending in the services that remain. For example, the public K-12 education system in Maine is massively inefficient, spending money on computers for students. While proponents of the program say this will increase technological literacy for students, what worth does such knowledge have when a student is unable to research effectively using books? Rather, it serves to distract students in the classroom, with the computers being used to read the //Face Book// Web site instead of study academics, and to create massive support costs for schools that must hire workers to constantly monitor students' use of these computers — costs that are directly passed on to the lower classes in tax dollars.

Article: McMaken, Ryan. "Why we're paying more for corn". 24 February 2012. //The Christian Science Monitor//.

===== Summary =====

This article addresses the rising costs of corn as a consequence of increases in the price of land suitable for growing corn. The article asserts that this increase in prices will be felt by consumers, and also mentions the consequence of government subsidies as the consumers' paying more for the crops than the apparent face value of food products containing corn.

The article claims that corn may be profitable, however, as a consequence of increases in the use of genetically enhanced crops, and the use of the land for subsidized soy crops. The article criticizes the use of patents on these genetically enhanced crops, claiming the way these patents are used reduces agricultural innovation and consumer choice by allowing legal claims to be made against the developers of crops that inadvertently have been wind pollinated and thus contain the patented genes. This is a threat to breeders of both corn and soy crops, that the article's author claims is the combining of monopolization and government policy resulting in increased food cost and reduced variety in food products for consumers. While the article acknowledges that genetically modified crops in developing countries have been successful, it expresses concern about the stifling effect of government-supported monopolies on the free market economy.

The article addresses the similar but opposite situation in the European Union, where government bans on genetically enhanced crops are a similar barrier to innovation and a free market in enhanced crops, but form this barrier by banning the technology rather than subsidizing it. The article concludes with a summary of the inflation of food prices resulting from the government-granted monopolies it criticizes.

===== Analysis =====

This article effectively presents the concerns involved in this issue. It strikes me as rather unusual in that it does not take an oversimplified, black-and-white view of the issue and simply argue a predefined party line viewpoint, but takes a more sophisticated look at the issue and suggests that there may be more ways to see the problem than as a simple dichotomy. I found this level of intellectual engagement on the part of the author in this article to be quite a refreshing change from most news reporting I have read recently. It clearly argues for the significance of food price inflation in the discussion of genetically modified crops, and I think that the article's arguments indicate this matter to be of significant importance to take a position in the forefront of the national debate on food supply and agriculture. The great potential for negative effects on the national interest of the free market economy these governmental policies have also is presented as a significant issue to discuss, which likewise should be at the core of economic and policy debate regarding intellectual property and agricultural subsidization.

The author also provides an excellent summary of the contrast between United States and European Union policies, explaining the flaws of each, and providing an argument that illustrates the potential for other solutions beyond the extremes of the spectrum of this debate exemplified by those two regions.

====== A little argument for the devising and establishment of an informatics economy and libertarian welfare NGO ======

==== Rationale ====

In my view, human society is sometimes unpredictable in the rights and safeties it affords those partaking of its benefits, I believe there is a need for a unified institution to be established outside of the realms of traditional governmental structures to provide some semblance of a filling of this void. While humans, as any other life, have the liberty of doing as they choose, and, in one way of looking at things, have no obligation to any particular social contract or structure, — (in other words — technically, everyone has the choice to do what they want, inasmuch as they can send the electrical signals to their nerves they choose to when they choose to, assuming they have such physical capacity) — while such "liberty" is indeed held by humans, they have come to expect and rely upon such social constructs for their safety and mutual benefit. For such reasons I feel it ideal to pursue the measure of establishing a single institution as I mentioned above. Those who choose not to partake of the protections I propose that such an organization would provide would, of course, open themselves up to forceful control by any who see fit: they would end up finding themselves in Hobbes' "state of nature", "all at war with all", albeit a state of nature that could perhaps be considered adulterated by the existence of power structures outside of their control. Locke writes that "The natural liberty of man is to be free from any superior power on earth" ... "to have only the law of nature for his rule" (Locke 15). There presently exist many types of authority in the world, for example: the law of war, the principles established by the United Nations and similar organizations, the laws established by states' governments and their constituents (in the United States this would encompass the powers vested in the national, state, county, and township authorities, for example), and the bounds enforced within a family. What I propose in this essay does not neatly fall into any of those categories. It would not attempt to interfere with those authorities, allowing it to coexist with them — thus its purpose being mainly the protection of and provision for those people who choose to become, so to speak, the shareholders and benefactors of its contract. It would ideally provide some recourse for those who would desire asylum from those other power structures, by holding land, under its exclusive control, that it could share in various ways such as:
  * through issuance of private parcels within which the owners could dictate their terms, and
  * the construction of tenements made available without charge to those participating in the organization I propose,

within all of which, parcels and tenements, the sole binding policy (in other words, the protections and/or restraints imposed through the organization's policy, doctrine, and practice) would be those of the organization (beyond any that may be held by private landholders). (There could also be, and in all probability would be, unallocated land over which no control is held or claimed.) Through allocation of such private parcels, large governments could theoretically be provided land technically held by this organization I propose, them being given authority over the land to dispense of as they choose — although such an arrangement would perhaps be unnecessary, as land with existing power structures would presumably be already managed in fair order. Locke writes that a king's privilege "may be questioned, opposed, and resisted" if he uses "unjust force" (Locke 116). In all, the basic premise of what I propose is yet another layer of order provided on an opt-in basis within the context of a world which is, fundamentally, in what I would consider a state of nature with power structures founded within it. (This brings to mind one of my arguments against some philosophical ideals of "anarchy": the true absence of any social order imposed on the world would by definition allow the imposition of order by those within it, thus creating something of a paradox.) And yet, Locke writes that if "the electors or ways of election are altered  without the consent and contrary to the common interest of the people" then "those chosen are not the legislative appointed by the people" (Locke 121). This is used as a justification for revolution, for example in Thomas Jefferson's Declaration of Independence, as mentioned in Professor Glover's lecture of Tuesday.

===== Sources =====
  * Glover, Robert. Lecture of 2 October 2014.
  * Locke, John. //The Second Treatise of Government//. 1997.
  * Discussion in HON211 class of 2 October 2014 — Hobbes' "state of nature", "all at war with all" was mentioned

"A system for punishment for violating the standards of this organization could be created by the removal of benefits and protections provided by it."

One role of Ember would be to provide goods. For this, it would be ideal for Ember to control as much of the supply chain as possible. That would allow efficient provision of the goods such as to reduce cost and ensure quality. That control of the supply chain would, in an ideal scenario, extend to all stages of the process, from production of the raw materials to component production to assembly to distribution, as well as shipping at all stages of the process. If Ember both controlled production of raw materials in a region and was the dominant institution working to ensure that those resources are used responsibly, it would of course be important to take the interest Ember has in using the resources sustainably into consideration.

  

  

Ember is a multifaceted project to develop a scalable environment for building an effective society.

  

The aim of the Ember project

  

Create a system to enable efficacy, efficiency, and justice of society.

The Ember Project would create a global power structure that would work to create an efficient opt-in society.

Introduction: Ethics and Ember

In the emerging hacker culture of the early 1960s, Ted Nelson, a graduate student at Harvard, began work on a computerized information management system that would later become known as “Project Xanadu”. The project promised amazing abilities. It was designed to provide definitive copies of documents that would be preserved in perpetuity, which could be referenced in other documents by quotations or references, so that the original source document of a passage could always easily be found. This aimed to provide an indefinitely scalable computerized collective memory for the preservation of humanity’s history and knowledge. This monumental project, despite significant corporate backing, was not a success. (Wolf, Gary. “The Curse of Xanadu”. (link) (IA)) I’d like to look at why it failed — but we’ll get back to that later.

  

There are a large number of works of great cultural importance. They have touched on a number of meaningful subjects, but several subjects have stood out particularly for me: ethics, rights, prejudice and bigotry, and theology. These are elements of society that play important roles, influencing the ways people live and experience their daily lives.

  

When you look at life from a perspective of fundamentals, there are a few things that are necessary: food, water, and shelter. Without these basic elements, humans would not survive very long. If one is hard working and clever, one can provide these things for one’s self, by living off the land. When humans start to live together in communities, things become more complicated; medical care and education become important. The goals of a community are to make life more secure and predictable for the community’s members, and to reduce the hardships associated with “primitive” living (living without the support systems of a complex society). But with those goals comes a problem: how are those goals to be effectively implemented? Through the development of strategies such as specialization of individuals’ abilities and the creation of technological solutions, these challenges can be met.

  

As more people start living together, though, they will almost inevitably come into conflict. What can be done when the individual’s interests conflict with those of the society? What about conflicts between individuals? To deal with these issues, laws and a justice system can be put into place. An economy or labor-sharing strategy can aid in the exchange of services and goods, to avoid conflicts over these matters. A free market economy is helpful to a society, because it redirects the energies of greed and uses them as a force for technological development.

  

Philosophical discourse becomes important in many areas, such as the resolution of the conflicts and challenges of a complex society, and the research into understanding the world around us. This discourse leads to the development of more complex technology drawing on the ideas of the society, then leading to debates about ethics, to scientific investigation about the nature of our world, and to the development of ways to understand and accept who we are, such as religion and science.

  

Ideas, knowledge, and art become economically motivated, and so copyright and patent laws are established to encourage and protect innovation in these areas. The wide availability of information becomes increasingly relevant, and information technology and distribution systems such as books and computers are developed. Support infrastructures are created and strengthened, to protect society against threats both external and internal, such as disease, crime, terrorism, civil unrest, and war.

  

I would like to attempt to improve on the existing systems that have developed for solving these problems. I would like to undertake this project in an incremental, scalable manner, rather than creating a complex system that would need to be implemented all at once to be effective. That way, small improvements could be made without attempting to undertake the insurmountable task of improving larger components of society at once. This incremental development would allow for the strengths of the existing systems to persist, as well.

  

The many texts I have studied have helped me understand better how I could go about achieving these goals, and have provided interesting and valuable insights about what I believe. In many cases, it is difficult or impossible to prove to the satisfaction of a large number of people what the ideal systems are for society; in such cases I can only at once stand by my own beliefs and also accept that other valid solutions and reasonings can exist as well.

  

The most important thing I think I will achieve, which has both shaped and been shaped by my experience of study, is the incremental development of improved and redeveloped societal structure and infrastructure. To this end, I have gathered a number of disparate elements of the project under the name of “Ember”, for ease of reference; these diverse objectives I believe have the potential to improve the general standard of living. At the same time, it is important to ensure that the Ember project does not fall into the same pitfalls that befell Project Xanadu, despite their many parallels and similarities.

  

Project Xanadu and Ember are both projects with lofty goals, born out of a Nietzscheian rage at the status quo, aiming to radically transform and reshape various aspects of society for the better. They are both ambitious, and championed by someone without a thorough understanding of the technological and economic realities and limitations of the world around them. They both are driven by grand ideas, with little thought given to short term practical implementation and utility of those ideas. They both have the potential to absorb vast amounts of investment without return. My hope is that by assessing and strategizing around these similar aspects, and understanding the ways in which they relate to Project Xanadu’s failure to produce, such a catastrophe can be avoided by Ember.

  

Ember is a multifaceted project to develop a scalable environment for building an effective society. The goal of the project is to create a system to enable efficacy, efficiency, and justice within society, by creating a social structure that would work to create an efficient opt-in society within the framework of the diverse and valuable existing societies. The plan for the project is to pursue these goals by developing individual components that each provide an integral part of the whole societal system. My current proposal is comprised of several components, including a coordination organization, a philosophy of ethics, a nonprofit standards-driven services collective, a computing environment, a reference collection of the most important knowledge, a library of great cultural works, a spiritual framework, and a multimedia artwork.

  

The four subjects that will prove integral in the effective development of the Ember project that I would principally like to discuss in this paper and which have been of most import to my journey of learning are ethics, rights, prejudice and bigotry, and theology.

  

Ethics are one of the central aspects of a complex society, with an understanding of what is “justice” being necessary for the establishment of effective justice systems, and an understanding of what is ethically acceptable scientific research and technological development being necessary for a society to respect the dignity of the world.

  

In the Zimbardo prison experiment, we saw an influential and famous experiment that was ethically very dubious, and likely had lasting effects on the research participants. Is such research justified? This is a hard case to make, as the benefits derived from the Zimbardo experiment have been doubtful at best due to the poorly undertaken nature of the research. However, could such research that damages the participants be considered ethical in any scenario? Could it, perhaps, but only with the full understanding and consent of the participants? It seems likely that the nature of such an experiment is fundamentally harmful in such a way that it would be best to attempt to gain the knowledge through other, more ethical research methods if at all possible before trying such research techniques. By no means should such research practices as those seen in Zimbardo be standard or generally accepted within the scientific community.

  

Some scientific research is seen as harming the public interest for other reasons, such as Galileo Galilei’s assertions of a heliocentric planetary model, which were regarded as heresy by the Catholic church, which was the dominant social force in determining matters of ethics and morality in Europe at that time. This is a matter of ethics, as opposed to a matter purely of science, as the scientific results were considered to be evil. However, it seems that Galileo’s research has done no lasting harm, considering that it has become widely accepted and is no longer a matter of significant contention. Perhaps this acceptance is because the issue with Galileo’s research is the results he found, while with Zimbardo’s it is the ethics of the manner in which the research was undertaken.

  

Rights are an important social issue. In Mrs. Dalloway, by Virginia Woolf, we encountered the debate about what rights should be protected in the thorny instance of an individual with mental challenges. One can consider whether Septimus Warren Smith had the right to not be controlled by Holmes and Bradshaw. Referring to Septimus, Woolf writes: “Lately he had become excited suddenly for no reason (and both Dr. Holmes and Sir William Bradshaw said excitement was the worst thing for him)” (Woolf, Virginia. Mrs. Dalloway. p. 140). Does not Septimus have the right to exist without being bothered, regardless of whether it is considered the best thing for him? He does no one else any harm by being as he is, and is not disrupting society in any way, except inasmuch as it may perhaps reduce his ability to contribute to it. And even that seems that it may be excusable in light of the value of one’s right to liberty, much as one could make such an argument for the legitimization of a right to suicide.

  

Likewise, is involuntary confinement of someone who is not a threat to society moral or ethical? Does it violate the tradition of habeas corpus? “Worshipping proportion, Sir William not only prospered himself but made England prosper, secluded her lunatics, forbade childbirth, penalised despair, made it impossible for the unfit to propagate their views until they, too, shared his sense of proportion” (Ibid. p. 99). Does Bradshaw have any right whatsoever to impose such restraints, to place such barriers upon freedom of expression and action? Perhaps one could argue that the mentally incompetent are incapable by nature of exercising these rights appropriately and effectively, and thus should not be afforded them. Nevertheless, even such disabled and tragically affected individuals still likely have the right to have their desires and conscience and feelings paid respect and honored by the society around them. They are, presumably, individuals with their own emotions, realities, and conceptions of the world, thus deserving the same respect afforded to the healthy in any just and non-oppressive society. These are important social issues to consider and address in the development of an evolving societal system.

  

Bigotry, hatred, racism, prejudice, and oppression are critical issues to address in the modern society, with tragedies such as slavery, genocide, and wartime racism persisting strongly into the present. An understanding needs to be built and lessons learned from history about how these elements can be addressed effectively and thoroughly, protecting the rights of all. In several of the texts we have studied in this sequence, we encountered racism as a prominent theme, most notably in The Souls of Black Folk and Incidents in the Life of a Slave Girl. In The Souls of Black Folk, by prominent author W. E. B. Du Bois, it is written that “the South believed an educated Negro to be a dangerous Negro” (Du Bois, W. E. B.. The Souls of Black Folk. p. 24). Du Bois considered this assessment by the South to have some validity, because of the role of education in bringing forth “dissatisfaction and discontent” (Ibid.). Such discontent would likely have been far greater among African Americans, due to the profound injustices they experienced. In addition, this generalization shows the egregious violations of rights and hatred that can emerge, piling injustice on top of bitter injustice, when one group is considered inferior to another.

  

In Incidents in the Life of a Slave Girl, we see the brutal realities of life as an African American woman in the antebellum south. It reveals in its tragedy the horrors that they underwent through no fault of their own but merely the chance of having a different skin color. The recent development of feminist philosophies such as those seen in Virginia Woolf’s and Adrienne Rich’s work is clearly a step in the right direction, helping to sway the pendulum away from injustice, continuing along the path boldly set by the civil rights movement in the 1960s. However, racism and racial violence still persist, as evidenced and highlighted by the recent racial tension surrounding police brutality.

  

Theology plays an important role in society, providing a way for individuals to understand their role in that society and in the world. Occam’s Razor is a famous statement to the effect that “No more things should be presumed to exist…” (Haddon, Mark. The Curious Incident of the Dog in the Night-Time. p. 90) than are needed to explain the observations about which a collective truth has been established through consensus. Despite the seeming rationality of that statement, I nevertheless often choose to believe things on faith, despite being unable to prove them through scientific observation and logic. I come to these conclusions frequently as ways to best explain the parts of the world around me that I do not understand scientifically, but nevertheless seem to observe on a daily basis and believe to be real: life, emotions, and other similarly difficult-to-quantify elements of the world around us. By considering the world and drawing my own conclusions, I can create my own worldview, as real to me as the perceptions that are established through consensus and scientific reasoning.

  

The Music of Life presents a model of life that can be mistakenly argued to be unscientific, because it does not explain many of the vagaries of the way life and the way one’s personality and other traits that make one an individual come about. This model indicates that these traits are not coded in one’s genes, but originate otherwise. This model is scientifically reasonable, though, since the systems by which these traits develop and function are not fully or thoroughly understood, and are likely not completely determined quanta that can be effectively evaluated by measuring systems. Perhaps it is not possible to understand these traits at all. Perhaps one wishes genes might provide the definitive coding for an organism, providing a thorough way to comprehend the way that organism evolves and develops. However, this is not the way genes work.

  

I believe that God has created a sort of fettered omniscience for Himself, and has taken away His direct influence over the world and given living things the capacity for moral self-direction. This aspect of the world’s traits has been implemented in what has been recognized as the theory of the uncertainty principle in quantum mechanics, according to which nothing can be predicted with absolute certainty. Traditional thinking would seem to hold that through a comprehensive understanding of all the positions and vectors in a closed system, all of the states of that situation — past, present, and future — can be known simultaneously. Yet the observer effect leads to the situation that the most basic particles of matter are unable to be observed or predicted, because any observation will inevitably change their state, thus contributing to the chaos inherent in the uncertainty principle. In a lecture on quantum mechanics, the speaker discussed the idea of determinism: I believe that these maxims of unpredictability lead to the effective disintegration of multi-scale determinism, while it does seem to remain effective and in effect in the world on our scale. This unpredictability enables the world to exist as it does with true moral sovereignty, without the consequential ethical nihilism of the philosophies of fate or predestination.

  

Gnosticism is a group of belief systems sharing certain core tenets, particularly the focus on the development of sophia (wisdom) to attain gnosis (knowledge) and on the rejection of some elements of the physical world in the endeavor to attain ascendance into the spiritual. It shares common themes and elements with many Christian and other belief systems. In the Gnostic Gospel according to Mary Magdalene, it is written “There is no sin, but it is you who make sin when you do the things that are like the nature of adultery, which is called sin.” (Gospel according to Mary Magdalene. Chapter 4, verse 26.) This sentence emphasizes the Gnostic nature of the text, in its equating of sin with adultery providing a connection to the traditional Gnostic focus on the rejection of elements of the physical in the interest of the finding of knowledge through wisdom. While it would be hard to prove concretely that things like adultery are bad, that badness can nevertheless be understood: it is a truth that can be taken on faith, it can be understood through the collective wisdom of society, or it can be felt in one’s heart.

  
What should the role be of surveillance in a society? Surveillance today can seem frightening, considering the potential for its abuse. How should safeguards be put in place to simultaneously enable effective surveillance, while curtailing its abuse?

Considering these elements in the process of creating a system for alternative society development is clearly a vital part of the process. Failure to do so can produce a system which is unjust, incompetent, and inefficient. By avoiding this failure, the system developed can embody its principle objectives of creating an efficient, effective, and just society. The concepts that in the many great texts of civilizations provide invaluable insights for the development of the Ember project.

*   Project structure and implementation information

Ember will achieve these goals through creating individual components that each provide an integral part of the whole societal system. Implementation will probably need to be undertaken in stages, given the nature of

More details

It is a database designed to use relationships to organise information.

It is an organisational structure based on three classes of information using which all knowledge can be organised. Its structural philosophy uses nodes, relationships, and metadata to organise information. A node represents an individual item or concept. A relationship is a description of the connection between two nodes. A metadatum is an objective truth about a node, such as the number of words in a book or the dimensions of a sculpture. (Illustrations of this are available at use cases.)

The homepage of Weave in English can be found at http://futuramerlin.com/r.php?c=w&a=1&locale=. Ember does not yet have a working implementation.

Ember (and Weave) use the DCE format for the storage of its data. It uses a MySQL database for storage. It is written in PHP.

I found a quotation (14 March 2014, when I'm writing this) that seems to explain to some extent what I'm trying to do with this/these project(s): "Machines don't have a universal noun - that's why they suck." (http://www.looah.com/source/view/2284). This is one of the problems I hope Ember+DCE will solve.

  

**A little argument for the devising and establishment of an informatics economy and libertarian welfare NGO**

Comparison with version 8, made using DiffNow

  

Part 1: The Institution

  

  

Rationale

I would like to establish a project to create an adequate infrastructure for managing and providing for the basic needs of society. This organization could exist alongside governments and other social structures, as well as potentially taking their place in the event that they collapse or fail to perform as expected (as appears to be happening, for example, in several African countries) (Fund For Peace 2014; Wikipedia 2014).

In this document, I will use the term “person” to refer to any independent, quantizable (able to be assessed discretely and independently of other elements) unit with a soul; a firmer, more satisfactory, analytical definition of it is unfortunately out of my grasp at present, as is a complete understanding of whether some things are rightly considered as persons. For example, does a rock have a soul? If that rock is split in two, does each resulting portion have its own soul?

In my view, as human society is sometimes unpredictable in the rights and safeties it affords those partaking of its benefits, I believe there is a need for a unified institution to be established outside of the realms of traditional governmental structures to provide some semblance of a filling of this void. While humans, as any other life, have the liberty of doing as they choose, and, in one way of looking at things, have no obligation to any particular social contract or structure, — (in other words — technically, everyone has the choice to do what they want, inasmuch as they can send the electrical signals to their nerves they choose to when they choose to, assuming they have such physical capacity) — while such “liberty” is indeed held by humans, they have come to expect and rely upon such social constructs for their safety and mutual benefit. For such reasons I feel it ideal to pursue the measure of establishing a single institution as I mentioned above. Those who choose not to partake of the protections I propose that such an organization would provide would, of course, open themselves up to forceful control by any who see fit: they would end up finding themselves in Hobbes' “state of nature”, “all at war with all” (HON211 2014). Locke writes that “The natural liberty of man is to be free from any superior power on earth” … “to have only the law of nature for his rule” (Locke 1997, p. 15). There presently exist many types of authority in the world, for example: the law of war, the principles established by the United Nations and similar organizations, the laws established by states' governments and their constituents (in the United States this would encompass the powers vested in the national, state, county, and township authorities, for example), and the bounds enforced within a family. What I propose in this essay does not neatly fall into any of those categories. It would not attempt to interfere with those authorities, allowing it to coexist with them — thus its purpose being mainly the protection of and provision for those people who choose to become, so to speak, the shareholders and benefactors of its contract. It would ideally provide some recourse for those who would desire asylum from those other power structures, by holding land, under its exclusive control, that it could share in various ways. These ways could include through the issuance of private parcels within which the owners could dictate their terms, and through the construction of tenements made available without charge to those participating in the organization I propose. Within all of these, parcels and tenements, the sole binding policy (in other words, the protections and/or restraints imposed through the organization's policy, doctrine, and practice) would be those of the organization (beyond any that may be held by private landholders). (There could also be, and in all probability would be, unallocated land over which no control is held or claimed.) Through allocation of such private parcels, large governments could theoretically be provided land technically held by this organization I propose, them being given authority over the land to dispense of as they choose — although such an arrangement would perhaps be unnecessary, as land with existing power structures would presumably be already managed in fair order. Locke writes that a king's privilege “may be questioned, opposed, and resisted” if he uses “unjust force”. In all, the basic premise of what I propose is yet another layer of order provided on an opt-in basis within the context of a world which is, fundamentally, in what I would consider a state of nature with power structures founded within it. (This brings to mind one of my arguments against some philosophical ideals of “anarchy”: the true absence of any social order imposed on the world would by definition allow the imposition of order by those within it, thus creating something of a paradox.) And yet, Locke writes that if “the electors or ways of election are altered without the consent and contrary to the common interest of the people” then “those chosen are not the legislative appointed by the people” (Locke 1997, p. 121). This is used as a justification for revolution, for example in Thomas Jefferson's Declaration of Independence, as mentioned in Professor Glover's lecture \[TODO cite\].

I believe that the general rules of this organization should be established on the basis of rights: rather than making a rule that, for example, prohibits murder, instead a rule should be established that protects individuals’ right to life. In such a way, rules would not be created that infringe freedom more than that which is necessary to retain order in society.

In the event that an individual who is party to the organization has interests that conflict with the interest of, for example, a government within the context of which this organization exists, such action should be taken as is deemed prudent and sensible. It would be, for example, distinctly unwise to antagonize a militarily powerful government the citizens of which are under threat from an individual who is party to this organization in the interest of protecting this individual’s rights. It can be considered that all who are not a member of any given social contract being discussed are in a state of nature. In this document, the social contract being discussed is that held between the members of this organization. From this perspective, there is no evident reason not to hunt for food those who are not party to this contract (for the same reason that humans hunt deer even when they are part of a social contract that forbids killing each other, since the deer are not party to their social contract); however it would likely be imprudent to hunt those who are protected by an institution with a strong military force.

In my model world-state, such an organization is sufficiently extensive and effective as to in effect preclude the necessity of separate governments, outside of the individual community branches of the organization serving to manage the organization’s local presence and interests.

  

What such a structure would provide

This project would, in its complete form, provide useful elements of survival: shelter, nutrition (including food and water), medical care, education, and information. It would do this as its fulfilment of its objective of managing the various needs of a society, by enabling people to be effective participants in that society.

One of its fundamental elements would be the creation of a butt-based information technology system, intended to provide rapid information storage and retrieval (ISR). This would likely use an append-only NoSQL database to store a softly directed concept graph. It would use, in the current implementation I am working on, eight columns: id (integer), node (integer, related to id), date (integer, related to a String node’s id), type (integer, related to type.id), data (integer, related to a String node’s id), deleted (Boolean), author (integer), access\_control (integer, related to a String node’s id). Other tables would be needed, including class (id: integer; description: string); …\[TODO\]. \[Also TODO: Looking at it as an object inheritance hierarchy?\] \[Also TODO: Asynchronous/non-request-driven (background/daemon/triggered/cron tasks)\] I think that most or all knowledge can be effectively represented using three basic structures: nodes, relationships, and metadata. I am also developing the Document-Character-Entity encoding system (DCE), which is a state-switching hierarchical many-to-one binary character encoding model. DCE comprises a list of “DCE characters” (Dcs), which are individual semantic units that can be compiled together as a list, as well as individual mapping tables from Dcs to bytes; these mapping tables are linked by state-switch Dcs. Each Dc has rules indicating the syntactic context in which it can be sensibly used, and instructions for parsing it. These rules can be defined using the keywords if, then, else, precedes, succeeds, invalidate, any, state, valid, e.g. if Dc 165 meant “start styled region” it could perhaps be defined as:

if(precedes(<any, \[end styled region\]>)){state(styled);valid;}

. A Backus-Naur Form representation of this language would be \[TODO\].

The nodes of a graph are the individual records that it stores. Relationships between those nodes are the edges of the graph, although it is possible that the system I am developing will provide for more complex relationships, for example by allowing relationships to connect several nodes to each other in a variety of ways, although whether that proves necessary or useful remains to be seen. Metadata are an item’s traits: information such as the title of a node, or a description of it. The way I have designed this system, placing all three of these types of entity into one table, allows relationships and metadata to have the attributes of nodes: for example, metadata could be attached to a relationship or another metadatum, or relationships could be specified that connect any combination of the three. There are many existing ISR systems, such as flat files and flat searching, flat-search filterable record sets, sorted records, a variety of tree and tree-like structures, tagged or labeled records, traditional tabular databases, relational databases, sparse tables, sparse matrices and entity-attribute-value models, graphs and digraphs, Boolean-queryable datasets, hierarchies, automated natural-language document acquisition and indexing, metadata-enriched natural-language document acquisition and indexing, and selective-display intelligent query results. The system I am proposing would primarily leverage a graph structure augmented through the use of richly labeled nodes, providing great flexibility in the structures it can manage; in addition, I believe that most or all of the above structures could be emulated within a graph-driven environment.

One large challenge faced by the system I propose is the role of server-side processing (SSP). SSP is a vital element of much of modern cloud application software, but it does not fit nicely into the information-driven model I propose. I think the best solution for this is through the application of dynamic parsing of DCE content as it is returned by the server. While this strategy could present a serious security risk, if the dynamic content is handed off to servers dedicated to this purpose and sandboxing is employed, I think this risk could be effectively mitigated, at least to the extent of avoiding access privilege escalation attacks against the main database. This will also provide effective options for building the wide variety of ISR systems I outlined above as both self-hosted applications and in user space.

There are a variety of content sources that would populate this ISR system: publicly available datasets, creative works, and other resources; resources added and/or created by individuals using the system; “dark” content such as is currently held by social networks, governments, and other organizations that do not publicly release their records; moderated content that has been reviewed and fact-checked and annotated as such by the NGO; dynamically generated content; and computed content, for example, the results from a mathematical calculation or an operation on a dataset.

I propose that this ISR system be leveraged by the NGO for several purposes. First, it can be used to record the individuals who are participants in the NGO. Through the development and application of a multipronged biometrics system, perhaps similar to that of India’s Aadhaar program (Wikipedia 2014(d)), the use of names could be easily foregone, allowing for people who are mononymous, change their name frequently, have unconventional names (such as names without graphic representation, names that mutate over time, musical names, graphic names, etc., or even names that simply are not very common (For example, 马𩧢 (Mǎ Chěng) in China who is inconvenienced because her name is not supported by China’s computer systems. (LaFraniere 2009; Wikipedia 2014(e)))), have no name, and so on and so forth to easily use the system, without being subjected to the usual tribulations that accompany any of the above in many modern governments. (It would also eliminate similar gender identity and other issues in receiving government services.) While instability of identification traits in individuals, either through subversion of the system or through chance, is indeed a concern, both for positive and negative identification (Sahoo, Choubisa, and Prasanna 2012), hopefully a sufficiently deep set of metrics could be established to prevent this from being an issue. When an individual becomes part of the NGO, they would be enrolled in the biometric identification system, and marked with a system for tracking of some type. This could take several forms: the most practical and useful, probably, would be a wristwatch-like interface to cloud computing systems that would contain a GPS system and other useful electronics. The purpose of this would be the providing of emergency services: in the event of an emergency, the wearer could interact in it in a way to convey the existence and, if possible, the nature and situation of an emergency. This information would be entered automatically into the ISR system, which would provide a report of the emergency, including the person’s location, their direction and speed of travel, any pre-existing health conditions, their current health state (heart rate, blood pressure, and such). The system could automatically delegate the emergency to a nearby station of the NGO, which would act (presumably with the assistance of emergency response services) to resolve the situation. (I recall having encountered similar systems designed for elderly or disabled individuals; these served in large part as the inspiration for this scenario and solution.)

This system also would provide an excellent opportunity for surveillance. By unifying all document processing and communications within the organization into the ISR system I propose, the process of collecting this data and monitoring it for threats would be vastly simplified. There are certainly compelling arguments against surveillance, but if one does not have faith and trust in the organizations created to protect them, those organizations have clearly failed at their purpose and begun to act not in the interest of those whose interests they are designed to protect, but most likely rather in the interest of their own perpetuation for the benefit of those who hold the power to control them. Thomas Jefferson famously wrote in the Declaration of Independence

“that all men are created equal, that they are endowed by their Creator with certain unalienable Rights, that among these are Life, Liberty and the pursuit of Happiness. —That to secure these rights, Governments are instituted among Men, deriving their just powers from the consent of the governed, —That whenever any Form of Government becomes destructive of these ends, it is the Right of the People to alter or to abolish it, and to institute new Government, laying its foundation on such principles and organizing its powers in such form, as to them shall seem most likely to effect their Safety and Happiness” (Jefferson 1776);

in this rather radical passage he lays out in shockingly blunt language the Lockean principle that government is more of a means to an end than an end in and of itself. It is from this basic premise that I draw my conclusion that surveillance in the interest of safety of the people by the institutions they create for their protection is an excellent strategy; I also feel that similar scrutiny must be brought to bear upon the institutions themselves by the people who have created them, thus ensuring that those institutions act effectively in their interests. In addition, these institutions should never attempt to withhold armaments from the people they protect: individuals should be provided the means to create the weapons held by their government. At present this would be impractical (it would, for example, be foolhardy to attempt to overthrow a nuclear power at present, and yet giving nuclear weapons to every person would likely end up in global annihilation), but a long-term global general de-escalation of arms is of significant importance, so that people can, relatively realistically, be in control of the institutions they have created in power as well as in name. Any revolution, of course, would likely only be engendered by horrible social mismanagement or oppression triggering a societal consensus to revolt (this has indeed been the case in some areas recently, such as in the Egyptian revolution in 2011 (Al Jazeera 2011)); this is quite fortunate as if it were not so, unpleasant chaos would no doubt ensue.

Education and qualifications could be tracked through this system, as could taxes. For example, when a person completed testing by the organization in a given subject, that score could be recorded in their profile in such a way that it could be used to determine what jobs they are allowed to work at. Taxation should be managed through time, so that a person would put in a certain number of hours of work selected from the jobs that need doing according to the ISR’s task record tracking system (possibly the number of hours necessary for a given amount of the organization’s services provided would be related to the level of qualification necessary for the work in question) to receive the organization’s services in exchange. The person could choose which services to allocate their time credits to — for example, requesting food credits, requesting tickets to operas, or donating them to a militia. In such a way, the taxes levied would hopefully never have to be put to a use the individual did not believe in. Trading could also perhaps be managed through the ISR system.

  

Implementation methodology and practical concerns

Land property rights are often contentious. For example, if most of the farmers in a community use barbed wire to impede predators’ travel onto his property, thus averting the risk they present to their livestock, but a landowner whose property is surrounded on all sides by the property of these farmers wants to hunt the predators for their fur, there is a conflict between the interests of the landowners: the presence of barbed wire will interfere with the enclosed property’s supply of fur, while the absence of it will interfere with the outer properties’ supplies of livestock. For this reason, I think that the best solution is to have private land allocations be relatively small, and surrounded by buffer zones of publically owned land. In general, privately owned land could then be used in whatever manner desired by its owner. Some exceptions to this that seem to me rather inevitable would be: the use of streams (interfering with a stream to the detriment of public access or downstream property owner(s) should be restricted); the introduction of invasive species (as they can spread to public land or other properties); the introduction of dangerous quantities of radioactive substances (as they can present a health hazard to life outside of the property); and so on and so forth. These restrictions seem to be a necessary evil until a solution to the problem is found.

A system for punishment for violating the standards of this organization could be created by the removal of benefits and protections provided by it.


The Ember organization

The central part of Ember, which its other parts are constructed to serve, is those people who have chosen to become members of the Ember organization. This organization will impose no restrictions on those who chose to become its members apart from the protection of their rights (and any restrictions that such protection entails), and anyone can choose to become a part of it or to leave it at any time. Becoming a member involves being listed in the central Ember computing environment database, presumably with sufficient biometric data to prevent identity theft or other fraudulent activity. Names, addresses, or other such personal information, beyond the biometric data previously mentioned, would not be required for the process of becoming a member. Members are not obligated to use any of the services provided by Ember, and could request at any time the termination of any services presently provided to them, including (I suppose?) even the basic protection of their human rights that Ember should by default provide.

Ethical postulates upon which it is based

Specifications

The specifications of the Ember society are the “laws” that make it work. However, they are not laws in the traditional sense, inasmuch as any person is free to leave Ember at any time. However, if a person violates the rules of Ember while they are not a member of it, then if they chose to become a member of it again, they may be penalized for such violations.

  

The Ember philosophical basis

The Ember services collective

Another component of Ember is a nonprofit organization that organizes the procurement and distribution of goods and services for its members, and perhaps those who are not its members as well. The goal of this organization would be to provide any needful things desired by its members for their lives. For instance, if a person chose to receive food through Ember, they could request that it be provided in exchange for labor. Their labor would help contribute to services requested in the future by them or other Ember members. The organization should have 24/7 available buildings staffed by Ember members from whom aid could be sought, such as the furnishing of meals, shelter, clothing, access to information, or other services, in exchange for labor. That way, if an Ember member is in trouble in a strange town, for instance, with no money, identification (beyond their own body), or other resources, they could go to the local Ember building to receive any services they desire; they could even build up credit in preparation for such an incident by working for the Ember collective prior to taking a trip, for instance, so they would have already earned any services they might want — travel insurance, of sorts.

Specifications of goods and services

The Ember computing environment

This section documents the Ember computing environment specifications. The Ember computing environment is a centralized append-only cloud database, synchronized regularly to the Internet Archive, and a computer operating system and Web interface for using that database.

It consists of the following components:

  

  

*   Data formats: Abstract specifications of the data formats used by the computing environment.
*   Data archive: append-only list of records, each comprising a unique ID paired with an EDF node. See Structural principles section for details.
*   Server infrastructure: A computing cloud that responds to requests from clients. “Server” does not necessarily refer to a hardware server, but rather to an application that responds to requests from another application (client or server).

*   Public interface servers: Accept API requests from clients and pass them to the correct handlers.
*   Application servers: Handles user authentication, in-the-cloud compute tasks, etc.
*   Search servers: Receives search requests from and returns results to the public interface servers. Indexes documents as they are added to the data repository.
*   Data servers: Receive instructions from and return data to the public interface servers and the application servers. Interact with the data repository. Handles encryption and decryption of documents.

*   Clients: Applications that interact with end users or follow instructions to leverage the computing environment.  
    

Structural principles

Ember has several components:

Data formats

EDF Specification

Header

The Ember Document Format (EDF) is a data format used by the Ember computing environment. It is a descendent of DCE, although it is **not** a version of DCE, and is **not** compatible with the DCE specifications. EDF as presented in this version of _Ember_ is NOT the same file format as EDF presented in version 43, and is NOT compatible with it. The earlier format can be identified by the magic number at the beginning 0x 89 45 44 46 65 0D 0A 1A 0A FE FF. The magic number of this file format is 0x 89 45 44 46 65 0D 0A 1A FE FF 0A.

The latest version of this book (_Ember_) is the official latest EDF specification

  

Every EDF file begins with a 4096 byte header portion. That will follow a format that will not change in the future. Header format (partly based on the PNG example and advice at http://www.fadden.com/tech/file-formats.html ) (in ASCII, variable and non-ASCII byte regions marked by brackets \[\]):

\[0x89\]EDFe\[0x0D0A1AFEFF0A\]|http://futuramerlin.com/|Format version:\[972 bytes identifying file format version; these are defined in the specification\]|MD5:\[32 bytes of MD5 checksum in lowercase ASCII hexadecimal\]|SHA1:\[40 bytes of SHA-1 checksum in lowercase ASCII hexadecimal\]|SHA512:\[128 bytes of SHA-512 checksum in lowercase ASCII hexadecimal\]|Author Identifier:\[567 bytes identifying the way the file was created (i.e. what software was used to produce it); these are defined in the specification\]|Creation metadata:\[1517 bytes to be used as specified below\]|Comments:\[501 bytes for use by document creators or other software\]|MD5:\[32 bytes of MD5 header checksum in lowercase ASCII hexadecimal\]|SHA1:\[40 bytes of SHA-1 header checksum in lowercase ASCII hexadecimal\]|SHA512:\[128 bytes of SHA-512 header checksum in lowercase ASCII hexadecimal\] \[0x00\]

Other than this header, which is guaranteed to be the same in all future versions of this specification, all other aspects of the file format may vary in future specifications. The non-header checksums are of all of the document except the header. The header checksums are of the beginning of the file to the end of the Author Identifier region.

The file format version for this version of the standard is ASCII 1\_0\_44 padded with 966 ASCII spaces.

If the Author Identifier begins with ASCII PUAI: then it is a Private Use Author Identifier and is not specified by this standard. Private Use Author Identifiers and Comments may not contain the vertical bar | or ASCII null (0x00).

Creation metadata format specification

If the Creation metadata starts with **20 ASCII spaces**, the following data (until the end of the Creation metadata block) is to be interpreted (using the Gregorian calendar) as:

|Creation time:\[±6-digit year\]-\[2-digit month\]-\[2-digit day\] \[2-digit 24-hour hour\].\[2-digit minute\].\[2-digit second\].\[6-digit microseconds\] \[time zone offset in seconds\] \[32 spaces reserved for future use for time certainty value\]|Creation location: \[location beginning with “geo:” or “(name) ”, padded to the right with spaces\]

  

If the location begins with geo:, it is to be interpreted as a geo URI (http://tools.ietf.org/html/rfc5870 ).

  

If the time certainty value begins with an ASCII space, it is a private use value not specified by this standard.

  

If the Creation time or Creation location are all empty (filled with spaces), they are to be interpreted as unknown.

  

If the Creation time or Creation location begin with a space, it/they is/are a private use value not specified by this standard.

  

Example (geo URI example from https://en.wikipedia.org/wiki/Geo\_URI ):

|Creation time: +002015-03-16 18.23.34.000000 +50400 \[32 spaces\]|Creation location: geo:37.786971,-122.399677;crs=Moon-2011;u=35\[lots of spaces\]

Body

The remaining information in this section pertains to this version of the specification, and may change in future versions.

  

At present, any ASCII text can be placed inside an EDF file. No meaning is given to it beyond that inherent to it.

  

Each EDF file has three components: a header, a record data chunk, and a complex data chunk. The information in the record data chunk is required to be entirely redundant to the information in the complex data chunk, and is included to provide an efficiently machine-readable representation of structured data included in the complex data chunk.

  

  

  

ENF Specification

Ember Node File specification:

  

File extension enf

  

An ENF is a EDF document with additional information required.

Server behavior specification

OS client behavior specification

WWW client behavior specification

Use cases

Use case 1

  

Structural principles: old Weave version

Note that this section is VERY outdated as of 2014-12-30, and describes the Weave system. The current proposed data structure as of 2014-12-30 is similar, but uses an append-only list instead, in which each entry is a node. (That way, relationships, metadata, etc. are all nodes and so have all of the fun and useful properties of nodes.)

Nodes

A **node** is an individual record of an item. It is the central element to data organisation in Weave. A node can have both metadata and relationships to provide information regarding it.

It can have a data file attached to it.

A node's dissemination can be controlled through the use of Permissions.

Relationships

A **relationship** is a description of the connection between two nodes.

Metadata

A metadatum is a record of a concrete attribute of or an objective truth regarding a node, such as the number of words in a book or the dimensions of a sculpture.

Ideas and Notes

Authority Contexts

These do not indicate that information is guaranteed correct within the given authority context, but only that that is the intended authority of the material.

*   Objective consensus: Like Wikipedia. Neutral point of view. Doesn't necessarily represent all points of view equally because of lack of consensus about them.
*   Objective egalitarian: Neutral point of view, and tries to accept all viewpoints as equally legitimate.
*   Subjective consensus: No neutral point of view, but established by general consensus.
*   Objective single/subset source: Neutral point of view, as established by a single source or a subset of available sources.
*   Objective individual/organization source: Neutral point of view, as believed by an individual or organization.
*   Subjective single/subset source: Opinion (no neutral point of view), as established by a single source or a subset of available sources.
*   Subjective individual/organization source: Opinion (no neutral point of view), as believed by an individual or organization.

And the in-universe counterparts of the above:

*   In-universe consensus
*   In-universe egalitarian
*   In-universe subjective consensus
*   In-universe objective single/subset source
*   In-universe objective individual/organization source
*   In-universe subjective single/subset source
*   In-universe subjective individual/organization source

Modular Dc Sequence Builders

Idea: Modular Dc Sequence Builders

For instance: A set builder: Collects nodes. Could be used for file uploads, etc.

So, if I want to "upload" a file (send it to an Ember app), I am given a set builder dialog. It lets me pick a document or data record to send. Then, the set containing that document (at its present revision) is saved as a node; that node ID is then passed to the app. The node would have a trait indicating that it was static (that the contents it references would not be able to be changed — just revisions of them at the present state). Alternatively, a dynamic set could be created, in which the document would be able to be updated. Sets could have restrictions e.g. about how many documents they could contain, whether they could contain complex structures (such as a directory tree), whether one document could be swapped out with another or not, (or whether they are dynamic or static). Sets could also be driven by search criteria (e.g. the most relevant 10 nodes for a given keyword, or all nodes matching "DOOM" XOR "MOOD", or all four nodes with type Musician and a "is member of" relationship to "The Beatles", or the rapidly changing set of nodes with type Musician and a current or past "is member of" relationship to "Yes"), or built programmatically from new or existing nodes. This would allow file uploads, searches, etc. to all be driven using the SAME basic user interface module. Basically, a file picker on steroids. The set node would have a Dc sequence representation, as do all nodes, so this is really a Dc sequence builder. A set builder could also be used, for example, to choose what nodes to perform an operation on. So, if I'm writing an app to find all the "has foo of" relationships, delete them, and create corresponding "has bar of" relationships, I could create a dynamic set representing all the "has foo of" relationships, the app would know the node ID of that set, and it would then operate on the present state of that set whenever it is run. Of course, like anything else in Ember a set could "time travel" — a new set could display its results as if it had existed at a previous time, or the previous contents of the set could be displayed even if it did exist then. Another application of the set builder could be creating an Ember theme to share with the community that displayed the current top 10 tracks on the Billboard Hot 100 — a set could be created representing the top 10, and a rule could be created if desired to deal with the condition if the Hot 100 was discontinued: the set could be configured to return nothing, to return a fixed list, to return the top 10 from the final edition of the charts, etc..

Likewise, a Color sequence builder should exist, and a Time sequence builder, and a Number sequence builder (could handle variables and complex expressions!), and a Mathematical Equation sequence builder (which would create a Number sequence builder for numbers).

General ideas

*   Tagged nodes, including a system for storing the tags as part of a tag grouping (which could have permissions like a document). Would also have a global tag system, so people could add tags to the global tag grouping.
*   Liberal relationship formation and node typing: A node can be assigned any other node as its type; a relationship can be from any type of node to any other type of node even if that is not how the relationship is defined (this situation could display a warning, for example)
*   Hopefully these traits would help keep restrictions from being a pain in the ass

Data flows

Listed: tolerance per item — (maximum ping in ms | minimum bandwidth per second)

Fully featured client

Input

*   keyboard(s) and button(s) — (0 | 200b)
*   microphone(s) — (5 | 6144kb assuming 32 bits per sample 192kHz) (calculated using http://www.theaudioarchive.com/TAA\_Resources\_File\_Size.htm )
*   GPS(es) — (1000 | 1kb?)
*   accelerometer(s) — (1000 | 512b?)
*   ambient light sensor(s) — (1000 | 512b?)
*   camera(s) — (100 | 48gb) (assuming 8K 60fps 48-bit RGBA) (calculated using http://web.forret.com/tools/video\_fps.asp?width=7680&height=4320&fps=60&space=rgba&depth=48 )
*   pointing tool(s):

*   Simpler:

*   mouse — (0 | 800kb?) ( see https://answers.yahoo.com/question/index?qid=20060707143627AAsH1ay )
*   pointing stick
*   trackball
*   trackpad

*   Complexer:

*   tablet
*   touchscreen
*   multitouch trackpad (0 | 200kb?) (see http://www.digikey.com/product-search/en/integrated-circuits-ics/data-acquisition-touch-screen-controllers/2557134 )
*   3-dimensional pointing tools

  

Output to user

*   Display(s) (2-dimensional)
*   speaker(s)
*   Display(s) (3-dimensional)
*   status (etc.) light(s)
*   projector(s)

  

Server

Input from clients

*   Requests:

*   insert record
*   get record
*   get matching record list (e.g. search results)
*   establish authentication

  

Output to clients

*   Responses:

*   Confirmation messages (ACKs)
*   records
*   record lists
*   authentication confirmation

Note: DCE named syntaxes

DCE named syntaxes? (as extension of named sequences) E.g. U+1F4B0 MONEY BAG could map to a Dc "Money bag". The Money bag Dc would be defined as: <Enclosing Bag>(<Class:Currency symbols>)

This would allow a) the mapping to represent the money (currency symbol) semantic of the Unicode character and b) a user to create a visually identical sequence with something else in it (e.g.

<Enclosing Bag><Begin Discrete Block><Begin Style Override><Begin Style Definition><Sans Serif><End Style Definition>XXX<End Style Override><End Discrete Block>

to create a flour bag if the user wanted the same style as the Money bag)

Node examples — use cases:

Node — a new document someone created… — type: Digital data Has title (file name); has relationships: ☆→created by (ember account), ☆has revisions (each time saved or autosaved). Node: — a piece of music someone had in their computer upon backing up w/ Ember… — type: Digital data. Has title (file name); Relationships: has revision: only the current revision, since it’s never been resaved; has creator (ember account).; has date created (date created from filesystem — with source annotation) Note that the content & format metadata are stored with the Revision nodes, not with the main nodes. Each revision node has autodetected music metadata (e.g. by Musicbrainz PUID lookup) or other autodetected metadata, such as plagiarism detection information. Music metadata & such can be added manually to main &/or revision nodes. DCE (and Wreathe and Ember) should use Google Wave’s letter-by-letter edit tracking technology… then DCE data backed up wouldn’t need independent revision nodes like that — but instead just independent revision nodes for actual conceptual revisions of the document. Maybe, to prevent confusion, autosaved revisions could be called by a different name (i.e. a word other than “revision”.)?…. Wreathe and Ember should hide their DCE underpinnings, for the most part, but at the same time, lower-level DCE editing should be easy.

Implementation

A full DCE editor à la Wreathe isn’t necessarily necessary for Ember’s web-based administration — just use the all-in-one DCE editor / Ember browser / etc. in Wreathe if one wants desktop-power-level DCE editing in Wreathe \[possibly meant to write Ember there?\]. Plus, DCE editing can be easily implemented in a web environment without worrying about rendering or display so much — just work with the raw Dcs if that kind of “advanced” functionality is desired, if necessary…?

Database schema ideas

Ember data modeling

Might be useful: http://www.slideshare.net/DanLynn1/storing-and-manipulating-graphs-in-hbase

Example schema

Note that this is simplified (doesn't deal with character encodings, localisation, strings, etc….

Rough example of how things might work (note that type 2 is a relationship and does not necessarily take data but has a node as its target, while type 3 is a metadatum and has to take data but only has its root node:

Comments and ideas

How to deal with complicated situations, e.g. three-node relationships? Could relationships all just be special cases of metadata? (Or maybe vice versa, although I don't think that would work?) What about nondirectional relationships? Or unidirectional?

Everything in one big table??

How to delete relationships??

Relationships and metadata as nodes, all together in one big table??

For each node: id

For each node revision: id, node\_id, revision\_date, type, data, node\_1, node\_2

node\_id: related to node table

type: e.g. "Node has number of pages metadata" or "Data" or "Person" or "node\_1 is author of node\_2"

data: DCE data ID associated with the node (for metadata, this would be the value of the metadata; for a data-type node this would be its contents)

node\_1 and node\_2: two nodes that this node represents a relationship between

Structuring EMBER DMS

  

The Ember data management system: project objectives, implementation plan, and operational structure.

Project objectives

  

  

  

  

  

Implementation plan

  

  

  

  

  

Operational structure

UI ideas for the Ember project

Top of Form

  

Button

Layers:

*   Background
*   Highlights (like murrine, except not round: \`-. \`-' .-' .-. = left up right down, respectively)
*   Content

Instead of content highlights, have a boolean parameter for stacking order that allows the Highlights layer to go above or below the Content layer.

_n_\-space-native computer graphics system

Idea for a robust n-space-native multithreaded compositing computer graphics system…:

There can be many applications.

Each application can write to many source spaces, each of which has its own pair of buffers. Each source has two buffers so the data can be read by the compositor at any time, even while the source AND one buffer are being updated. That way, the compositor doesn't ever have to wait. It could just not paint things that weren't ready, but then that could make those things flicker.

There is one OS output system.

Compositor is a space of the same type as the output (for a 2-dimensional computer screen, for example, the composition space is 2-dimensional).

A space is an n-dimensional data structure of graphics (generally vector) objects. Except for the composition space, spaces are organized in relation to other spaces (the origin of the enclosed space corresponds to a given position in the enclosing space). When the enclosed space has more dimensions than the enclosing space, each extra dimension can be chosen to be sliced, projected, or (sliced and?) protruding from the enclosing space. The compositor should also be able to handle other cases correctly, e.g. when the size of one unit in a space is different from another, when a space is rotated relative to another, when the size of one unit changes within a space, unusually shaped spaces, spaces that wrap around at the edges, spaces with holes in them, spaces split into parts, spaces with areas that teleport, spaces that change over time, two or more a-dimensional spaces with b intersecting dimensions (for b less than or equal to a — the other dimensions protruding), etc..

Regarding unusually shaped spaces: consider a piece of string as a one-dimensional space. It has a clear linear point system along its length, but it can be bent within 3 dimensions. This case should be handled correctly by the compositor.

: How to handle situations where an application needs to reference another application's spaces? Shouldn't be too hard to do, but maybe should have some sort of security/access protection system in place….

  

The finely dashed lines indicate data going to or coming from multiple instances of the structures shown.

To clarify: the compositor should be able to composite any number of simple or complex n-dimensional spaces into a single simple n-dimensional space.

Top of Form

  

Pseudocode for the methods:

Top of Form

  

Bottom of Form

Semaphores used, and their meanings/purposes:

*   When S is up, Compositor can read buffer A
*   When T is up, Compositor can read buffer B
*   When U is up, Source can write to buffer A
*   When V is up, Source can write to buffer B

Top of Form

  

Bottom of Form

Source.push()

if(S, V are up):

T.down()

copy Source to buffer B

T.up()

else if(T, U are up):

S.down()

copy Source to buffer A

S.up()

Top of Form

  

Bottom of Form

Compositor.pull()

if(S is up):

U.down()

copy buffer A into Compositor

U.up()

else if(T is up):

V.down()

copy buffer B into Compositor

V.up()

Coal (data storage system)

The Coal Project is an experimental knowledge archival system built using the Internet Archive’s services. The project stores knowledge in a consistent way that enables the information to be understandable by both computers and humans, and accessible to historians, analysts, and other researchers. It is distinct from projects such as Wikidata and MusicBrainz that aim to collect knowledge, in that a primary purpose of the Coal Project is to archive this information. It is also distinct from projects such as the Internet Archive that primarily archive unstructured documents, in that the Coal Project archives knowledge in a way that can be understood by computers. The Coal Project can supplement archived documents by making the knowledge they contain available separately from the documents themselves, as well as by placing documents within the historical context in which they were created by making connections between the documents and other archived records.

Coal is the storage system for Ember.

  

In a nutshell: Long number in, short number out… then later, can put the short number in and get the long number out

File formats and extensions

*   \*.cct: Coal chunk temporary data file.
*   \*.cot: Coal temporary data file. Can be any binary data.
*   \*.coal: Encrypted, compressed Coal chunk.
*   \*.coal4: Encrypted, compressed Coal chunk, with embedded metadata.
*   \*.cstf: Coal string temporary file (data provided as string for new coal)

Top of Form

  
Rules

  

*   Never remove a feature, capability, or option. If the development of an improved architecture or addition of new features involves scrapping existing code, reintroduce all previously existing capabilities before releasing the changes to the software.
*   Make sure that all tests pass when releasing changes to the software.
*   Resolve issues exclusively in the following order (within each category, resolve in order of decreasing priority):

*   Poor implementations
*   Poorly tested implementations
*   Bugs:

*   Because code is an implementation of the expectations defined by the tests, if the tests pass, then any bugs are in the tests, not the code. Therefore, as with all other changes, fix any given bug using the test-driven development (TDD) procedure.

*   Enhancements

*   Implement any desired changes using the TDD procedure.

  

  

The Test-Driven Development Procedure

  

*   Write the simplest possible failing unit test that represents the desired change.
*   Make the minimum changes to code necessary to make that test pass.
*   If necessary, refactor the code and/or test suite.
*   Repeat from step 1.

  

  

Procedures outline

Main:

*   Greet user
*   Create a ProcessManager
*   Start Bootstrapper thread
*   Wait for Bootstrapper to indicate that all SessionManager threads have finished
*   Exit

  

Bootstrapper:

*   For each interaction context (e.g. terminal, display, etc) found, create a corresponding Context object indicating the traits and capacities (e.g. display resolution, input interfaces such as a mouse or keyboard, capacity for direct access to the hardware, size of a terminal, etc.) of that context, and start a session manager thread (passing the relevant Context object to it so it knows what to do).
*   Wait until each SessionManager is terminated, or until any one SessionManager sends a shutdown signal and no other sessions are active, or until any session sends a global override shutdown (in which case other logged-on users’ accounts’ states should be allowed to finish being saved if saving is still in process, to the cloud if online, and to disk if offline).
*   Indicate to main thread that all session threads have finished.

  

SessionManager:

*   Greet the user.
*   Create a ProcessManager.
*   Start an ApiClient thread to manage any requests to the server.
*   Display a login screen.
*   When a user attempts to log in, check the data with the ApiClient, or with a local cached configuration.

*   If the credentials are correct:

*   Start a CommandHandler thread to process instructions from the UserInterface.
*   Start a UserInterface thread, passing the session manager’s Context object to it.
*   Wait until the UserInterface thread indicates that the session has ended.
*   Go to step 4.

*   If the credentials are incorrect:

*   Inform the user.
*   Go to step 4.

  

URI scheme and directory structure for Ember

  

Base URL:

ember://\[int:Ember version node ID\]/\[int:Ember user node ID\]<(optional).\[int:User domain node ID\]>/\[DCE:Time at which to view the request\]/\[int:resource node ID\]\_Name/\[subresources\]

  

Subresources:

For example: Listing

ember://1/2/\[time\]/3\_ArbitraryNode/M\_Title/

where \[time\] was the DCE representation of Now would return a list of node IDs providing Titles for node 3.

  

Other modes of accessing things can work too:

ember://1/2/\[time\]/4\_ScratchPad/ might be user 2’s scratch pad directory.

ember://1/2/\[time\]/5\_Environment/6\_Keyboard might be a file representing user 2’s keyboard, like something from /dev/ in Linux.

Etc.

  

All Ember URIs must be: ember://(\[\[a-zA-Z0-9%\_\]\]/)+<(optional)/>

  

% would be used for escaping

\_ separates a filesystem identifier (either a node ID or a subresource type identifier) from the file name

The file name is not really definitive of anything; the node ID is what distinguishes one thing from another. File names are useful for being user-friendly, though.

  

Subresource types:

*   M: Metadatum
*   R: Relationship
*   H: History of node
*   D: Data of this node or subresource
*   C: Data of the relationship of the specified node to another node with regard to the enclosing directory
*   (…?)

  

Subresources can be chained together:

ember://1/2/\[time\]/3\_ArbitraryNode/M\_Title/7\_ArbitraryNodeTitle/H\_History/8\_RevisionOfArbitraryNodeTitle/M\_CreatedBy/9\_UserWhoCreatedRevisionOfArbitraryNodeTitle/M\_Parent/C\_10

would be the DCE representation of the information about the relationship between the user who created revision 8 of node 3’s title, and that user’s parent.

  

Ember builtin commands (built in to the shell/CLI) should be exposed via the directory structure. As should other resources Dcs, DCE mapping data, relationship types, node types, metadata types, etc….

  

Groups and Domains

I think there should be a couple features in Ember to make it optimally useful for business use: user groups and domains.

  

Groups

A user group is a list or dynamic set of users that can be used in much the same way as a real user in e.g. ACLs.

  

Domains

A domain is a user group with some extra features, as well as including subdomains. Each user in a domain can choose to use their Ember account as their personal user account, or as any one of their domain roles. Each domain has a _domain authority_ who determines who has what rights in that domain. If the domain authority of the top-level domain so chooses, he/she can have absolute control over all the subdomains within his/her domain (overriding the domain authorities of the individual subdomains). This is only the case if he/she was the creator of the subdomain, unless the actual creator of the subdomain chooses to delegate that control to the parent domain’s authority. Domain authorities can transfer their power to any user, user group, or domain, just as (almost) any document can have its ownership changed. This is because domains are nodes, as are user groups and users. (Note that user nodes can’t have their owner changed, however they can be merged.) Domain/subdomain links do NOT have to be strictly hierarchical.

  

Boss of company A creates domain for their company, giving their CFO membership in the domain, and creating a Finances subdomain for the finances department in which the CFO is the authority. Boss of company B creates domain for their financial consulting company, and is the authority of it. Company A chooses to purchase company B to manage internal finances at Company A, and so the company B domain is added by the CFO of company A as a subdomain of Company A’s Finances subdomain; the boss of B releases absolute control over their consulting domain to company B.

  

End result (doesn’t quite correspond exactly to the story above since I decided to add a couple more examples, but is basically it):

*   Company A domain:

*   Authority: Company A boss
*   Member: CFO
*   Members: Other employees, with varying levels of access (Authority can set ACLs for members’ access to documents)
*   Subdomain: Finances:

*   Presiding authority: Company A boss
*   Authority: CFO
*   Members: Finances employees
*   Subdomain: Company B

*   Presiding authority: Company A boss (Given that Company B boss delegated authority to company A boss even if not, could still be an uncontrolled subdomain)
*   Authority: Company B boss
*   Members: Company B employees
*   Subdomain: Company A domain, if Company B boss added it as a subdomain (if Company A boss accepted it as a parent domain, it would then show up as a subdomain for them too) (this is pretty much pointless and random, but provides an example of why domains are not strict hierarchies)

  

Notes on apps and features

  

There are a bunch of apps and features that I want to figure out how they will map onto Ember. This is an initial attempt at enumerating (is that the right word for _making a list of_?) them. (Also: Be able to have a user run one document/app in a given domain, and another in another, and a third as themselves, etc.. No need to make them have separate sessions for working in different domains if they don’t want to that would make browsing Facebook at work a lot more annoying!.) Maybe more ideas (a lot already added from): http://fileformats.archiveteam.org/wiki/Electronic\_File\_Formats

  

*   Getting a summary of everything going on (start / home screen kind of thing): Customizable. For example, could contain:

*   A brief reminder of who/where/when/etc. I am
*   What I have to do today (schedule, tasks, etc.)
*   Important news (e.g. emergencies, etc.)
*   A search box
*   A way to easily create a journal entry, blog/microblog post, social networking status update, etc.
*   A way to easily add an event to my schedule or a task to my to-do list or a note to myself (Stickies style) or a more thorough journal-y note to myself (à la this note on apps and features) (this could even include jotting down / recording / playing in musical ideas, etc.)
*   A way to easily compose an IM / email / etc. or place a voice/videocall
*   Messages from others (emails, IMs, voice/videomails, etc.)
*   Other guided information resources (see below)
*   A hierarchy of things to browse through (web-portal style)
*   …

*   Media playback

*   Movies

*   Feature films
*   Video series
*   Online streaming home video (YouTube, etc.)
*   …

*   Music

*   Albums
*   Individual tracks
*   Music videos
*   Artist/album/tag/etc. radio
*   Playlists, including shared playlists
*   Scores
*   …

*   Games

*   Interactive fiction, MUDs, MOOs, MMOs, puzzles, board game simulations, many other types of games …

*   Ebooks
*   Poetry
*   Quotations
*   Essays
*   News
*   Comics
*   Manga
*   Blogs & RSS feeds
*   Consuming realtime media (television, radio, livestreams, …)
*   …

*   Document creation and sharing

*   Writing a paper
*   Collaborative document editing / creation
*   Composing a score
*   Writing a book
*   Creating a movie
*   Creating a storyboard for a movie
*   Writing a script
*   Editing a photograph
*   Creating animation
*   Notes to myself (Stickies style)
*   More thorough journal-y notes to myself (à la this note on apps and features) (this could even include jotting down / recording / playing in musical ideas, etc.)
*   3D modeling and rendering
*   CAD
*   Diagramming
*   Creating a database
*   Mind mapping
*   Recording and producing a song
*   Diagramming structures in multiple dimensions
*   Developing apps
*   Designing a typeface
*   Working with GIS data
*   Recording a photograph or a video using a webcam, scanner, camera, …
*   Recording audio using a microphone
*   Working with geometric figures
*   Recording music from a USB/MIDI instrument
*   Blogging and microblogging
*   Working with legal documents
*   …

*   Browsing through documents and information

*   Browsing a Web site
*   Browsing through Ember nodes
*   …

*   Working with structured information (this is mostly also document creation / management)

*   Managing a genealogy using Ember records
*   Managing a calendar / schedule
*   Managing a to-do list
*   Managing a contacts directory
*   Working with scientific data
*   Maintaining a retail environment (online or physical)
*   Managing recipes
*   Managing a reading list
*   Journaling
*   Managing a bibliography
*   Fantasy sports
*   Managing and using bookmarks
*   Managing financial information
*   Managing personal notes, documents, projects, photographs, videos, etc.
*   Managing a class
*   Participating in a class
*   …

*   Resources/tools

*   Dictionary
*   Thesaurus
*   Chemical elements chart and data
*   Maps, travel directions, and sky charts
*   Calculator
*   Using the computer as a flashlight
*   Field guides / identification keys
*   Instructions and how-to information
*   Lessons on things

*   Typing lessons
*   Instrument lessons
*   Tutorials on using software
*   …

*   Support using Ember
*   Nutrition information
*   Support in other aspects of life (e.g. help with trouble fishing, etc.)
*   …

*   Management

*   Database creation and administration (this is really “Document creation”, but also listed here)
*   Network administration
*   Programming
*   Emulation of other computing systems
*   Working with files and directories
*   Converting data from one format to another
*   Compressing and/or archiving data and/or directory structures
*   Imaging disks
*   Encrypting, decrypting, creating checksum records for, checking against checksum records, packing with parity data, restoring from parity data…
*   Running apps (this is basically just opening documents)

*   Distributed computing

*   Forensics
*   Computer security

*   Malware prevention, intrusion detection, …

*   Data serialization
*   …

*   Exchange

*   Buying and selling goods
*   Trading stocks
*   Purchasing and selling tickets
*   Issuing and redeeming coupons
*   Sending money (money-order style)
*   …

*   Searching

*   Answers (e.g. facts, math questions)
*   Finding media (e.g. news, movies, music, etc.)
*   Locating documents
*   …

*   Guided time use and content consumption

*   Notifications

*   Emergencies
*   Important news
*   Emails
*   Blog feeds
*   Things I’m supposed to be doing
*   Personal health warnings
*   Computer status warnings (disk/memory failure, overheating, can’t connect to Ember server, running out of battery power, …)
*   …

*   Activity guidance

*   What to do right now
*   What I have on my schedule upcoming
*   …

*   News headlines
*   Blog feeds
*   Podcasts
*   Top charts (popular items)
*   Best charts (classics / enduring popularity items)
*   Suggested recipes
*   Fitness tips
*   Weather information
*   Stock market information
*   Computer’s status (resource usage, etc.)
*   Personal health
*   Sports information
*   Acquaintance suggestions (people I might find interesting to talk to / get to know)
*   Dating suggestions / matchmaking
*   …

*   Communication

*   Instant messaging
*   Email
*   Video chat and group video chat
*   Audio and video messages
*   Collaborative document editing (this is “Document creation” but is related to communication)
*   Social networking
*   Blogging and microblogging (this is “Document creation” but is also a form of communication)
*   Newsgroups
*   BBSes
*   File sharing
*   Industrial automation (machine embroidery, etc.) (not sure if this fits in communication, since it’s communication with machines)
*   Sharing/microblogging/adding as status updates URLs, photographs, music, videos, …
*   Social bookmarking
*   …
