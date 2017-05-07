---
id: 345
title: "The Supreme Court's interpretation of statistical correlation may determine the future of personalized medicine"
date: 2011-12-12T23:02:40+00:00
author: admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/14135999782/the-supreme-courts-interpretation-of-statistical
tumblr_simplystatistics_id:
  - 14135999782
dsq_thread_id:
  - 943881053
categories:
  - Uncategorized
tags:
  - Editorial
  - personalized medicine
  - statistical literacy
  - supreme court
slug: "the-supreme-courts-interpretation-of-statistical"
---
**Summary/Background**

The Supreme Court heard <a href="http://www.supremecourt.gov/oral_arguments/argument_transcripts/10-1150.pdf" target="_blank">oral arguments</a> last week in the case Mayo Collaborative Services vs. Prometheus Laboratories (<a href="http://www.supremecourt.gov/Search.aspx?FileName=/docketfiles/10-1150.htm" target="_blank">No 10-1150</a>). At issue is a patent Prometheus Laboratories holds for making decisions about the treatment of disease on the basis of a measurement of a specific, naturally occurring molecule and a corresponding calculation. The specific language at issue is a little technical, but the key claim from the patent under dispute is:

> 1. A method of optimizing therapeutic efficacy for treatment of an immune-mediated gastrointestinal disorder, comprising:
> 
> (a) administering a drug providing 6-thioguanine to a subject having saidimmune-mediated gastrointestinal disorder; and
> 
> (b) determining the level of 6-thioguanine in said subject having said immune-mediated gastrointestinal disorder,  
> 
> wherein the level of 6-thioguanine less than about 230&#160;pmol per 8x10^8 red blood cells indicates a need to increase the amount of said drug subsequently administered to said subject and 
> 
> wherein the level of 6-thioguanine greater than about 400&#160;pmol per 8x10^8 red blood cells indicates a need to decrease the amount of said drug subsequently administered to said subject.

So basically the patent is on a decision made about treatment on the basis of a statistical correlation. When the levels of a specific molecule (6-thioguanine) are too high, then the dose of a drug (thiopurine) should be decreased, if they are too low then the dose of the drug should be increased. Here (and throughout the post) correlation is interpreted more loosely as a relationship between two variables; rather than the strict definition as the linear relationship between two quantitative variables. 



This correlation between levels of 6-thioguanine and patient response was first reported by a group of academics in a <a href="http://www.ncbi.nlm.nih.gov/pmc/articles/PMC1383347/" target="_blank">paper</a> in 1996. Prometheus developed a diagnostic test based on this correlation. Doctors (including those at the Mayo clinic) would draw blood, send it to Prometheus, who would calculate the levels of 6-thioguanine and report them back.

According to Mayo&#8217;s <a href="http://www.patents4life.com/wp-content/uploads/2011/11/10-1150_petitioner.authcheckdam.pdf" target="_blank">brief</a>, some Doctors at the Mayo, who used this test, decided it was possible to improve on the test. So they developed their own diagnostic test, based on a different measurement of 6-thioguanine (6-TGN) and reported different information including:

>   * A blood reading greater than 235 picomoles of 6-TGN is a “target therapeutic range,” and a reading greater than 250 picomoles of 6-TGN is associated with remission in adult patients; and
>   * A blood reading greater than 450 picomoles of 6-TGN indicates possible adverse health effects, but in some instances levels over 700 are associated with remission without significant toxicity, while a “clearly defined toxic level” has not been established; and
>   * A blood reading greater than 5700 picomoles of 6-MMP is possibly toxic to the liver.

They subsequently created their own proprietary test and started to market that test. At which point Prometheus sued the Mayo Clinic for infringement. The most recent decision on the case was made by a federal circuit court who upheld Prometheus&#8217; claim. A useful summary is <a href="http://www.scotusblog.com/2011/12/argument-preview-patients-reaction-patents-scope/" target="_blank">here</a>.

The arguments for the two sides are summarized in the briefs for each side; for <a href="http://www.patents4life.com/wp-content/uploads/2011/11/10-1150_petitioner.authcheckdam.pdf" target="_blank">Mayo</a>:

> Whether 35 U.S.C. § 101 is satisfied by a patent claim that covers observed correlations between blood test results and patient health, so that the patent effectively preempts use of the naturally occurring correlations, simply because well-known methods used to administer prescription drugs and test blood may involve &#8220;transformations&#8221; of body chemistry.

and for <a href="http://www.patentlyo.com/files/2011-10-31_prometheus-merits-brief.pdf" target="_blank">Prometheus</a>:

