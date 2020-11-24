---
title: The Four Jobs of the Data Scientist
author: Roger Peng
date: '2020-11-24'
slug: the-four-jobs-of-the-data-scientist
---

In 2019 I wrote a post about [The Tentpoles of Data Science](https://simplystatistics.org/2019/01/18/the-tentpoles-of-data-science/) that tried to distill the key skills of the data scientist. In the post I wrote:

> When I ask myself the question “What is data science?” I tend to think of the following five components. Data science is (1) the application of design thinking to data problems; (2) the creation and management of workflows for transforming and processing data; (3) the negotiation of human relationships to identify context, allocate resources, and characterize audiences for data analysis products; (4) the application of statistical methods to quantify evidence; and (5) the transformation of data analytic information into coherent narratives and stories.

> My contention is that if you are a good data scientist, then you are good at all five of the tentpoles of data science. Conversely, if you are good at all five tentpoles, then you’ll likely be a good data scientist.

I still feel the same way about these skills but my feeling now is that actually that post made the job of the data scientist seem easier than it is. This is because it wrapped all of these skills into a single job when in reality data science requires being good at **four** jobs. In order to explain what I mean by this, we have to step back and ask a much more fundamental question.

## What is the Core of Data Science?

This is a question that everyone is asking and I think struggling to answer. With any field there’s always a distinction between the questions of

* What is the core of the field?
* What do people in that field do on a regular basis?

In case it’s not clear, these are not the same question. For example, in Statistics, based on the curriculum from most PhD program, the core of the field involves statistical methods, statistical theory, probability, and maybe some computing. Data analysis is generally not formally taught (i.e. in the classroom), but rather picked up as part of a thesis or research project. Many classes labeled “Data Science” or “Data Analysis” simply teach more methods like machine learning, clustering, or dimension reduction. Formal software engineering techniques are also not generally taught, but in practice are often used. 

One could argue that data analysis and software engineering is something that statisticians *do* but it’s not the core of the field. Whether that is correct or incorrect is not my point. I’m only saying that a distinction has to be made somewhere. Statisticians will always *do* more than what would be considered the core of the field.

With data science, I think we are collectively taking inventory of what data scientists tend to do. The problem is that at the moment it seems to be all over the map. Traditional statistics does tend to be central to the activity, but so does computer science, software engineering, cognitive science, ethics, communication, etc. This is hardly a definition of the core of a field but rather an enumeration of activities.

The question then is can we define something that *all* data scientists do? If we had to teach something to all data science students without knowing where they might end up afterwards, what would it be? My opinion is that at some point, all data scientists have to engage in the *basic data analytic iteration*.

## Data Analytic Iteration

The basic data analytic iteration comes in four parts. Once a question has been established and a plan for obtaining or collecting data is available, we can do the following:

1. Construct a **set of expected outcomes**
2. Design/Build/Apply a **data analytic system** to the data
3. Diagnose any **anomalies** in the analytic system output
4. Make a **decision** about what to do next

While this iteration might be familiar or obvious to many, its familiarity masks the complexity involved. In particular, each step of the iteration requires that the data scientist play a different role involving very different skills. It’s like a one-person play where the data scientist has to change costumes when going from one step to the next. This is what I refer to as the *the four jobs of the data scientist*. 

## The Four Jobs

Each of the steps in the basic data analytic iteration requires the data scientist to be four different people: (1) Scientist; (2) Statistician; (3) Systems Engineer; and (4) Politician. Let’s take a look at each job in greater detail.

### Scientist

The scientist develops and asks the question and is responsible for knowing the state of the science and what the key gaps are. The scientist also designs any experiments for collecting new data and executes the data collection. The scientist must work with the statistician to design a system for analyzing the data and ultimately construct a *set of expected outcomes* from any analysis of the data being collected. 

The scientist plays a key role in developing the system that results in our set of expected outcomes. Components of this system might include a literature review, meta-analysis, preliminary data, or anecdotal data from colleagues. I use the term “Scientist” broadly here. In other settings this could be a policy-maker or product manager. 

### Statistician

The statistician, in concert with the scientist, designs the analytic system that will analyze the data generated by any data collection efforts. They specify how the system will operate, what outputs it will generate, and obtain any resources needed to implement the system. The statistician draws on statistical theory and personal experience to choose the different components of the analytic system that will be applied.

The statistician’s role here is to apply the data analytic system to the data and to produce the data analytic output. This output could be a regression coefficient, a mean, a plot, or a prediction. But there must be something produced that we can compare to our set of expected outcomes. If the output deviates from our set of expected outcomes, then the next task is to identify the reasons for that deviation.


### Systems Engineer

Once the analytic system is applied to the data there are only two possible outcomes: 

1. The outputs meet our expectations, or 
2. The output does not meet our expectations (an anomaly). 

In the case of an anomaly, the systems engineer’s responsibility is to diagnose the potential root causes of the anomaly, based on knowledge of the data collection process, the analytic system, and the state of scientific knowledge.

Recently, Emma Vitz [wrote on Twitter](https://twitter.com/EmmaVitz/status/1330697959156027392?s=20):

> How do you teach debugging to people who are more junior? I feel like it’s such an important skill and yet we seem to have no structured framework for teaching it

For software and for data analysis alike, the challenge is that bugs or unexpected behavior can originate from anywhere. Any complex system is composed of multiple components, some of which may be your responsibility and many of which are someone else’s. But bugs and anomalies do not respect those boundaries! There may be an issue that occurs in one component that only becomes known when you see the data analytic output.

So if you are responsible for diagnosing a problem, it is your responsibility to investigate the behavior of each component of the system. If it is something you are not that familiar with, then you need to *become* familiar with it, either by learning on your own or (more likely) talking to the person who is in fact responsible.

A common source of unexpected behavior in data analytic output is the data collection process, but the statistician who analyzes the data may not be responsible for that aspect of the project. Nevertheless, the systems engineer who identifies an anomaly has to go back through and talk to the statistician and the scientist to figure out exactly how each component works. 

Ultimately, the systems engineer is tasked with taking a broad view of all the activities that affect the output from a data analysis in order to identify any deviations from what we would expect. Once those root causes have been explained, we can then move on to decide how we should act on this new information.

### Politician

The politician’s job is to make decisions while balancing the needs of the various constituents to achieve a reasonable outcome. Most statisticians and scientist that I know would recoil at the idea of being considered a politician or that politics in any form would play a role in doing any sort of science. However, my thinking here is a bit more basic: In any data analysis iteration, we are constantly making decisions about what to do, keeping in mind a variety of conflicting factors. In order to resolve these conflicts and come to a reasonable agreement, one has to engage a key skill, which is negotiation.

At various stages of the data analytic iteration the politician must negotiate about (1) the definition of success in the analysis; (2) resources for executing the analysis; and (3) the decision for what to do after we have seen the output from the analytic system and have diagnosed the root causes of any anomalies. Decisions about what to do next fundamentally involve factors outside the data and the science. 

Politicians have to identify who the stakeholders of the problem are and what is it that they ultimately *want* (as opposed to what their *position* is). For example, an investigator might say “We need a p-value less than 0.05”. That’s their position. But what they *want* is more likely “a publication in a high profile journal”. Another example  might be an investigator who needs to meet a tight publication deadline while another investigator who wants to run a time-consuming (but more robust) analysis. Clearly, the positions conflict but arguably both investigators share the same goal, which is a rigorous high-impact publication.

Identifying positions versus underlying needs is a key task in negotiating a reasonable outcome for everyone involved. Rarely, in my experience, does this process have to do with the data (although data may be used to make certain arguments). The dominating elements of this process tend to be the nature of relationships between each constituent and the constraints on resources (such as time). 

## Applying the Iteration

If you’re reading this and find yourself saying “I’m not an X” where X is either scientist, statistician, systems engineer, or politician, then chances are that is where you are weak at data science. I think a good data scientist has to have some skill in each of these domains in order to be able to complete the basic data analytic iteration. 

In any given analysis, the iteration may be applied anywhere from once to dozens if not hundreds of times. If you’ve ever made two plots of the same dataset, you’ve likely done two iterations. While the exact details and frequency of the iterations may vary widely across applications, the core nature and the skills involved do not change much.
