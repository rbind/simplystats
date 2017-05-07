---
id: 4031
title: "Is it species or is it batch? They are confounded, so we can't know"
date: 2015-05-20T11:11:18+00:00
author: Rafael Irizarry
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
al2fb_facebook_link_id:
  - 136171103105421_808574365865088
al2fb_facebook_link_time:
  - 2015-05-20T15:11:35+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 3779889310
categories:
  - Uncategorized
slug: "is-it-species-or-is-it-batch-they-are-confounded-so-we-cant-know"
---
In a 2005 OMICS <a href="http://online.liebertpub.com/doi/abs/10.1089/153623104773547462" target="_blank">paper</a>, an analysis of human and mouse gene expression microarray measurements from several tissues led the authors to conclude that "any tissue is more similar to any other human tissue examined than to its corresponding mouse tissue". Note that this was a rather surprising result given how similar tissues are between species. For example, both mice and humans see with their eyes, breathe with their lungs, pump blood with their hearts, etc... Two follow-up papers (<a href="http://mbe.oxfordjournals.org/content/23/3/530.abstract?ijkey=2c3d98666afbc99949fdcf514f10e3fedadee259&keytype2=tf_ipsecsha" target="_blank">here</a> and <a href="http://mbe.oxfordjournals.org/content/24/6/1283.abstract?ijkey=366fdf09da56a5dd0cfdc5f74082d9c098ae7801&keytype2=tf_ipsecsha" target="_blank">here</a>) demonstrated that platform-specific technical variability was the cause of this apparent dissimilarity. The arrays used for the two species were different and thus measurement platform and species were completely **confounded**. In a 2010 paper, we confirmed that once this technical variability  was accounted for, the number of genes expressed in common  between the same tissue across the two species was much higher than the those expressed in common  between two species across the different tissues (see Figure 2 <a href="http://nar.oxfordjournals.org/content/39/suppl_1/D1011.full" target="_blank">here</a>).

