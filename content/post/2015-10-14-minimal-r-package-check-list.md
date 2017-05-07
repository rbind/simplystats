---
id: 4355
title: Minimal R Package Check List
date: 2015-10-14T08:21:48+00:00
author: Roger Peng
al2fb_facebook_link_id:
  - 136171103105421_871659712889886
al2fb_facebook_link_time:
  - 2015-10-14T12:22:00+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
dsq_thread_id:
  - 4224060498
categories:
  - Uncategorized
slug: "minimal-r-package-check-list"
---
A little while back I had the pleasure of flying in a small Cessna with a friend and for the first time I got to see what happens in the cockpit with a real pilot. One thing I noticed was that basically you don't lift a finger without going through some sort of check list. This starts before you even roll the airplane out of the hangar. It makes sense because flying is a pretty dangerous hobby and you want to prevent problems from occurring when you're in the air.

That experience got me thinking about what might be the minimal check list for building an R package, a somewhat less dangerous hobby. First off, much has changed (for the better) since I started making R packages and I wanted to have some clean documentation of the process, particularly with using RStudio's tools. So I wiped off my installations of both R and RStudio and started from scratch to see what it would take to get someone to build their first R package.

The list is basically a "pre-flight" list\---the presumption here is that you actually know the important details of building packages, but need to make sure that your environment is setup correctly so that you don't run into errors or problems. I find this is often a problem for me when teaching students to build packages because I focus on the details of actually making the packages (i.e. DESCRIPTION files, Roxygen, etc.) and forget that way back when I actually configured my environment to do this.

**Pre-flight Procedures for R Packages**

  1. Install most recent version of R
  2. Install most recent version of RStudio
  3. Open RStudio
  4. Install **devtools** package
  5. Click on Project --> New Project... --> New Directory --> R package
  6. Enter package name
  7. Delete boilerplate code and "hello.R" file
  8. Goto "man" directory an delete "hello.Rd" file
  9. In File browser, click on package name to go to the top level directory
 10. Click "Build" tab in environment browser
 11. Click "Configure Build Tools..."
 12. Check "Generate documentation with Roxygen"
 13. Check "Build & Reload" when Roxygen Options window opens --> Click OK
 14. Click OK in Project Options window

At this point, you're clear to build your package, which obviously involves writing R code, Roxygen documentation, writing package metadata, and building/checking your package.

If I'm missing a step or have too many steps, I'd like to hear about it. But I think this is the minimum number of steps you need to configure your environment for building R packages in RStudio.

UPDATE: I've made some changes to the check list and will be posting future updates/modifications to my [GitHub repository](https://github.com/rdpeng/daprocedures/blob/master/lists/Rpackage_preflight.md).