> Whether the Federal Circuit correctly held that concrete methods for improving the treatment of patients suffering from autoimmune diseases by using individualized metabolite measurements to inform the calibration of the patient’s dosages of synthetic thiopurines are patentable processes under 35 U.S.C. §101.

Basically, Prometheus claims that the patent covers cases where doctors observe a specific data point and make a decision about a specific drug on the basis of that data point and a known correlation with patient outcomes. Mayo, on the other hand, says that since the correlation between the data and the outcome are naturally occurring processes, they can not be patented.

In the oral arguments, the attorney for Mayo makes the claim that the test is only patentable if Prometheus specifies a specific level for 6-thioguanine and a specific treatment associated with that level (see page 21-24 of the <a href="http://www.supremecourt.gov/oral_arguments/argument_transcripts/10-1150.pdf" target="_blank">transcript</a>). He then goes on to suggest that the Mayo would then be free to pick another level and another treatment option for their diagnostic test. Justice Breyer disagrees even with this specific option (see page 38 of the transcript and his fertilizer example). He has made this view known before in his <a href="http://www.supremecourt.gov/opinions/05pdf/04-607.pdf" target="_blank">dissent</a> to the dismissal of the Labcorp writ of certori (a very similar case focusing on whether a correlation can be patented).

**Brief summary:** _Prometheus is trying to patent a correlation between a molecule&#8217;s level and treatment decisions. Mayo is claiming this is a natural process and can&#8217;t be patented._

**Implications for Personalized Medicine (a statistician&#8217;s perspective)**

I believe this case has major potential consequences for the entire field of personalized medicine. The fundamental idea of personalized medicine is that treatment decisions for individual patients will be tailored on the basis of data collected about them and statistical calculations made on the basis of that data (i.e. correlations, or more complicated statistical functions).

According to my interpretation, if the Supreme Court rules in favor of Mayo in a broad sense, then this suggests that decisions about treatment made on the basis of data and correlation are not broadly patentable. In both the Labcorp dissent and the oral arguments for the Prometheus case, Justice Breyer argues that the process described by the patents:

> &#8230;instructs the user to (1) obtain test results and (2) think about them.

He suggests that these are natural correlations and hence can not be patented, just the way a formula like E = mc^2 can not be patented. The distinction seems to be subtle, where E=mc^2 is a formula that exactly describes a property of nature, the observed correlation is an empirical estimate of a parameter calculated on the basis of noisy data.

From a statistical perspective, there is little difference between calculating a correlation and calculating something more complicated, like the Oncotype DX<a href="http://www.oncotypedx.com/" target="_blank">signature</a>. Both return a score that can be used to determine treatment or other health care decisions. In some sense, they are both &#8220;natural phenomena&#8221; - one is just more complicated to calculate than the other. So it is not surprising that Genomic Health, the developers of Oncotype, have filed an <a href="http://www.americanbar.org/content/dam/aba/publications/supreme_court_preview/briefs/10-1150_respondentamcu6personalizedmedicalgrps.authcheckdam.pdf" target="_blank">amicus</a> in favor of Prometheus.

Once a score is calculated, regardless of the level of complication in calculating that score, the personalized decision still comes down to a decision made by a doctor on the basis of a number.So if the court broadly decides in favor of Mayo, from a statistical perspective, this would seemingly pre-empt patenting any personalized medicine decision made on the basis of observing data and making a calculation.

Unlike traditional medical procedures like surgery, or treatment with a drug, these procedures are based on data and statistics. But in the same way, a very specific set of operations and decisions is taken with the goal of improving patient health. If these procedures are broadly ruled as simply &#8220;natural phenomena&#8221;, it suggests that the development of personalized decision making strategies is not, itself, patentable. This decision would also have implications for other companies that use data and statistics to make money, like software giant SAP, which has also filed an<a href="http://www.americanbar.org/content/dam/aba/publications/supreme_court_preview/briefs/10-1150_amcusapamerica.authcheckdam.pdf" target="_blank">amicus brief</a> in support of the federal circuit court opinion (and hence Prometheus).

A large component of medical treatment in the future will likely be made on the basis of data and statistical calculations on those data - that is the goal of personalized medicine. So the Supreme Court&#8217;s decision about the patentability of correlation has seemingly huge implications for any decision made on the basis of data and statistical calculations.Regardless of the outcome, this case lends even further weight to the idea that statistical literacy is critical, including for Supreme Court justices.

Simply Statistics will be following this case closely; look for more in depth analysis in future blog posts.