So [what is confounding](http://genomicsclass.github.io/book/pages/confounding.html) and [why is it a problem](http://www.nature.com/ng/journal/v39/n7/full/ng0707-807.html)? This topic has been discussed broadly. We wrote a [review](http://www.nature.com/nrg/journal/v11/n10/full/nrg2825.html) some time ago. But based on recent discussions I've participated in, it seems that there is still some confusion. Here I explain, aided by some math, how confounding leads to problems in the context of estimating species effects in genomics. We will use

  * _X<sub>i</sub>_ to represent the gene expression measurements for human tissue _i,_
  * _a<sub>X</sub>_ to represent the level of expression that is specific to humans and
  * _b<sub>X</sub>_ to represent the batch effect introduced by the use of the human microarray platform.
  * Therefore _X<sub>i</sub>_ =_a<sub>X </sub>_+ _b<sub>X </sub>_+ _e<sub>i</sub>_, with _e<sub>i</sub>_ the tissue _i_ effect and other uninteresting sources of variability.

Similarly, we will use:

  * _Y<sub>i</sub>_ to represent the measurements for mouse tissue _i_
  * _a<sub>Y</sub>_  to represent the mouse specific level and
  * _b<sub>Y</sub>_ the batch effect introduced by the use of the mouse microarray platform.
  * Therefore _Y_<sub>i</sub> = _a<sub>Y</sub>_+ _b<sub>Y</sub>_ + _f<sub>i</sub>_, with _f<sub>i</sub>_ tissue _i_ effect and other uninteresting sources of variability.

If we are interested in estimating a species effect that is general across tissues, then we are interested in the following quantity:

<p style="text-align: center;">
   <em>a<sub>Y</sub> - a<sub>X</sub></em>
</p>

Naively, we would think that we can estimate this quantity using the observed differences between the species that cancel out the tissue effect. We observe a difference for each tissue: _Y<sub>1 </sub>_ - _X<sub>1 </sub>_, _Y<sub>2</sub>_ - _X<sub>2 </sub>_, etc... The problem is that _a<sub>X</sub>_ and _b<sub>X</sub>_ are always together as are _a<sub>Y</sub>_ and _b<sub>Y</sub>_. We say that the batch effect _b<sub>X</sub>_ is **confounded** with the species effect _a<sub>X</sub>_. Therefore, on average, the observed differences include both the species and the batch effects. To estimate the difference above we would write a model like this:

<p style="text-align: center;">
  <em>Y<sub>i</sub></em> - <em>X<sub>i</sub></em> = (<em>a<sub>Y</sub> - a<sub>X</sub></em>) + (<em>b<sub>Y</sub> - b<sub>X</sub></em>) + other sources of variability
</p>

<p style="text-align: left;">
  and then estimate the unknown quantities of interest: (<em>a<sub>Y</sub> - a<sub>X</sub></em>) and (<em>b<sub>Y</sub> - b<sub>X</sub></em>) from the observed data <em>Y<sub>1</sub></em> - <em>X<sub>1</sub></em>, <em>Y<sub>2</sub></em> - <em>X<sub>2</sub></em>, etc... The problem is that, we can estimate the aggregate effect (<em>a<sub>Y</sub> - a<sub>X</sub></em>) + (<em>b<sub>Y</sub> - b<sub>X</sub></em>), but, mathematically, we can't tease apart the two differences.  To see this note that if we are using least squares, the estimates (<em>a<sub>Y</sub> - a<sub>X</sub></em>) = 7,  (<em>b<sub>Y</sub> - b<sub>X</sub></em>)=3  will fit the data exactly as well as (<em>a<sub>Y</sub> - a<sub>X</sub></em>)=3,(<em>b<sub>Y</sub> - b<sub>X</sub></em>)=7 since
</p>

<p style="text-align: center;">
  <em>{(Y-X) -(7+3))^2 = {(Y-X)- (3+7)}^2.</em>
</p>

<p style="text-align: left;">
  In fact, under these circumstances, there are an infinite number of solutions to the standard statistical estimation approaches. A simple analogy is to try to find a unique solution to the equations m+n = 0. If batch and species are not confounded then we are able to tease apart differences just as if we were given another equation: m+n=0; m-n=2. You can learn more about this in <a href="https://www.edx.org/course/introduction-linear-models-matrix-harvardx-ph525-2x">this linear models course</a>.
</p>

<p style="text-align: left;">
  Note that the above derivation apply to each gene affected by the batch effect. In practice we commonly see hundreds of genes affected. As a consequence, when we compute distances between two samples from different species we may see large differences even where there is no species effect. This is because the <em>b<sub>Y</sub> - b<sub>X  </sub></em>differences for each gene are squared and added up.
</p>

<p style="text-align: left;">
  In summary, if you completely confound your variable of interest, in this case species, with a batch effect, you will not be able to estimate the effect of either. In fact, in a <a href="http://www.nature.com/nrg/journal/v11/n10/full/nrg2825.html">2010 Nature Genetics Review</a>  about batch effects we warned about "cases in which batch effects are confounded with an outcome of interest and result in misleading biological or clinical conclusions". We also warned that none of the existing solutions for batch effects (Combat, SVA, RUV, etc...) can save you from a situation with perfect confounding. Because we can't always predict what will introduce unwanted variability, we recommend randomization as an experimental design approach.
</p>

<p style="text-align: left;">
  Almost a decade later after the OMICS paper was published, the same surprising conclusion was reached in <a href="http://www.pnas.org/content/111/48/17224.abstract" target="_blank">this PNAS paper</a>:  "tissues appear more similar to one another within the same species than to the comparable organs of other species". This time RNAseq was used for both species and therefore the different platform issue was not considered<sup>*</sup>. Therefore, the authors implicitly assumed that (<em>b<sub>Y</sub> - b<sub>X</sub></em>)=0. However, in a recent F1000 Research <a href="http://f1000research.com/articles/4-121/v1" target="_blank">publication</a> Gilad and Mizrahi-Man describe describe an exercise in <a href="http://projecteuclid.org/euclid.aoas/1267453942">forensic bioinformatics</a> that led them to discover that mice and human samples were run in different lanes or different instruments. The confounding was near perfect (see <a href="https://f1000researchdata.s3.amazonaws.com/manuscripts/7019/9f5f4330-d81d-46b8-9a3f-d8cb7aaf577e_figure1.gif">Figure 1</a>). As pointed out by these authors, with this experimental design we can't  simply accept that (<em>b<sub>Y</sub> - b<sub>X</sub></em>)=0, which implies that we can't estimate a species effect. Gilad and Mizrahi-Man then apply a <a href="http://biostatistics.oxfordjournals.org/content/8/1/118.abstract">linear model</a> (ComBat) to account for the batch/species effect and find that <a href="https://f1000researchdata.s3.amazonaws.com/manuscripts/7019/9f5f4330-d81d-46b8-9a3f-d8cb7aaf577e_figure3.gif">samples cluster almost perfectly by tissue</a>. However, Gilad and Mizrahi-Man correctly note that,  due to the confounding, if there is in fact a species effect, this approach will remove it along with the batch effect. Unfortunately, due to the experimental design it will be hard or impossible to determine if it's batch or if it's species. More data  and more analyses are needed.
</p>

Confounded designs ruin experiments. Current batch effect removal methods will not save you. If you are designing a large genomics experiments, learn about randomization.

<p style="text-align: left;">
   * The fact that RNAseq was used does not necessarily mean there is no platform effect. The species have different genomes, with different sequences and thus can lead to different biases during experimental protocols.
</p>

<p style="text-align: left;">
  <strong>Update: </strong>Shin Lin has repeated a small version of the experiment described in the <a href="http://www.pnas.org/content/111/48/17224.abstract" target="_blank">PNAS paper</a>. The new experimental design does not confound lane/instrument with species. The new data confirms their original results pointing to the fact that lane/instrument do not explain the clustering by species. You can see his response in the comments <a href="http://f1000research.com/articles/4-121/v1" target="_blank">here</a>.
</p>
