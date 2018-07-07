---
title: What Should be Done When Data Have Creators?
date: '2018-07-06'
slug: data-creators
author: Roger Peng
---

I was listening to the podcast [The West Wing Weekly](http://thewestwingweekly.com) recently and Episode 4.17 (“Red Haven’s on Fire”) featured former staff writer [Lauren Schmidt Hissrich](https://www.imdb.com/name/nm1274355/). In introducing her, the podcast co-hosts mentioned that Hissrich was a writer for the Netflix series *Daredevil*, based on the Marvel Comics character. She is also the showrunner for a new Netflix series called *The Witcher*, which is based on a book by Andrzej Sapkowski.  

All this got me thinking about how screenwriters are often limited in what they can write by the fact that the material they are writing was originated by someone else. The characters in their stories have “creators” and there is an extent to which writers have to remain true to their creators’ intent for the characters. From a business perspective, it can be seen as a safer bet if a writer creates some story based on existing intellectual property, since that IP may already be popular. But, writers also have to be careful that they don’t go too far in a different direction or those same people who loved the original will dislike the new material.

## Lessons from Screenwriters

Screenwriters often write their own original material, particularly when they are at the top of their profession and have the artistic freedom to do more of what they want. They have earned this freedom and the studios/producers trust them to produce original material that is good and financially successful. In these cases, screenwriters can create their characters and their stories and take them where they want to go, subject to the many constraints inherent in producing TV or movies.

In many other situations, screenwriters are writing other people’s material. A writer working on a TV show likely did not create the TV show and did not create any of its main characters or storylines. They have to enter the show midstream, adapt to its characters, and write material that would be appropriate for the show and the individual characters. While a writer still needs to be creative in this role, there are quite a few more constraints in that they have to conform to what has come before. In particular, the show’s creators may have very strong opinions about how characters and storylines should work and a staff writer will have to go along with it in order to work out.

## The Data Creator

In data science, data have “creators” and a big part of being a good data analyst is respecting the role of the data creator and collaborating with them effectively. We might also call the data creator the “subject matter expert”, depending on the context. The data creator typically originated the reason for collecting the data, asked the originating question that led to data collection, and maybe oversaw the process of collecting the data itself. They know the ins and outs of how the data were collected, the strengths and weaknesses of the process, and all of the unwritten context about the data. This unwritten context, unfortunately, is by definition not documented, and over time is typically lost or forgotten. 

The data creator can answer questions like

* Why are there missing data? How might data come to be missing?
* Why is this observation so low/high? Did anything funny happen there?
* What types of error might be introduced in collecting or measuring the data?
* Why did you collect this variable or feature instead of that variable or feature?

A data analyst must understand how to “fit themselves into the data” so that they know when appropriate questions are being asked of the data and when questions are being asked that cannot be answered by the data. The data were likely there before the analyst was, and so the analysts does not have absolute freedom to do whatever they want with the data. The data have a context and an original reason for being, and a data analyst should understand and respect that context.

I recently worked on a study where people were being evaluated in a clinic every 3 months. On one of the visits, many of the outcome values were abnormally high. My first reaction was to go through the individual numbers and see if there was anything amiss. Not seeing anything, we checked the paper forms on which the data were originally collected to see if there was a transcription error--nothing unusual there either. Finally, we talked to the study staff who actually saw the patients in the clinic to see if they had seen anything unusual. Still nothing. Ultimately, the data are what they are, but it was reassuring to be able to goto the people on the ground to get their impressions. This kind of information is difficult to code and quantify, so it’s important to be able to talk with the “data creators” to get the full story. 

## Found Data, Surrogate Creators, and off-label usage

Some data do not have identifiable creators or their creators are long gone and cannot be contacted. Such “found data” are everywhere and the original reason that they were collected is largely unknown. It’s tempting to run off with such data if they appear to serve a given purpose, but some effort should be made to identify the data’s original purpose for being. In these cases the analyst must serve as a “surrogate creator” and put themselves in the position of understanding all of the aspects of the data that a creator would normally know.


Just because data were collected for a specific purpose does not mean they cannot be used to ask a different question. Such “off-label” uses of data can be very fruitful and creative use of data off-label can lead to breakthroughs in unrelated areas. However, one must still have a good understanding of the data’s creation because of all the context that comes attached to the data. That said, it is often the case that aspects of the data that were highly relevant to the original question are less relevant for the off label usage. 

### Example: Air pollution monitoring

Ambient air pollution data in the United States is collected primarily for regulatory purposes. The question that the data are attempting to answer is essentially “Are air pollution levels in this county higher than the national ambient air quality standard?” In order to answer this question, it’s important to have a rigorous standard for collecting the data so that the measurements are highly accurate and precise. It is incredibly important to all parties that the numbers are reliable. The methodology for measuring air pollution at federal monitors is known as the “federal reference method” and is documented as a Federal Information Processing Standard (FIPS). People who work in monitoring and who develop new monitors are highly aware of the need to reduce error and to maximize reliability.

However, when using monitoring data for epidemiological studies of air pollution and population health, the error in the data introduced at the monitoring level, while real, is often negligible in comparison to the the *exposure measurement error* that is introduced by assigning monitor values to members of the population. Epidemiological studies use the regulatory monitor data off-label because the data are numerous and freely available, and furthermore the errors in the monitor data are less relevant in the epidemiological setting than they are in the regulatory setting.

That said, I’ve been in numerous debates with engineers who are familiar with the way the monitors are built about how the errors in the monitoring might affect my epidemiological studies. They often insist (politely) that my results are not valid because the monitors are too variable. Now, I realize it doesn’t sound good when my argument is essentially, “I know my study is valid because the errors that *I* introduced by using your data and merging it with health data are *way* bigger than the measurement errors that your monitor produces!” But this is indeed the case. And the engineers were rightfully worried about their data being used in a different context.

While the engineers might sweat over the deviations produced by a given monitor, even in the worst case scenario, it’s unlikely that the scale of variation that they are worried about would have any impact on the health risk models that we were fitting to the data. I’m better off spending more time looking at the sensitivity of the models to the exposure measurement error rather than worry about individual monitor variability. Nevertheless, it’s through conversations with these engineers that I can get a sense of all the [sources of variation in the data](). Being aware of these sources of variability and communicating any uncertainties that may or may not result is a big part of building [trust in my data analyses](https://simplystatistics.org/2018/06/04/trustworthy-data-analysis/).
