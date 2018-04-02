---
title: Input on the Draft NIH Strategic Plan for Data Science
author: Rafael Irizarry
date: '2018-04-02'
slug: input-on-the-draft-NIH-strategic-plan-for-data-science
categories:
  - NIH
---

The NIH is soliciting input for their [Strategic Plan for Data Science](https://grants.nih.gov/grants/rfi/NIH-Strategic-Plan-for-Data-Science.pdf). If you are interested, today, April 2, is the deadline. You can provide input [here](https://grants.nih.gov/grants/rfi/rfi.cfm?ID=73). Below is what I plan to  submit.

## Summary

My main critique is that the report is somewhat vague. More specifics and concrete examples should be included. 

My main concern is that the draft describes initiatives with the goal of improving the _back end_ of data science (data storage, data management, and computing infrastructure) without realizing that to do this one needs to understand the needs of those working on the _front end_ of data science (data exploration, quality assessment, [interactive data analysis](https://simplystatistics.org/2017/04/03/interactive-data-analysis/), and method development). 

My main recommendation is that the NIH Data Science leadership complement their current expertise with individuals  experienced with the _front end_ of data science. The ideal candidate has

- experienced the pain of explaining to a collaborator how to prepare a spreadsheet that is appropriate for data analysis,
- performed interactive data analysis in R, Python or Matlab,
-  developed a software package used by researchers that are not lab members or collaborators,
- has downloaded, imported and visually explored a publicly available dataset, **and** (not or)
- has fitted a model or trained a machine learning algorithm to data.

These individuals will have a very good sense of the specifics of what is required from a common architecture and infrastructure for it to facilitate successful data analysis and method development.

Below I include more detailed comments.

## The perspective of the interactive data analysts 

The draft defines Data Science as  "the interdisciplinary field of inquiry in which quantitative and analytical approaches, processes, and systems are developed and used to extract knowledge and insights from increasingly large and/or complex sets of data".  Here I provide the perspective of a researcher that develops _analytical approaches_ and performs, or supervises, the primary data analysis of a collaborative project interested in "[extracting] knowledge and insights from increasingly large and/or complex sets of data". Note that I do not consider myself to be unique in this regard. Rather, I am part of a large community of statisticians and computational biologists with many commonalities in the way we work, the way we share the products of our work, and the way we depend and interact with the NIH.

## In genomics, NIH already does a great job of supporting data science 

By funding numerous investigator initiated grants, the NIH has fostered a competitive environment that has served as a driving force for innovation and resulted in an impressive arsenal of data analysis and data processing methods. The NIH has also provided funding for the maintenance and improvement of software implementation of these ideas. My work, and the work of many others in my community, depend on these NIH funded tools and infrastructure. Examples include Bioconductor and its many packages, Bedtools, SAMtools, Bowtie, Recount, and IGV, just to name a few. We also depend on NIH  funded and organized resources such as the Short Read Archive (SRA), the Gene Expression Omnibus (GEO), and RefSeq as well as NIH datasets such as those produced by GTEX, TCGA, and ENCODE, again, just to name a few.

## What can improve?

The main pain points in my career have been

1. The sub-optimal sample annotations provided by GEO and SRA.
2. The bureaucratic burden imposed by dbGap.
3. That lack of access to paired GWAS genotype and phenotype data, electronic medical record data, cohort studies, and clinical trials data.
4. The fact that often (not always!) data generators lack computational sophistication and basic statistical knowledge. 

## My favorite parts of the draft

I was happy to see that the draft includes a proposal to separate funding mechanisms for data generation from the development of data analysis tools. This will indeed be a great improvement as it will give more independent groups with expertise in this arena an opportunity to compete. Currently too much of the data analysis funding goes to data generators which tend to use these to fund inexperienced trainees. This is particularly true of the large consortia. 

I was also happy to see that the draft includes a proposal to better support current successful developers to "transform, or harden, innovative algorithms and tools created by academic scientists into enterprise-ready resources that meet industry standards of ease of use and efficiency of operation."

I was most happy about the proposal to increase support for training and education.

## Avoid top-down approaches when deciding on a "common architecture, infrastructure, and set of tools"

In my view, the two main reasons the current ecosystem has been successful at producing data analysis tools are:

1. Many groups are funded and permitted to compete for users of the data analysis workflows they produce.  Which workflows are best is decided by an unplanned process similar to a free market that includes independent assessment, productive debates, and sharing of experiences. Satisfied users translate into increased citations and gains in reputation, which in turn improve ones chances of promotion and funding.

2. Data is made publicly available as they come off the measurement instruments, what we refer to as _raw data_. In my experience, when a bureaucratic process is used to decide data formats, important information is often left out. 

My **nightmare scenario** is that the NIH stops making the raw data available and computationally accessible (say via secure copy or wget) and that instead we are forced to log on to a server on "the cloud" and access only processed data. 


## We already follow FAIR principles


By using existing open source tools many of us are already following the Findable, Accessible, Interoperable, and Reusable (FAIR) principles. Achieving this took us years and we built on the shoulder of open source giants. We build these as a solution to make the way we analyze data for a variety of diverse projects more efficient. It was not developed before the front end data analytical challenges were understood since it would have been impossible to predict what would be appropriate. 

My institute provides enough computing and data storage resource to download raw data when needed. We also store data from our collaborators. Using a Linux file system and best practices for file management we organize the raw data in a way that is shareable and findable among those with access to our system. File system permissions are used to assure data is only accessed with those with permission to access it. We use UNIX shell commands or Python to organize workflows based on open source command-line tools, Bowtie for example, to convert raw data into formats we have determined to be sufficient for front end analysis. These workflows are constantly changing, but the shell or Python scripts permit reproducibility  and back compatibility. Interactive data analysis is done with open source data analysis software such as R and Python. Tools such as Biocondoctor implement object oriented programming to ensure interoperability and reusability across data from different technologies. R packages from the tidyverse also make use of interoperability and reusability concepts for downstream analysis and the generation of figures. We use git for version control and GitHub to share code publicly. 

The NIH should not assume that they can do better by designing a new approach from first principles and making decisions by committee. One really needs to walk in the shoes of a data analysts to do this right. I understand that the above approach will not work for everybody since it requires much institutional support as well as expertise. But we do recommend against top-down approaches to solving this problem. We recommend that that independent groups compete for funding and once funded compete for users. 

