---
id: 4165
title: rafalib package now on CRAN
date: 2015-08-10T10:00:26+00:00
author: Rafael Irizarry
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
al2fb_facebook_link_id:
  - 136171103105421_842807702441754
al2fb_facebook_link_time:
  - 2015-08-10T14:00:33+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 4019798602
categories:
  - Uncategorized
slug: "rafalib-package-now-on-cran"
---
For the last several years I have been [collecting functions](https://github.com/ririzarr/rafalib) I routinely use during exploratory data analysis in a private R package. [Mike Love](http://mike-love.net/) and I used some of these in our HarvardX course and now, due to popular demand, I have created man pages and added the [rafalib](https://cran.r-project.org/web/packages/rafalib/) package to CRAN. Mike has made several improvements and added some functions of his own. Here is quick descriptions of the rafalib functions I most use:

mypar - Before making a plot in R I almost always type <tt>mypar()</tt>. This basically gets around the suboptimal defaults of <tt>par</tt>. For example, it makes the margins (<tt>mar</tt>, <tt>mpg</tt>) smaller and defines RColorBrewer colors as defaults.  It is optimized for the RStudio window. Another advantage is that you can type <tt>mypar(3,2)</tt> instead of <tt>par(mfrow=c(3,2))</tt>. <tt>bigpar()</tt> is optimized for R presentations or PowerPoint slides.

as.fumeric - This function turns characters into factors and then into numerics. This is useful, for example, if you want to plot values <tt>x,y</tt> with colors defined by their corresponding categories saved in a character vector <tt>labs</tt><tt>plot(x,y,col=as.fumeric(labs))</tt>.

shist (smooth histogram, pronounced _shitz_) - I wrote this function because I have a hard time interpreting the y-axis of <tt>density</tt>. The height of the curve drawn by <tt>shist</tt> can be interpreted as the height of a histogram if you used the units shown on the plot. Also, it automatically draws a smooth histogram for each entry in a matrix on the same plot.

splot (subset plot) - The datasets I work with are typically large enough that
  
<tt>plot(x,y)</tt> involves millions of points, which is [a problem](http://stackoverflow.com/questions/7714677/r-scatterplot-with-too-many-points). Several solution are available to avoid over plotting, such as alpha-blending, hexbinning and 2d kernel smoothing. For reasons I won't explain here, I generally prefer subsampling over these solutions. <tt>splot</tt> automatically subsamples. You can also specify an index that defines the subset.

sboxplot (smart boxplot) - This function draws points, boxplots or outlier-less boxplots depending on sample size. Coming soon is the kaboxplot (Karl Broman box-plots) for when you have too many boxplots.

install_bioc - For Bioconductor users, this function simply does the <tt>source("http://www.bioconductor.org/biocLite.R")</tt> for you and then uses <tt>BiocLite</tt> to install.

[<img class="alignnone size-large wp-image-4190" src="http://simplystatistics.org/wp-content/uploads/2015/08/unnamed1-1024x773.png" alt="unnamed" width="990" height="747" srcset="http://simplystatistics.org/wp-content/uploads/2015/08/unnamed1-300x226.png 300w, http://simplystatistics.org/wp-content/uploads/2015/08/unnamed1-1024x773.png 1024w, http://simplystatistics.org/wp-content/uploads/2015/08/unnamed1-260x196.png 260w, http://simplystatistics.org/wp-content/uploads/2015/08/unnamed1.png 1035w" sizes="(max-width: 990px) 100vw, 990px" />](http://simplystatistics.org/wp-content/uploads/2015/08/unnamed1.png)
