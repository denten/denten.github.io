---
layout: post
title: "Modeling Topic Distance Over Time, Initial Thoughts"
categories:
- think.stack
published: true
---

I am always inspired by Ted Underwood's work and his research notes on his
blog are no exception. "Do topic models wrap time?" he asks in a [recent
entry](https://tedunderwood.com/2018/07/26/do-topic-models-warp-time/). At
stake is an curious and somewhat troubling phenomenon, whereby all
distributions of topics over time seem to show aberrations at the temporal
edges of the sampled data. Please read his post before continuing, because
what I am about to say only makes in the context of his observations. Ted and
[others responding to his
post](https://twitter.com/Ted_Underwood/status/1022443291462258689) suggest a
few statistical methods to deal with the discrepancy, but I think this edge
thing is also indicative of a deeper problem with using topic modeling to
track cultural changes over time.

Once you return from Ted's blog, consider what a topic is. Roughly, a topic is
a *collection of words* representative of a particular textual grouping. The
words like *gun* and *murder* are perhaps more often found in detective
fiction rather than erotica, for example. So remember this: topics are bags of
words. Crucially, unsupervised[^1] topic modelling involves logic for the
discovery of *arbitrary* word groupings. We are asking a machine to organize a
pile of texts into stacks by "the difference that makes the largest
difference." From the many ways of grouping or classifying a collection of
texts, we want those groups that are most starkly different from each other.
Often these machine-generated "topics" track human-derived, social categories
such as authors or genres. And sometimes these "topics" don't make any (human)
sense. They can indicate a difference for which no social, cultural category
can exist---which is kind of fun to explore in any case.

With these pleasantries out of the way, let's take a look at Ted's outliers.
The problem in a nutshell is this: our picture of the topic timeline changes
depending on the window of time we take into consideration. Underwood writes:

> The two models provide significantly different pictures of the period where
> they overlap. 1978, which was a period of relatively slow change in the
> first model, is now a peak of rapid change. On the other hand, 1920, which
> was a point of relatively rapid change, is now a trough of sluggishness.

A quick way to fix this, as Ted suggests, would be to "pad" the window of time
under consideration and then discard the padding, because we know that it is
susceptible to time aberrations. This makes good sense too. The texts in the
beginning of our timeline represent a collection of topics derived from *the
entirety of the corpus*. Yet these initial texts are also likely to contain
topics not in the sample. The texts from the 1890s at the left-most edge
contain past topics prominent in the 1880s, beyond the scope of our sample.
The same is true for the last segment, which contains future topics again not
included in the sample. Thus the decline in similarity at the edges.

But wait, how did we get here? Like the authors of the [music styles paper](
http://rsos.royalsocietypublishing.org/content/2/5/150081) Ted cites, we took
the distribution of topics in the *whole corpus* as a *measuring stick for
change between periods*![^2] The weirdness at edges is indicative of that
decision. First, our measuring stick changes depending on our sample. Second,
our sample is itself not a stable culture. And finally, even our medium has
not be stabilized for long-historical observation.

Imagine you are a scientist measuring the growth of bacterial in a Petri dish.
You fill it with nutritious agar and measure the diameter of the mold colony
every day to track its progress. In this case you are guaranteed three things:
your measurements (in centimeters) are universal, in that they do not in
themselves change from day to day. Biologically, your bacteria is the same on
first and the last day of your observation. Agar---the medium of your
culture---is relatively stable as well. You can be sure that the changes that
you measure are changes in the bacterial culture, and not in the shape or the
composition of the dish.

As textual scholars we have none of these assurances:

1. Does it make sense to measure local "synchronic" differences using
   arbitrarily derived diachronic measures? I am not prepared to answer that
question without more experimentation, but intuitively I would say not.
Whatever our view of the topics in the century is clearly different from the
view of the topics in the decade. For this reason, the study of change is more
immediately convincing when we use simpler, more stable measures.  Although
language changes, it is less volatile than literary fashion. For this reason,
something like "the usage of definite particles over time" is a more robust
marker than complex, derivative metrics such as "topics." (A strategy that has
been successful in authorship attribution.)  Overall "topic proportions" as a
measure of distance between localized texts is suspect at the least. The unit
of measure itself depends on our sample.

2. Something like "agar" and "bacteria" have precise definitions in the world
   of biology. Not so with human culture. Because there is no precision as to
what literature is, it is very difficult for us to address "the pace of change
in fiction." We are extremely susceptible to sample bias. How do we go about
"randomly selecting 750 works in each decade"? Will this "total population"
from which we sample include works of genre literature such as sci-fi, young
adult, and pornography? (Studies in our field usually do not). Should we
include film scripts? Historical novels? Autobiographies? What counts as
"literature" changes with time and point of view.

3. Finally, the petri dish itself is not stable. In other words, changes in
   topics cannot be reduced to the formal features of the text, much less to
words alone. One way to deal with sample bias is to rely on external, socially
constructed markers of distinction. Rather than argue about what "fiction" is,
we can use the "The New York Times Best Sellers" list in the fiction category,
which has been around since the 1930s. Stability at last: We have found a
sample with "natural" boundaries, not dependant on the bias of the researcher.
Fiction published in a particular journal forms similarly "naturalized"
boundaries. Better. The petri dish of *The New Yorker* is more stable than
that of "literature" in general.  Still, we understand that changes in
formatting or editorial leadership will have dramatic effects the kinds of
fiction published in *The New Yorker* or selected for *The New York Times Best
Sellers List*.  What looks like changes in topic distance---a bag of
words---may really illustrate second order institutional effects. Clustering
topics by words alone will always miss such meta-literary changes. Adding
social features for classification, the way Bamman and Underwood have done in
their "Mixed Effects Model of Literary Character" paper for example, again
more closely tracks our theories of literary formation.

None of these are insurmountable obstacles for computational literary studies.
I suspect the temporal weirdness at the edges of historical topic modeling is
indicative of deeper methodological problems and of the excitement of working
at the intersection between qualitative and quantitative analysis.

[^2]: Ted writes: "For instance, suppose we want to understand the pace of
change in fiction between 1885 and 1984. To make sure that there is exactly
the same amount of evidence in each decade, we might randomly select 750 works
in each decade, and reduce each work to 10,000 randomly sampled words. We
topic-model this corpus. Now, suppose we measure change across every year in
the timeline by calculating the average cosine distance between the two
previous years and the next two years. So, for instance, we measure change
across the year 1911 by taking each work published in 1909 or 1910, and
comparing its topic proportions (individually) to every work published in 1912
or 1913. Then we’ll calculate the average of all those distances."

[^1]: A supervised approach involves teaching the machine based on human
categories. In other words: "computer, give me texts most similar to this pile
I call 'detective fiction'."
