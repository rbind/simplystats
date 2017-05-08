---
title: Companies are Countries, Academia is Europe
author: Roger Peng
comments: true
slug: "corporations-academia"
date: 2016-04-05
---

I've been thinking a lot recently about the practice of data analysis
in different settings and how the environment in which you work can
affect the view you have on how things should be done. I've been
working in academia for over 12 years now. I don't have any industry
data science experience, but long ago I worked as a software engineer
at [two](http://www.northropgrumman.com/Pages/default.aspx)
[companies](http://kencast.com). Obviously, my experience is biased on
the academic side.

I've see an interesting divergence between what I see being written
from data scientists in industry and my personal experience doing data
science in academia. From the industry side, I see a lot of stuff
about tooling/software and processes. This makes sense to me. Often, a
company needs/wants to move quickly and doing so requires making
decisions on a reasonable time scale. If decisions are made with data,
then the process of collecting, organizing, analyzing, and
communicating data needs to be well thought-out, systematized,
rigorous, and streamlined. If everytime someone at the company had a
question the data science team developed some novel custom
coded-from-scratch solution, decisions would be made at a glacial
pace, which is probably not good for business. In order to handle this
type of situation you need solid tools and flexible workflows. You
also need agreement within the company about how things are down and
the processes that are followed.

Now, I don't mean to imply that life at a company is easy, that there
isn't politics or bureacracy to deal with. But I see companies as much
like individual countries, with a clear (hierarchical) leadership
structure and decision-making process (okay, maybe ideal
companies). Much like in a country, it might take some time to come to
a decision about a policy or problem (e.g. health insurance), with
much negotiation and horse-trading, but once consensus is arrived at,
often the policy can be implemented across the country at a reasonable
timescale. In a company, if a certain workflow or data process can be
shown to be beneficial and perhaps improve profitability down the
road, then a decision could be made to implement it. Ultimately,
everyone within a company is in the same boat and is interested in
seeing the company succeed.

When I worked at a company as a software developer, I'd sometimes run
into a problem that was confusing or difficult to code. So I'd walk
down to the systems engineer's office (they guy who wrote the
specification) and talk to him about it. We'd hash things out for a
while and then figure out a way to go forward. Often the technical
writers who wrote the documentation would come and ask me what exactly
a certain module did and I'd explain it to them. Communication was
usually quick and efficient because it usually occurred
person-to-person and because we were all on the same team.

Academia is more like Europe, a somewhat loose federation of states
that only communicates with each other because they have to. Each
principal investigator is a country and s/he has to engage in constant
(sometimes contentious) negotiations with other investigators
("countries"). As a data scientist, this can be tricky because unless
I collect/generate my own data (which sometimes, [I
do](http://www.ncbi.nlm.nih.gov/pubmed/18477784)), I have to negotiate
with another investigator to obtain the data. Even if I were
collaborating with that investigator from the very beginning of a
study, I typically have very little direct control over the data
collection process because those people don't work for me. The result
is often, the data come to me in some format over which I had little
input, and I just have to deal with it. Sometimes this is a nice CSV
file, but often it is not.

In good situations, I can talk with the investigator collecting the
data and we can hash out a plan to put the data into a [certain
format](https://www.jstatsoft.org/article/view/v059i10). But even if
we can agree on that, often the expertise will not be available on
their end to get the data into that format, so I'll end up having to
do it myself anyway. In not-so-good situations, I can make all the
arguments I want for an organized data collection and analysis
workflow, but if the investigator doesn't want to do it, can't afford
it, or doesn't see any incentive, then it's not going to happen. Ever.

However, even in the good situations, every investigator works in
their own personal way. I mean, that's why people go into academia,
because you can "be your own boss" and work on problems that interest
you. Most people develop a process for running their group/lab that
most suits their personality. If you're a data scientist, you need to
figure out a way to mesh with each and every investigator you
collaborate with. In addition, you need to adapt yourself to whatever
data process each investigator has developed for their group. So if
you're working with a genomics person, you might need to learn about
BAM files. For a neuroimaging collaborator, you'll need to know about
SPM. If one person doesn't like tidy data, then that's too bad. You
need to deal with it (or don't work with them). As a result, it's
difficult to develop a useful "system" for data science because any
system that works for one collaborator is unlikely to work for another
collaborator. In effect, each collaboration often results in a custom
coded-from-scratch solution.

This contrast between companies and academia got me thinking about the
[Theory of the
Firm](https://en.wikipedia.org/wiki/Theory_of_the_firm). This is an
economic theory that tries to explain why firms/companies develop at
all, as opposed to individuals or small groups negotiating over an
open market. My understanding is that it all comes down to how well
you can write and enforce a contract between two parties. For example,
if I need to manufacture iPhones, I can go to a contract manufacturer,
given them the designs and the precise specifications/tolerances and
they can just produce millions of them. However, if I need to *design*
the iPhone, it's a bit harder for me to go to another company and just
say "Design an awesome new phone!" That kind of contract is difficult
to write down, much less enforce. That other company will be operating
off of different incentives from me and will likely not produce what I
want. It's probably better if I do the design work
in-house. Ultimately, once the transaction costs of having two
different companies work together become too high, it makes more sense
for a company to do the work in-house.

I think collaborating on data analysis is a high transaction cost
activity. Companies have an advantage in this realm to the extent that
they can hire lots of data scientists to work in-house. Academics that
are well-funded and have large labs can often hire a data analyst to
work for them. This is good because it makes a well-trained person
available at low transaction cost, but this setup is the
exception. PIs with smaller labs barely have enough funding to do
their experiments and so either have to analyze the data themselves
(for which they may not be appropriately trained) or collaborate with
someone willing to do it. Large academic centers often have research
cores that provide data analysis services, but this doesn't change the
fact that data analysis that occurs "outside the company" dramatically
increases the transaction costs of doing the research. Because data
analysis is a highly iterative process, each time you have to go back
in forth with an outside entity, the costs go up.

I think it's possible to see a time when data analysis can effectively
be made external. I mean, Apple used to manufacture all its products,
but has shifted to contract manufacturing to great success. But I
think we will have to develop a much better understanding of the data
analysis process before we see the transaction costs start to go down.


