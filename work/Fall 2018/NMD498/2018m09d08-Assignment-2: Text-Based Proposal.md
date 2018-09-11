The structure of this document is based on "Text-based project proposal: Template" (http://jonippolito.net/teaching/capstone/text_proposal_template.html).

Note that some sections have been re-ordered, to ensure that the most relevant and accessible information is presented first, with lengthier and more abstruse sections placed later. This proposal incorporates some earlier writings on the project.

At the bottom is a bunch of text related to the project. Most of it is probably pretty bad....

# Abstract

This proposal suggests a project to develop and facilitate collaboration on a specification, a computing environment, a library, and a model community, to serve as resources and infrastructure for innovative communities.


  

Ember is a multifaceted project to develop a scalable environment for building an effective society.

Create a system to enable efficacy, efficiency, and justice of society.

The Ember Project would create a global power structure that would work to create an efficient opt-in society.

# The problem

There is no project that is successfully systematically supporting the libre development and distribution as best as possible of the full set of knowledge and resources needed to support humans' standard of living. This results in wasted effort on developing redundant proprietary technologies, regressions in standards of living caused by the unavailability of proprietary systems, and the incalculable loss of shared cultural heritage through inconsistent or nonexistent archival practices (and in many cases active hostility towards historical preservation, especially in the interest of short-term personal economic gain).

There is also no project that is sucessfully ensuring the availability of communities managed in the long-term interest of their constituents, humanity, and the environment. This results in human suffering and inequality, catastrophic cultural and historical loss, and prolonged global ecological crises caused by government and corporate apathy and abuse.

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
  - This includes both in writing and in person. Improving my in-person communication skills is especially important (my in-person speaking on this project is disastrously bad).

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
- Figure out how to connect the community's network to the Internet, somehow (its connection shouldn't be dependent on external parties: it should follow the Internet Archive's model of being an AS with peering agreements) to allow accessing and preserving the knowledge there. In accordance with avoiding dependencies on external resources, the Internet should likely not be relied on for providing connectivity, although at least in the beginning it is useful for communication to facilitate the project, and perhaps the benefits of providing Internet-based remote login to the information technology environment would outweigh the risks.

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

## Design principles

These design goals are present to attempt to prevent regressions in the availability and utility of the project.

- Buildable: All technologies and materials needed to build, use, and disassemble the design must also meet these design requirements, and must be fully specified in this document, with reference within the design to those other design specifications, so that every design listed here can be built, used, and disassembled without any knowledge outside of this document, beginning with only the materials available naturally.
- Deconstructable: The design should be able to be disassembled and/or reassembled without any damage or loss to the materials used.
- Materials: All materials needed to build and use a design should be:
  - readily available (not rare or geographically restricted)
  - in a form that can be efficiently returned to a natural state if desired at the end of their lifespan (many plastics, for instance, would fail this criterion unless an energy-efficient tool for reversing their creation is available)
  - all technologies needed for their sourcing, processing, and end-of-life processing must meet these requirements
  - in a form that will return to a natural material over time (the goal of this rule is to avoid materials that result in nonbiodegradeable litter like the microparticles that synthetic textiles sometimes result in; it could probably be better written)
- Rugged: All item designs should be long-lasting (not disposable, able to function for many years), rugged, and able to function in adverse conditions.
- Safe: All designs should be safe to build, use, disassemble, and biodegrade.
- Reliable: All designs should work predictably and reliably.
- Libre: The designs should follow the principles needed to ensure they are freely usable, drafted here under "Licensing".
  - Any external dependencies of the project should be libre, so they can be forked and maintained if necessary.
### Licensing

Aside from sections 2 and 3 of the Ember Library, all portions of the Ember project should be compliant with the Ember Freedom Requirements, and all portions of the project original to Ember should be compliant with the Ember Freedom Requirements. This is likely not yet a legally effective license, due to a lack of available legal expertise to work on it, and consequently, most of the Ember project and its ancillary projects are licensed under the GNU Affero GPL, version 3 (see the licensing information in each individual repository for details). The term "Information", in these requirements, refers to things such as music, software, computer typefaces, visual art, patents and inventions, specifications, schematics for equipment, etc.

#### Rationale

These licensing requirements are present to attempt to prevent regressions in the availability and utility of the Ember project.

#### Ember Minimal Freedom Requirements (EMFR)

For given Information to be compliant with this standard, the following must be true of it:

- Self-contained: All information necessary for the full and complete use of the Information must also be EMFR-compliant.
- Redistributable: The Information must be legally redistributable.
- Source included: The preferred form for editing the Information must be available and EMFR-compliant; when used by Ember or when presented as EMFR-compliant, if the Information is in a form that is not the preferred form for editing it, a copy of the Information in the preferred form for editing it must always be included with the other copy.
- Notice of terms: When used by Ember or when presented as EMFR-compliant, documentation of these requirements must be provided with all copies of the Information.
- Irrevocable: The restrictions on the Information that make it EMFR-compliant must be irrevocable, at least until it falls into the public domain by legal necessity.
- Unencumbered and unencumbering: The Information may not employ any means to prevent or hinder copying or using it freely (e.g. DRM); furthermore, if the Information enables access to information that employs such means, the Information must not be complicit in facilitating those restrictions (for instance, an EMFR-compliant app that allows streaming DRM-protected content to an HDMI content-protection–enabled monitor MUST enable that content to be used freely by the user, and may not simply pass protected content through to the monitor without being able to decrypt it and enable its free use by the user; software like Firefox's content-decryption-module sandbox is thus not EMFR-compliant).

#### Ember Freedom Requirements (EFR)

This is the same as the Ember Minimal Freedom Requirements, with the following additional restrictions:

- Requiring non-misleading attribution: Attribution to the source of the Information must be required; if the Information is a derivative work, it must be made clear that it has been modified from the source information.
- Editable: It must be legal to modify the Information, and to redistribute both modified and/or unmodified copies of the Information.
- Mandatory publication: The Information must be promptly published and made widely available publicly at the cost of distribution or less.
- Copyleft: These requirements must be required to apply to all derivative works of the Information, and must be required to apply to all information packaged with the Information (e.g., non-EFR-compliant firmware may not be provided with an EFR-compliant kernel).
- Inherited: New information created using the Information must be EMFR-compliant.
- Provision as a service: When the Information is provided as a service (as in the case of software being run on a server), the Information must be made readily available to those who access the service, and documentation of these requirements must be provided with the service.
- Notice of terms: Documentation of these requirements must be provided with all copies of the Information.
- Restricted use: The Information may not itself be used as or as part of advertising or propaganda without the agreement of its creator or creators, although it may be used as a tool for the creation of advertising or propaganda.
- Irrevocable: The restrictions on the Information that make it EFR-compliant must be irrevocable, at least until it falls into the public domain by legal necessity.

## Goals

An Ember community should provide useful elements of survival: shelter, nutrition (including food and water), medical care, education, and information. It would do this as its fulfilment of its objective of managing the various needs of a society, by enabling people to be effective participants in that society.

One role of Ember would be to provide goods. For this, it would be ideal for Ember to control as much of the supply chain as possible. That would allow efficient provision of the goods such as to reduce cost and ensure quality. That control of the supply chain would, in an ideal scenario, extend to all stages of the process, from production of the raw materials to component production to assembly to distribution, as well as shipping at all stages of the process. If Ember both controlled production of raw materials in a region and was the dominant institution working to ensure that those resources are used responsibly, it would of course be important to take the interest Ember has in using the resources sustainably into consideration.

There should be a universally and easily accessible facility to allow the community to vote easily, with systems in place to prevent voter suppression or intimidation.

## Rationale

Human society is sometimes unpredictable in the rights and safeties it affords. Consequently, a unified institution with the aim of remedying these issues should be established outside of the realms of traditional governmental structures. Participation in Ember communities shall be dependent on agreement to specified terms, to best protect the rights of the individuals making up the community.

## Designs

The Ember project should develop designs for things such as clothing, tools, and housing. Any finished design provided by the project should conform to some specific traits.

## Community

An Ember community is a group of individuals who have chosen to create an Ember community, and to live in accordance with shared principles so as to best protect individuals' rights.

## Services collective

This proposal advocates the creation of a project to develop an adequate infrastructure for managing and providing for the basic needs of society. This organization could exist alongside governments and other social structures, as well as potentially taking their place in the event that they collapse or fail to perform as expected.

Humans have come to expect and rely upon social constructs for their safety and mutual benefit, but human society is sometimes unpredictable in the rights and safeties it affords. Consequently, there is a need for a unified institution to be established outside of the realms of traditional governmental structures to provide some semblance of a filling of this void. The general rules of this organization should be established on the basis of rights: rather than making a rule that, for example, prohibits murder, instead a rule should be established that protects individuals’ right to life. In such a way, rules would not be created that infringe freedom more than that which is necessary to retain order in society.

This project would, in its complete form, provide useful elements of survival: shelter, nutrition (including food and water), medical care, education, and information. It would do this as its fulfilment of its objective of managing the various needs of a society, by enabling people to be effective participants in that society.

An Ember community's services collective is a not-for-profit that organizes the procurement and distribution of goods and services for its members, and perhaps others as well. The goal of this organization would be to provide any needful things desired by its members for their lives. For instance, if a person chose to receive food through Ember, they could request that it be provided in exchange for labor. Their labor would help contribute to services requested in the future by them or other Ember members. The organization should have 24/7 available buildings staffed by Ember members from whom aid could be sought, such as the furnishing of meals, shelter, clothing, access to information, or other services, in exchange for labor. That way, if an Ember member is in trouble in an unfamiliar town, for instance, with no money, identification (beyond their own body), or other resources, they could go to the local Ember building to receive any services they desire; they could even build up credit in preparation for such an incident by working for the Ember collective prior to taking a trip, for instance, so they would have already earned any services they might want.

## Information technology environment

### Introduction

This section documents the Ember computing environment: a centralized append-only information store, a computer operating system integrated with that information store, and related specifications. This is a work-in-progress draft, and everything here is subject to change and is not presently suited for implementation.

### Overview

The computing environment will consist of the following components (subject to change):

- Development principles, describing the process to use for creating the computing environment
- Data formats
  - Specifications
  - Reference implementations
- Data storage: append-only set of records, each comprising a unique ID paired with a node document
- Client app
- Server apps:
  - Public-facing API
  - Search engine
  - Storage backend
    
### Development principles

#### Prerequisites for code to be added to the repository

- Code must be readable and documented.
- Code must not cause or have failing tests.
- Code should include thorough automatic test coverage.
- Code must address a deviation from the current specification (bug, missing feature, etc.), and may not contain code unrelated to that.

#### How issues should be prioritised

Ordered from highest priority to lowest priority

- Security vulnerabilities
- Functional regressions
- Incorrect results
- Crashes and similar critical usability issues
- Slow code with a significant impact on usability
- Aesthetic regressions
- Minor usability issues
- Slow code with a moderate impact on usability
- Missing features

### Further principles

One of its fundamental elements would be the creation of a cloud-based information technology system, intended to provide effective and efficient information storage and retrieval (ISR). This would likely use an append-only NoSQL database to store a softly directed concept graph. Most or all knowledge can be effectively represented using two basic structures: nodes and relationships. Relationships would be specific types of nodes. Each node would correspond to a document stored as a sequence of character-like digital identifiers ("Dcs") analogous to both characters in a computer character encoding and to assembly language opcodes, allowing all types of electronic data to be stored as strings. These strings would be able to hold any structured data through the use of specific Dcs, such that when a document was added to the ISR system, it could be indexed deterministically into a separate database which would cache the structured information extracted from that document.

The nodes of a graph are the individual records that it stores. Relationships between those nodes are the edges of the graph, although it is possible that the system I am developing will provide for more complex relationships, for example by allowing relationships to connect several nodes to each other in a variety of ways, although whether that proves necessary or useful remains to be seen. Metadata are an item’s traits: information such as the title of a node, or a description of it. The way I have designed this system, placing all three of these types of entity into one table, allows relationships and metadata to have the attributes of nodes: for example, metadata could be attached to a relationship or another metadatum, or relationships could be specified that connect any combination of the three. There are many existing ISR systems, such as flat files and flat searching, flat-search filterable record sets, sorted records, a variety of tree and tree-like structures, tagged or labeled records, traditional tabular databases, relational databases, sparse tables, sparse matrices and entity-attribute-value models, graphs and digraphs, Boolean-queriable datasets, hierarchies, automated natural-language document acquisition and indexing, metadata-enriched natural-language document acquisition and indexing, and selective-display intelligent query results. The system I am proposing would primarily leverage a graph structure augmented through the use of richly labeled nodes, providing great flexibility in the structures it can manage; in addition, the above structures could be emulated within a graph-driven environment for when they are preferred.

This will also provide effective options for implementing the wide variety of existing ISR systems outlined above as both self-hosted applications executed both in the cloud and in userspace.

There are a variety of content sources that would populate this ISR system: publicly available datasets, creative works, and other resources; resources added and/or created by individuals using the system; “dark” content such as is currently held by social networks, governments, and other organizations that do not publicly release their records; moderated content that has been reviewed and fact-checked and annotated as such by the NGO; dynamically generated content; and computed content, for example, the results from a mathematical calculation or an operation on a dataset.

This ISR system should be leveraged by the NGO for several purposes. First, it can be used to record the individuals who are participants in the NGO. Through the development and application of a biometrics system, perhaps similar to that of India’s Aadhaar program, the use of names could be easily foregone, allowing for people who are mononymous, change their name frequently, have unconventional names, have no name, and so on and so forth to easily use the system, without being subjected to the usual tribulations that accompany any of the above in many modern governments. (It would also eliminate similar gender identity and other issues in receiving government services.) While instability of identification traits in individuals, either through subversion of the system or through chance, is indeed a concern, both for positive and negative identification (Sahoo, Choubisa, and Prasanna: “Multimodal Biometric Person Authentication: A Review”. 2012. In IETE Technical Review, vol. 29 issue 1, January–February 2012), hopefully a sufficiently deep set of metrics could be established to prevent this from being an issue. When an individual becomes part of the NGO, they would be enrolled in the biometric identification system, and marked with a system for tracking of some type. This could take several forms: the most practical and useful, probably, would be a wristwatch-like interface to cloud computing systems that would contain a GPS system and other useful electronics. The purpose of this would be the providing of emergency services: in the event of an emergency, the wearer could interact in it in a way to convey the existence and, if possible, the nature and situation of an emergency. This information would be entered automatically into the ISR system, which would provide a report of the emergency, including the person’s location, their direction and speed of travel, any known health conditions, their current health state (heart rate, blood pressure, and such). The system could automatically delegate the emergency to a nearby station of the NGO, which would act (presumably with the assistance of emergency response services) to resolve the situation.

Education and qualifications could be tracked through this system, as could taxes. For example, when a person completed testing by the organisation in a given subject, that score could be recorded in their profile in such a way that it could be used to determine what jobs they are allowed to work at. Taxation should be managed through time, so that a person would put in a certain number of hours of work selected from the jobs that need doing according to the ISR’s task record tracking system (possibly the number of hours necessary for a given amount of the organization’s services provided would be related to the level of qualification necessary for the work in question) to receive the organisation’s services in exchange. The person could choose which services to allocate their time credits to — for example, requesting food credits, requesting tickets to operas, or donating them to charity. In such a way, the taxes levied would hopefully never have to be put to a use the individual considered unethical. Inter-personal trading could also be facilitated through the ISR system. Such an information technology system to manage and facilitate work by individuals, tracking what needs to be done and what skills people have, and offering jobs to people with the relevant skills, would allow the individuals to bypass the difficult job search and application process, which uses a lot of individuals’ time and energy without producing any real value from that expenditure. Then, when a job is completed, the person who did the work would be granted credits corresponding to the work they did, which could then be exchanged for goods or services. This type of system could be implemented as a single, centralized system. However, it could also be implemented as a decentralized system.

To decentralize such a system, individual computers that make up the information technology system would have to be able to negotiate information sharing between other computers that are accessible via network. If each individual computer has the entire capability to maintain the system, then the network would be able to split and recombine as needed depending on situation.

For instance, two geographically remote implementations of this system would be able to be connected when a network connection between them was available, being able to share work assignments remotely, but if a storm or other situation disrupted the network connection, the two communities’ economies would split into separate economies and continue working independently seamlessly, and then recombine when the network connection returned. In such a system, each individual who has a computer thus has access to and control over that part of the economy. This still leaves one centralized aspect, though, which is the software controlling the economies. If it is community-maintained libre software, that problem is largely eliminated, aside from the usual problems of project governance. If it is preferred, the software could also have facilities for creating ad-hoc centralization, where one instance of the software within each group of instances accessible within a given network would adopt the role of leader. This could be decided automatically, and made fully invisible to users of the system, or through community selection with automatic selection as a fallback, which would probably be preferable so as to ensure that systems with good connectivity and uptime (such as servers in datacenters) were selected as leaders, avoiding unnecessary inefficiency and maximizing reliability.

## Target solution spaces

- Getting a summary of everything going on (start / home screen kind of thing): Customizable. For example, could contain:
  - A brief reminder of who/where/when/etc. I am
  - What I have to do today (schedule, tasks, etc.)
  - Important news (e.g. emergencies, etc.)
  - A search box
  - A way to easily create a journal entry, blog/microblog post, social networking status update, etc.
  - A way to easily add an event to my schedule or a task to my to-do list or a note to myself (Stickies style) or a more thorough journal-y note to myself (à la this note on apps and features) (this could even include jotting down / recording / playing in musical ideas, etc.)
  - A way to easily compose an IM / email / etc. or place a voice/videocall
  - Messages from others (emails, IMs, voice/videomails, etc.)
  - Other guided information resources (see below)
  - A hierarchy of things to browse through (web-portal style)
  - …
- Media consumption and browsing
  - Reading and interacting with documents/apps
  - Browsing a Web site
  - Browsing through EITE nodes and other structured datasets/databases
  - Movies
    - Feature films
    - Video series
    - Online streaming home video (YouTube, etc.)
    - …
  - Music
    - Albums
    - Individual tracks
    - Music videos
    - Artist/album/tag/etc. radio
    - Playlists, including shared playlists
    - Scores
    - …
  - Games
  - Interactive fiction, MUDs, MOOs, MMOs, puzzles, board game simulations, many other types of games …
  - Ebooks
  - Poetry
  - Quotations
  - Essays
  - News
  - Comics
  - Manga
  - Blogs & RSS feeds
  - Consuming realtime media (television, radio, livestreams, …)
  - …
- Document creation and sharing
  - Writing a paper
  - Collaborative document editing / creation
  - Composing a score
  - Writing a book
  - Creating a movie
  - Creating a storyboard for a movie
  - Writing a script
  - Editing a photograph
  - Creating animation
  - Notes to one's self (sticky notes style)
  - More thorough journal-y notes to one's self (including jotting down / recording / playing in musical ideas, etc.)
  - 3D modeling and rendering
  - CAD
  - Diagramming
  - Creating a database
  - Mind mapping
  - Recording and producing a song
  - Diagramming structures in multiple dimensions
  - Developing apps
  - Designing a typeface
  - Working with GIS data
  - Recording a photograph or a video using a webcam, scanner, camera, …
  - Recording audio using a microphone
  - Working with geometric figures
  - Recording music from a USB/MIDI instrument
  - Blogging and microblogging
  - Working with legal documents
  - …
- Working with structured information (this is mostly also document creation / management)
  - Managing a genealogy using Ember records
  - Managing a calendar / schedule
  - Managing a to-do list
  - Managing a contacts directory
  - Working with scientific data
  - Maintaining a retail environment (online or physical)
  - Managing recipes
  - Managing a reading list
  - Journaling
  - Managing a bibliography
  - Fantasy sports
  - Managing and using bookmarks
  - Managing financial information
  - Managing personal notes, documents, projects, photographs, videos, etc.
  - Managing a class
  - Participating in a class
  - …
- Using resources/tools
  - Dictionary
  - Thesaurus
  - Chemical elements chart and data
  - Maps, travel directions, and sky charts
  - Calculator
  - Using the computer as a flashlight
  - Field guides / identification keys
  - Instructions and how-to information
  - Lessons on things
    - Typing lessons
    - Language learning lessons
    - Musical instrument lessons
    - Tutorials on using software
    - …
  - Support using EITE & Ember
  - Nutrition information
  - Support in other aspects of life (e.g. help with trouble fishing, personal motivation, nutrition, depression, etc.)
  - …
- Management
  - Database creation and administration (this is really “Document creation”, but also listed here)
  - Network administration
  - Programming
  - Emulation of other computing systems (this is also media playback, of a sort)
  - Working with files and directories
  - Converting data from one format to another
  - Compressing and/or archiving data and/or directory structures
  - Imaging disks
  - Encrypting, decrypting, creating checksum records for, checking against checksum records, packing with parity data, restoring from parity data…
  - Running apps (this is basically just opening documents, )
  - Distributed computing
  - Digital forensics
  - Computer security
  - Malware prevention, intrusion detection, …
  - Data serialization
  - …
- Exchange
  - Buying and selling goods
  - Trading stocks and cryptocurrencies
  - Purchasing and selling tickets
  - Issuing and redeeming coupons
  - Sending money (money-order style)
  - …
- Searching
  - Answers (e.g. facts, math questions)
  - Finding media (e.g. news, movies, music, etc.)
  - Locating documents
  - …
- Guided time use and content consumption
  - Notifications
  - Emergencies
  - Important news
  - Emails
  - Blog feeds
  - Things I’m supposed to be doing
  - Personal health warnings
  - Computer status warnings (disk/memory failure, overheating, can’t connect to Ember server, running out of battery power, …)
  - …
  - Activity guidance
    - What to do right now
    - What I have on my schedule upcoming
    - …
  - News headlines
  - Blog feeds
  - Podcasts
  - Top charts (popular items)
  - Best charts (classics / enduring popularity items)
  - Suggested recipes
  - Fitness tips
  - Weather information
  - Stock market information
  - Computer’s status (resource usage, etc.)
  - Personal health
  - Sports information
  - Acquaintance suggestions (people I might find interesting to talk to / get to know)
  - Dating suggestions / matchmaking
  - …
- Communication
  - Instant messaging
  - Email
  - Video chat and group video chat
  - Audio and video messages
  - Collaborative document editing (this is “Document creation” but is related to communication)
  - Social networking
  - Blogging and microblogging (this is “Document creation” but is also a form of communication)
  - Newsgroups
  - BBSes
  - File sharing
  - Industrial automation (machine embroidery, etc.) (not an exact fit in the category of communication, since it’s communication with machines: perhaps closer to "management")
  - Sharing/microblogging/adding as status updates URLs, photographs, music, videos, …
  - Social bookmarking
  - …

# Alignment of the project approach to the traits of the currently emerging new media

Henry Jenkins's article "Eight Traits of the New Media Landscape" (http://nmdprojects.net/teaching_resources/jenkins_eight_traits_of_new_media.pdf) provides eight traits that its author observes in the prominent currently emerging new media. This section of the proposal evaluates this project's expression of this set of traits.

The first of these traits is _innovation_. As a communication medium, the information technology environment aspect of this project proposal is arguably merely an extension and refinement of existing communication media, and so may not be considered true innovation, depending on perspective. Even in that case, however, because those existing media are themselves innovative, this project remains a work within new media, even if it is not itself a new medium.

The second trait is _convergence_. This proposal is highly convergent, being a broadly scoped project to innovate across a wide range of aspects of society, industry, and technology. Even regarding only the information technology environment, it is intended to inherit the capabilities of existing computers, which are used for text, sound, image, video, and interactive media, among others.

The third defining trait is _everyday_ presence. As a project to develop a unified system providing all the knowledge resources needed for running a society, if it is successfully completed and used to its envisioned potential, it would serve as the framework for people's everyday lives. When only available in partial form, those portions of it can be used in everyday settings as well (e.g. large chunks of my classwork and other data I rely on and use on an everyday basis (personal projects, music library, email, etc.) are stored and managed using software developed in the course of developing this project).

The fourth trait is _appropriation_. This proposed project ideally will be highly appropriative, because so much work has already been done. It would in all probability be hugely wasteful and impractical to attempt to build everything from scratch, rather than to leverage existing systems (even if only practical through inspiration!) and merely work to fill gaps and integrate the various existing technologies well. That said, reliance on proprietary or externally managed technologies should be eliminated as soon as practical, with all elements of the project and its dependencies being fully libre, because proprietary, non-maintainable, and trade-dependent systems are brittle and are a huge threat to the ability of human society to maintain its standards of living over time. Any external dependencies of the project should be libre, so they can be forked and maintained if necessary.

The fifth trait is _networkedness_. As a design goal for this project, networking should be provided when available, but never mandatory. Systems that depend entirely on networking are, echoing the discussion of the fourth point, brittle. A cloud computing–backed virtual digital assistant, for instance, is thoroughly useless in the event of networking being unavailable. Once constructed, the best tools would be fully usable in a vacuum.

The sixth trait is being _global_. The proposed project is intended to be able to be geographically dispersed, although individual communities would only be able to collaborate on physical projects by being physically colocated, for obvious reasons.

The seventh trait is _generational_. Whether an age gap will affect this project is hard to predict. If it does, it should only be by the choice of individuals, rather than by inaccessibility or prejudice: if people who are a different age than the majority involved in the project, those people should be provided any necessary accommodations to the fullest extent possible (medical care for the elderly, education for the young, and so on). This project should not engage in discrimination based on age, although it could only serve adults until a sufficient child protection framework is in place (e.g. I think Google doesn't allow kids to use it, so this presumably shouldn't either).

The eighth trait is _inequality_. Unfortunately, this likely may affect the project initially, because a community would presumably be unable to sufficiently support individuals with some disabilities to modern standards until it was somewhat technologically sophisticated, meaning that people involved in the project would need to be able to provide for themselves and (for the physical community or communities) provide transportation for access, restricting practical use of the project to those who are wealthy or otherwise supported. Working to reduce undesired inequality as much as possible should be a design goal of the project, while promoting diversity and freedom.

# Needs work



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



## Introduction

This section documents the Ember computing environment: a centralized append-only information store, a computer operating system integrated with that information store, and related specifications. This is a work-in-progress draft, and everything here is subject to change and is not presently suited for implementation.

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

  * Liberal relationship formation and node typing: A node can be assigned any other node as its type; a relationship can be from any type of node to any other type of node even if that is not how the relationship is defined (this situation could display a warning, for example)
  * Hopefully these traits would help keep restrictions from being a pain in the ass

Idea: Modular Dc Sequence Builders

For instance: A set builder: Collects nodes. Could be used for file uploads, etc.

So, if I want to "upload" a file (send it to an Ember app), I am given a set builder dialog. It lets me pick a document or data record to send. Then, the set containing that document (at its present revision) is saved as a node; that node ID is then passed to the app. The node would have a trait indicating that it was static (that the contents it references would not be able to be changed — just revisions of them at the present state). Alternatively, a dynamic set could be created, in which the document would be able to be updated. Sets could have restrictions e.g. about how many documents they could contain, whether they could contain complex structures (such as a directory tree), whether one document could be swapped out with another or not, (or whether they are dynamic or static). Sets could also be driven by search criteria (e.g. the most relevant 10 nodes for a given keyword, or all nodes matching "DOOM" XOR "MOOD", or all four nodes with type Musician and a "is member of" relationship to "The Beatles", or the rapidly changing set of nodes with type Musician and a current or past "is member of" relationship to "Yes"), or built programmatically from new or existing nodes. This would allow file uploads, searches, etc. to all be driven using the SAME basic user interface module. Basically, a file picker on steroids. The set node would have a Dc sequence representation, as do all nodes, so this is really a Dc sequence builder. A set builder could also be used, for example, to choose what nodes to perform an operation on. So, if I'm writing an app to find all the "has foo of" relationships, delete them, and create corresponding "has bar of" relationships, I could create a dynamic set representing all the "has foo of" relationships, the app would know the node ID of that set, and it would then operate on the present state of that set whenever it is run. Of course, like anything else in Ember a set could "time travel" — a new set could display its results as if it had existed at a previous time, or the previous contents of the set could be displayed even if it did exist then. Another application of the set builder could be creating an Ember theme to share with the community that displayed the current top 10 tracks on the Billboard Hot 100 — a set could be created representing the top 10, and a rule could be created if desired to deal with the condition if the Hot 100 was discontinued: the set could be configured to return nothing, to return a fixed list, to return the top 10 from the final edition of the charts, etc..

Likewise, a Color sequence builder should exist, and a Time sequence builder, and a Number sequence builder (could handle variables and complex expressions!), and a Mathematical Equation sequence builder (which would create a Number sequence builder for numbers).

**Physical location ideas**: retail area, meditation area, soup kitchen, office (?), free shelter. Objective: provide a peaceful sanctuary where people can go when they need somewhere to go. Could have modular housing underground, extensible by addition of units? Meditation area & soup kitchen should be 24/7. Have work space for producing full-body suits? ←far-out idea, probably… Have multistory gardens, with mirrors to reflect sunlight in?

2015-01-11 note: (note that the previous note, dated 2014-01-08a09 was actually in 2015). I should add another (maybe 2 more?) sections to the Ember book, one detailing the knowledge necessary to build a society from scratch, from skills necessary for basic survival, to current technology; as well as perhaps history that can be used to understand what the best systems of government are, etc. — and the other describing Ember as a book (since there are all the other aspects of Ember — the media library, the computing environment, etc. that have sections of the book, perhaps the Ember book should have a section).

2015-04-22a23 note: The [[ref:PHMV]] ([[ref:Pixie Hollow Music Video]]) is effectively a dead art form. Because the Pixie Hollow game — the medium through which the videos are created — has been closed, never again <del>will</del>can such artworks be created, most likely. And as copyright holders choose to take them down, there might be fewer and fewer of them in existence, until perhaps they have all disappeared, mere specks of dust in the ashes of history.

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


===== Node examples — use cases: =====

Node — a new document someone created… — type: Digital data Has title (file name); has relationships: ☆→created by (ember account), ☆has revisions (each time saved or autosaved). Node: — a piece of music someone had in their computer upon backing up w/ Ember… — type: Digital data. Has title (file name); Relationships: has revision: only the current revision, since it’s never been resaved; has creator (ember account).; has date created (date created from filesystem — with source annotation) Note that the content & format metadata are stored with the Revision nodes, not with the main nodes. Each revision node has autodetected music metadata (e.g. by Musicbrainz PUID lookup) or other autodetected metadata, such as plagiarism detection information. Music metadata & such can be added manually to main &/or revision nodes. DCE (and Wreathe and Ember) should use Google Wave’s letter-by-letter edit tracking technology… then DCE data backed up wouldn’t need independent revision nodes like that — but instead justindependent revision nodes for actual conceptual revisions of the document. Maybe, to prevent confusion, autosaved revisions could be called by a different name (i.e. a word other than “revision”.)?…. Wreathe and Ember should hide their DCE underpinnings, for the most part, but at the same time, lower-level DCE editing should be easy.
====== Implementation ======

A full DCE editor à la Wreathe isn’t necessarily necessary for Ember’s web-based administration — just use the all-in-one DCE editor / Ember browser / etc. in Wreathe if one wants desktop-power-level DCE editing in Wreathe [possibly meant to write Ember there?]. Plus, DCE editing can be easily implemented in a web environment without worrying about rendering or display so much — just work with the raw Dcs if that kind of “advanced” functionality is desired, if necessary…?


One role of Ember would be to provide goods. For this, it would be ideal for Ember to control as much of the supply chain as possible. That would allow efficient provision of the goods such as to reduce cost and ensure quality. That control of the supply chain would, in an ideal scenario, extend to all stages of the process, from production of the raw materials to component production to assembly to distribution, as well as shipping at all stages of the process. If Ember both controlled production of raw materials in a region and was the dominant institution working to ensure that those resources are used responsibly, it would of course be important to take the interest Ember has in using the resources sustainably into consideration.

There are a large number of works of great cultural importance. They have touched on a number of meaningful subjects, but several subjects have stood out particularly for me: ethics, rights, prejudice and bigotry, and theology. These are elements of society that play important roles, influencing the ways people live and experience their daily lives.

  

When you look at life from a perspective of fundamentals, there are a few things that are necessary: food, water, and shelter. Without these basic elements, humans would not survive very long. If one is hard working and clever, one can provide these things for one’s self, by living off the land. When humans start to live together in communities, things become more complicated; medical care and education become important. The goals of a community are to make life more secure and predictable for the community’s members, and to reduce the hardships associated with “primitive” living (living without the support systems of a complex society). But with those goals comes a problem: how are those goals to be effectively implemented? Through the development of strategies such as specialization of individuals’ abilities and the creation of technological solutions, these challenges can be met.

  

As more people start living together, though, they will almost inevitably come into conflict. What can be done when the individual’s interests conflict with those of the society? What about conflicts between individuals? To deal with these issues, laws and a justice system can be put into place. An economy or labor-sharing strategy can aid in the exchange of services and goods, to avoid conflicts over these matters. A free market economy is helpful to a society, because it redirects the energies of greed and uses them as a force for technological development.

  

Philosophical discourse becomes important in many areas, such as the resolution of the conflicts and challenges of a complex society, and the research into understanding the world around us. This discourse leads to the development of more complex technology drawing on the ideas of the society, then leading to debates about ethics, to scientific investigation about the nature of our world, and to the development of ways to understand and accept who we are, such as religion and science.

  

Ideas, knowledge, and art become economically motivated, and so copyright and patent laws are established to encourage and protect innovation in these areas. The wide availability of information becomes increasingly relevant, and information technology and distribution systems such as books and computers are developed. Support infrastructures are created and strengthened, to protect society against threats both external and internal, such as disease, crime, terrorism, civil unrest, and war.

  

I would like to attempt to improve on the existing systems that have developed for solving these problems. I would like to undertake this project in an incremental, scalable manner, rather than creating a complex system that would need to be implemented all at once to be effective. That way, small improvements could be made without attempting to undertake the insurmountable task of improving larger components of society at once. This incremental development would allow for the strengths of the existing systems to persist, as well.

  

The Ember organization

The central part of Ember, which its other parts are constructed to serve, is those people who have chosen to become members of the Ember organization. This organization will impose no restrictions on those who chose to become its members apart from the protection of their rights (and any restrictions that such protection entails), and anyone can choose to become a part of it or to leave it at any time. Becoming a member involves being listed in the central Ember computing environment database, presumably with sufficient biometric data to prevent identity theft or other fraudulent activity. Names, addresses, or other such personal information, beyond the biometric data previously mentioned, would not be required for the process of becoming a member. Members are not obligated to use any of the services provided by Ember, and could request at any time the termination of any services presently provided to them, including (I suppose?) even the basic protection of their human rights that Ember should by default provide.

Ethical postulates upon which it is based

Specifications

The specifications of the Ember society are the “laws” that make it work. However, they are not laws in the traditional sense, inasmuch as any person is free to leave Ember at any time. However, if a person violates the rules of Ember while they are not a member of it, then if they chose to become a member of it again, they may be penalized for such violations.

The Ember services collective

Another component of Ember is a nonprofit organization that organizes the procurement and distribution of goods and services for its members, and perhaps those who are not its members as well. The goal of this organization would be to provide any needful things desired by its members for their lives. For instance, if a person chose to receive food through Ember, they could request that it be provided in exchange for labor. Their labor would help contribute to services requested in the future by them or other Ember members. The organization should have 24/7 available buildings staffed by Ember members from whom aid could be sought, such as the furnishing of meals, shelter, clothing, access to information, or other services, in exchange for labor. That way, if an Ember member is in trouble in a strange town, for instance, with no money, identification (beyond their own body), or other resources, they could go to the local Ember building to receive any services they desire; they could even build up credit in preparation for such an incident by working for the Ember collective prior to taking a trip, for instance, so they would have already earned any services they might want — travel insurance, of sorts.

Specifications of goods and services

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

  
(Also: Be able to have a user run one document/app in a given domain, and another in another, and a third as themselves, etc.. No need to make them have separate sessions for working in different domains if they don’t want to

  

