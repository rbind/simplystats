---
id: 4185
title: Interested in analyzing images of brains? Get started with open access data.
date: 2015-08-09T21:29:17+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_842599829129208
al2fb_facebook_link_time:
  - 2015-08-10T01:29:27+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
dsq_thread_id:
  - 4018346421
categories:
  - Uncategorized
slug: "interested-in-analyzing-images-of-brains-get-started-with-open-access-data"
---
<div>
  <i>Editor's note: This is a guest post by <a href="http://www.anieloyan.com/" target="_blank"><span class="lG">Ani</span> Eloyan</a>. She is an Assistant Professor of Biostatistics at Brown University. Dr. Eloyan’s work focuses on</i> <i>semi-parametric likelihood based methods for matrix decompositions, statistical analyses of brain images, and the integration of various types of complex data structures for analyzing health care data</i><i>. She received her PhD in statistics from North Carolina State University and subsequently completed a postdoctoral fellowship in the <a href="http://www.biostat.jhsph.edu/">Department of Biostatistics at Johns Hopkins University</a>. Dr. Eloyan and her team won the <a>ADHD200 Competition</a></i> <i>discussed in <a href="http://journal.frontiersin.org/article/10.3389/fnsys.2012.00061/abstract" target="_blank">this</a> article. She tweets <a href="https://twitter.com/eloyan_ani">@eloyan_ani</a>.</i>
</div>

<div>
  <i> </i>
</div>

<div>
  <div>
    Neuroscience is one of the exciting new fields for biostatisticians interested in real world applications where they can contribute novel statistical approaches. Most research in brain imaging has historically included studies run for small numbers of patients. While justified by the costs of data collection, the claims based on analyzing data for such small numbers of subjects often do not hold for our populations of interest. As discussed in <a href="http://www.huffingtonpost.com/american-statistical-association/wanted-neuroquants_b_3749363.html" target="_blank">this</a> article, there is a huge demand for biostatisticians in the field of quantitative neuroscience; so called neuroquants or neurostatisticians. However, while more statisticians are interested in the field, we are far from competing with other substantive domains. For instance, a quick search of abstract keywords in the online program of the upcoming <a href="https://www.amstat.org/meetings/jsm/2015/" target="_blank">JSM2015</a> conference of “brain imaging” and “neuroscience” results in 15 records, while a search of the words “genomics” and “genetics” generates 76 <a>records</a>.
  </div>
  
  <div>
  </div>
  
  <div>
    Assuming you are trained in statistics and an aspiring neuroquant, how would you go about working with brain imaging data? As a graduate student in the <a href="http://www.stat.ncsu.edu/" target="_blank">Department of Statistics at NCSU</a> several years ago, I was very interested in working on statistical methods that would be directly applicable to solve problems in neuroscience. But I had this same question: “Where do I find the data?” I soon learned that to <i>really</i>approach substantial relevant problems I also needed to learn about the subject matter underlying these complex data structures.
  </div>
  
  <div>
  </div>
  
  <div>
    In recent years, several leading groups have uploaded their lab data with the common goal of fostering the collection of high dimensional brain imaging data to build powerful models that can give generalizable results. <a href="http://www.nitrc.org/" target="_blank">Neuroimaging Informatics Tools and Resources Clearinghouse (NITRC)</a> founded in 2006 is a platform for public data sharing that facilitates streamlining data processing pipelines and compiling high dimensional imaging datasets for crowdsourcing the analyses. It includes data for people with neurological diseases and neurotypical children and adults. If you are interested in Alzheimer’s disease, you can check out <a href="http://adni.loni.usc.edu/" target="_blank">ADNI</a>. <a href="http://fcon_1000.projects.nitrc.org/indi/abide/" target="_blank">ABIDE</a> provides data for people with Autism Spectrum Disorder and neurotypical peers. <a href="http://fcon_1000.projects.nitrc.org/indi/adhd200/" target="_blank">ADHD200</a> was released in 2011 as a part of a competition to motivate building predictive methods for disease diagnoses using functional magnetic resonance imaging (MRI) in addition to demographic information to predict whether a child has attention deficit hyperactivity disorder (ADHD). While the competition ended in 2011, the dataset has been widely utilized afterwards in studies of ADHD.  According to Google Scholar, the <a href="http://www.nature.com/mp/journal/v19/n6/abs/mp201378a.html" target="_blank">paper</a> introducing the ABIDE set has been cited 129 times since 2013 while the <a href="http://journal.frontiersin.org/article/10.3389/fnsys.2012.00062/full" target="_blank">paper</a> discussing the ADHD200 has been cited 51 times since <span style="font-family: Arial;">2012. These are only a few examples from the list of open access datasets that could of utilized by statisticians. </span>
  </div>
  
  <div>
  </div>
  
  <div>
    Anyone can download these datasets (you may need to register and complete some paperwork in some cases), however, there are several data processing and cleaning steps to perform before the final statistical analyses. These preprocessing steps can be daunting for a statistician new to the field, especially as the tools used for preprocessing may not be available in R. <a href="https://hopstat.wordpress.com/2014/08/27/statisticians-in-neuroimaging-need-to-learn-preprocessing/" target="_blank">This</a> discussion makes the case as to why statisticians need to be involved in every step of preprocessing the data, while <u><a href="https://hopstat.wordpress.com/2014/06/17/fslr-an-r-package-interfacing-with-fsl-for-neuroimaging-analysis/" target="_blank">this R package</a></u> contains new tools linking R to a commonly used platform <a href="http://fsl.fmrib.ox.ac.uk/fsl/fslwiki/" target="_blank">FSL</a>. However, as a newcomer, it can be easier to start with data that are already processed. <a href="http://projecteuclid.org/euclid.ss/1242049389" target="_blank">This</a> excellent overview by Dr. Martin Lindquist provides an introduction to the different types of analyses for brain imaging data from a statisticians point of view, while our<a href="http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0089470" target="_blank">paper</a> provides tools in R and example datasets for implementing some of these methods. At least one course on Coursera can help you get started with <a href="https://www.coursera.org/course/fmri" target="_blank">functional MRI</a> data. Talking to and reading the papers of biostatisticians working in the field of quantitative neuroscience and scientists in the field of neuroscience is the key.
  </div>
</div>
