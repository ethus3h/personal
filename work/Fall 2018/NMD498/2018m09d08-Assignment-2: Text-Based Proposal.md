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
