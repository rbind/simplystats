---
id: 2616
title: The three tables for genomics collaborations
date: 2014-02-03T10:12:19+00:00
author: Rafael Irizarry
al2fb_facebook_link_id:
  - 136171103105421_603429626379564
al2fb_facebook_link_time:
  - 2014-02-03T15:12:28+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 2214875623
categories:
  - Uncategorized
slug: "the-three-tables-for-genomics-collaborations"
---
Collaborations between biologists and statisticians are very common in genomics. For the data analysis to be fruitful, the statistician needs to understand what samples are being analyzed. For the analysis report to make sense to the biologist, it needs to be properly annotated with information such as gene names, genomic location, etc... In a recent post, Jeff laid out [his guide](http://simplystatistics.org/2013/11/14/the-leek-group-guide-to-sharing-data-with-a-statistician-to-speed-collaboration/)<span style="text-decoration: underline;"> </span>for such collaborations, here I describe an approach that has helped me in mine.

In many of my past collaborations, sharing the experiment's key information,  in a way that facilitates data analysis, turned out to be more time consuming than the analysis itself. One reason is that the data producers annotated samples in ways that was imposible to decipher without direct knowledge of the experiment (e.g using lab specific codes in the filenames, or colors in excel files).  In the early days of microarrays, a group of researchers noticed this problem and created a [markup language](http://www.mged.org/Workgroups/MAGE/mage-ml.html) to describe and communicate information about  experiments electronically.

The [Bioconductor project](http://www.bioconductor.org/) took a less ambitious  approach and created [classes](http://www.bioconductor.org/packages/2.14/bioc/vignettes/Biobase/inst/doc/BiobaseDevelopment.pdf) specifically designed to store the minimal information needed to perform an analysis. These classes can be thought of as three tables, stored as **flat text files**, all of which are relatively easy to create for biologists.

The first table contains the **experimental data** with rows representing features (e.g. genes) and the columns representing samples.

The second table contains the **sample information**. This table contains a row for each column in the experimental data table. This table contains at least two columns. The first contains an identifier that can be used to match the rows of this table to the columns of the first table. The second contains the main outcome of interest, e.g. case or control, cancer or normal. Other commonly included columns are the filename of the original raw data associated with each row, the date the experiment was processed, and other information about the samples.

The third table contains the **feature information. **This table contains a row for each row in the experimental table. The table contains at least two columns. The first contains an identifier that can be used to match the rows of this table to the row of the first table. The second will contain an annotation that makes sense to biologists, e.g. a gene name. For technologies that are widely used (e.g. Affymetrix gene expression arrays) these table are readily available.

With these three relatively simple files in place less time is spent "figuring out" the data and the statisticians can focus their energy on data analysis while the biologists can focus their energy on interpreting the results. This approach seems to have been the inspiration for the [MAGE-TAB](http://www.mged.org/mage-tab/) format.

Note that with newer technologies, statisticians prefer to get access to **the raw data**. In this case, instead of an experimental data table (table 1), they will want the original raw data files. The sample information then must contain a column with the filenames so that sample annotation can be properly matched.

**NB**: These three tables are not a complete description of an experiment and are not intended as an alternative to standards such as MAGE and MIAME. But in many cases, they provide the very minimum information needed to carry out a rudimentary analysis. Note that Bioconductor provides [tools](http://www.bioconductor.org/packages/2.3/bioc/html/RMAGEML.html) to import information from MAGE-ML and other related formats.
