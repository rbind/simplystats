---
id: 1328
title: The bright future of applied statistics
date: 2013-05-15T10:00:33+00:00
author: Rafael Irizarry
al2fb_facebook_link_id:
  - 136171103105421_493965533992641
al2fb_facebook_link_time:
  - 2013-05-15T14:00:44+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2013/05/expression.jpg
dsq_thread_id:
  - 1290299516
categories:
  - Uncategorized
tags:
  - applied statistics
  - future of statistics
slug: "the-bright-future-of-applied-statistics"
---

In 2013, the Committee of Presidents of Statistical Societies (COPSS) celebrates its 50th Anniversary. As part of its celebration, COPSS will publish a book, with contributions from past recipients of its awards, titled “Past, Present and Future of Statistical Science". Below is my contribution titled _The bright future of applied statistics_.


When I was asked to contribute to this issue, titled Past, Present, and Future of Statistical Science, I contemplated my career while deciding what to write about. One aspect that stood out was how much I benefited from the right circumstances. I came to one clear conclusion: it is a great time to be an applied statistician. I decided to describe the aspects of my career that I have thoroughly enjoyed in the 
_past_ and _present_ and explain why I this has led me to believe that the _is bright for applied statisticians_. 


I became an applied statistician while working with David Brillinger on my PhD thesis. When searching for an advisor I visited several professors and asked them about their interests. David asked me what I liked and all I came up with was "_I don't know. Music?_", to which he responded "_That's what we will work on_". Apart from the necessary theorems to get a PhD from the Statistics Department at Berkeley, my thesis summarized my collaborative work with researchers at the Center for New Music and Audio Technology. The work<br /> involved separating and parameterizing the harmonic and non-harmonic components of musical sound signals [<a href="#Xirizarry2001local">5</a>]. The sounds had been digitized into data. The work was indeed fun, but I also had my first glimpse into the incredible potential of statistics in a world becoming more and more data-driven. 

  Despite having expertise only in music, and a thesis that required a CD player to hear the data, [fitted models and residuals](http://www.biostat.jhsph.edu/~ririzarr/Demo/index.html), I was hired by the Department of Biostatistics at Johns Hopkins School of Public Health. Later I realized what was probably obvious to the School’s leadership: that regardless of the subject matter of my thesis, my time series expertise could be applied to several public health applications [<a href="#Xirizarry2001assessing">8</a>, <a href="#Xdipietro2001cross">2</a>, <a href="#Xcrone2001electrocorticographic">1</a>]. The public health and biomedical challenges surrounding me were simply too hard to resist and my new<br /> department knew this. It was inevitable that I would quickly turn into an applied Biostatistician. <!--l. 60-->

  Since the day that I arrived at Hopkins 15 years ago, Scott Zeger, the department chair, fostered and encouraged faculty to leverage their statistical expertise to make a difference and to have an immediate impact in science. At that time, we were in the midst of a measurement revolution that was transforming several scientific fields into data-driven ones. By being located in a School of Public Health and next to a medical school, we were surrounded by collaborators working in such fields. These included environmental science, neuroscience, cancer biology, genetics, and molecular biology. Much of my work was motivated by collaborations with biologists that, for the first time, were collecting large amounts of data. Biology was changing from a data poor discipline to a data intensive<br /> ones.<br /> <!--l. 75-->

  A specific example came from the measurement of gene expression. Gene expression is the process where DNA, the blueprint for life, is copied into RNA, the templates for the synthesis of proteins, the building blocks for life. Before microarrays were invented in the 1990s, the analysis of gene expression data amounted to spotting black dots on a piece of paper (see Figure 1A below). With microarrays, this suddenly changed to sifting through tens of thousands of numbers (see Figure 1B). Biologists went from using their eyes to categorize results to having thousands (and now millions) of measurements per sample to analyze. Furthermore, unlike genomic DNA, which is static, gene expression is a dynamic quantity: different tissues express different genes at different levels and at different times. The complexity was exacerbated by unpolished technologies that made measurements much noisier than anticipated. This complexity and level of variability made statistical thinking an important aspect of the analysis. The Biologists that used to say, "if I need statistics, the experiment went wrong" were now seeking out our help. The results of these collaborations have led to, among other things, the development of breast cancer recurrence gene expression assays making it possible to identify patients at risk of distant recurrence following surgery [<a href="#Xvan2002gene">9</a>].

<div class="figure" style="text-align: left;">
  <p class="noindent">
    <a href="http://simplystatistics.org/2013/05/15/the-bright-future-of-applied-statistics/expression/" rel="attachment wp-att-1329"><img class="alignnone size-full wp-image-1329" alt="expression" src="http://simplystatistics.org/wp-content/uploads/2013/05/expression.jpg"/></a>
  </p>
  <div class="caption">
    Figure 1: Illustration of gene expression data before and after micorarrays.
  </div>
</div>

  When biologists at Hopkins first came to our department for help with their  microarray data, Scott put them in touch with me because I had experience with (what was then) large datasets (digitized music signals are represented by 44,100 points per second). The more I learned about the scientific problems and the more data I explored, the more motivated I became. The potential for statisticians having an impact in this nascent field was clear and my department was encouraging me to take the plunge. This institutional encouragement and support was crucial as successfully working in this field made it harder to publish in the mainstream statistical journals; an accomplishment that had traditionally been heavily weighted in the promotion process. The message was clear: having an immediate impact on specific scientific fields would be rewarded as much as mathematically rigorous methods with general applicability.

  As with my thesis applications, it was clear that to solve some of the challenges posed by microarray data I would have to learn all about the technology. For this I organized a sabbatical with Terry Speed's group in Melbourne where they helped me accomplish this goal. During this visit I reaffirmed my preference for attacking applied problems with simple statistical methods, as opposed to overcomplicated ones or developing new techniques. Learning that deciphering clever ways of putting the existing statistical toolbox to work was good enough for an accomplished statistician like Terry gave me the necessary confidence to continue working this way. More than a decade later this continues to be my approach to applied statistics. This approach has been instrumental for some of my current collaborative work. In particular, it led to important new biological discoveries made together with Andy Feinberg’s lab [<a href="#Xirizarry2009human">7</a>].

  During my sabbatical we developed preliminary solutions that improved precision and aided in the removal of systematic biases for microarray data [<a href="#Xirizarry2003exploration">6</a>]. I was aware that hundreds, if not thousands, of other scientists were facing the same problematic data and were searching for solutions. Therefore I was also thinking hard about ways in which I could share whatever solutions I developed with others. During this time I received an email from Robert Gentleman asking if I was interested in joining a new software project for the delivery of statistical methods for genomics data. This new collaboration eventually became the [Bioconductor project](http://www.bioconductor.org), which to this day continues to grow its user and developer base [<a href="#Xgentleman2004bioconductor">4</a>]. Bioconductor was the perfect vehicle for having the impact that my department had encouraged me to seek. With Ben Bolstad and others we wrote an R package that has been downloaded tens of thousands of times [<a href="#Xgautier2004affy">3</a>]. Without the availability of software, the statistical method would not have received nearly as much attention. This lesson served me well throughout my career, as developing software packages has greatly helped disseminate my statistical ideas. The fact that my department and school rewarded software publications provided important support. 

  The impact statisticians have had in genomics is just one example of our fields accomplishment in the 21st century. In academia, the number of statistician becoming leaders in fields like environmental sciences, human genetics, genomics, and social sciences continues to grow. Outside of academia, Sabermetrics has become a standard approach in several sports (not just baseball) and inspired the Hollywood movie Money Ball. A PhD Statistician led the team that won the [Netflix million dollar prize](http://www.netflixprize.com). [Nate Silver]( http://mashable.com/2012/11/07/nate-silver-wins) proved the pundits wrong by once again using statistical models to predict election results almost perfectly. R has become a widely used programming language. It is no surprise that Statistics majors at Harvard have more than [quadrupled since 2000](http://nesterko.com/visuals/statconcpred2012-with-dm/) and that statistics MOOCs are among the [most popular](http://edudemic.com/2012/12/the-11-most-popular-open-online-courses/).

  The unprecedented advance in digital technology during the second half of the 20th century has produced a measurement revolution that is transforming science. Scientific fields that have traditionally relied upon simple data analysis techniques have been turned on their heads by these technologies. Furthermore, advances such as these have brought about a shift from hypothesis to discovery-driven research. However, interpreting information extracted from these massive and complex datasets requires sophisticated statistical skills as one can easily be fooled by patterns that arise by chance. This has greatly elevated the importance of our discipline in biomedical research. <!--l. 186-->

  I think that the data revolution is just getting started. Datasets are currently being, or have already been, collected that contain, hidden in their complexity, important truths waiting to be discovered. These discoveries will increase the scientific understanding of our world. Statisticians should be excited and ready to play an important role in the new scientific renaissance driven by the measurement revolution.

<h2 class="likechapterHead" style="text-align: left;">
  <a id="x1-20001"></a>Bibliography
</h2>

<div class="thebibliography">
  <p class="bibitem" style="text-align: left;">
    [1]   <a id="Xcrone2001electrocorticographic"></a>NE Crone, L Hao, J Hart, D Boatman, RP Lesser, R Irizarry, and<br /> B Gordon. Electrocorticographic gamma activity during word production<br /> in spoken and sign language. Neurology, 57(11):2045–2053, 2001.
  </p>
  
  <p class="bibitem" style="text-align: left;">
    [2]   <a id="Xdipietro2001cross"></a>Janet A DiPietro, Rafael A Irizarry, Melissa Hawkins, Kathleen A<br /> Costigan, and Eva K Pressman. Cross-correlation of fetal cardiac and<br /> somatic activity as an indicator of antenatal neural development. American<br /> journal of obstetrics and gynecology, 185(6):1421–1428, 2001.
  </p>
  
  <p class="bibitem" style="text-align: left;">
    [3]   <a id="Xgautier2004affy"></a>Laurent Gautier, Leslie Cope, Benjamin M Bolstad, and Rafael A<br /> Irizarry. affyanalysis of affymetrix genechip data at the probe level.<br /> Bioinformatics, 20(3):307–315, 2004.
  </p>
  
  <p class="bibitem" style="text-align: left;">
    [4]   <a id="Xgentleman2004bioconductor"></a>Robert C Gentleman, Vincent J Carey, Douglas M Bates, Ben Bolstad,<br /> Marcel Dettling, Sandrine Dudoit, Byron Ellis, Laurent Gautier, Yongchao<br /> Ge, Jeff Gentry, et al. Bioconductor: open software development for<br /> computational biology and bioinformatics. Genome biology, 5(10):R80, 2004.
  </p>
  
  <p class="bibitem" style="text-align: left;">
    [5]   <a id="Xirizarry2001local"></a>Rafael A Irizarry. Local harmonic estimation in musical sound signals.<br /> Journal of the American Statistical Association, 96(454):357–367, 2001.
  </p>
  
  <p class="bibitem" style="text-align: left;">
    [6]   <a id="Xirizarry2003exploration"></a>Rafael A Irizarry, Bridget Hobbs, Francois Collin, Yasmin D<br /> Beazer-Barclay, Kristen J Antonellis, Uwe Scherf, and Terence P Speed.<br /> Exploration, normalization, and summaries of high density oligonucleotide<br /> array probe level data. Biostatistics, 4(2):249–264, 2003.
  </p>
  
  <p class="bibitem" style="text-align: left;">
    [7]   <a id="Xirizarry2009human"></a>Rafael A Irizarry, Christine Ladd-Acosta, Bo Wen, Zhijin Wu, Carolina<br /> Montano, Patrick Onyango, Hengmi Cui, Kevin Gabo, Michael Rongione,<br /> Maree Webster, et al. The human colon cancer methylome shows similar<br /> hypo-and hypermethylation at conserved tissue-specific cpg island shores.<br /> Nature genetics, 41(2):178–186, 2009.
  </p>
  
  <p class="bibitem" style="text-align: left;">
    [8]   <a id="Xirizarry2001assessing"></a>Rafael A Irizarry, Clarke Tankersley, Robert Frank, and Susan<br /> Flanders. Assessing homeostasis through circadian patterns. Biometrics,<br /> 57(4):1228–1237, 2001.
  </p>
  
  <p class="bibitem" style="text-align: left;">
    [9]   <a id="Xvan2002gene"></a>Laura J van’t Veer, Hongyue Dai, Marc J Van De Vijver, Yudong D<br /> He, Augustinus AM Hart, Mao Mao, Hans L Peterse, Karin van der Kooy,<br /> Matthew J Marton, Anke T Witteveen, et al. Gene expression profiling<br /> predicts clinical outcome of breast cancer. nature, 415(6871):530–536, 2002.
  </p>
</div>
