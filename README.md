# EME-Dissertation
The paper first explores asset market responses to terror and then underlying event heterogeneity, I use a variety of techniques from standard event studies to Bayesian hierarchical models: https://github.com/edgOnGithub/EME-Dissertation/blob/master/Economic%20Costs%20of%20Terror.pdf.

*"I show that large terror attacks do not have a significant negative
effect on UK asset markets. Furthermore, when I expand my analysis
to include all terror attacks from 1970 to present day I find
no evidence of a negative asset market response. Finally, I find no
evidence of event heterogeneity. That is, target type and location;
success of an attack; number of wounded or killed; weapons used;
attack type and media coverage cannot be used as predictors for
asset market responses. Results are consistent across a range of
UK indices and specifications."*

------
## Organisation:

Pretty self-explanatory:
- Data in folders marked data.
- Scripts in the Script folder.
- Material used in presentations in the Presentation folder.
- Code used for stan models in Stan folder and their output in Stanfit folders for any script using Stan in Main Analysis folder.
- All other stan output is in AWS Output folder as they were run on an Amazon Machine Image server (this is pretty much just the heterogeneous analysis).

## Requirements:

- Packrat should have a list of packages that need to be installed.
- Any of the Bayesian models that are run require separate (I think) installation from stan, see here: https://github.com/stan-dev/rstan/wiki/RStan-Getting-Started. There's a few Bayesian models in the Main Analysis folder (only under the Logit headings I think) and any script starting 'Heterogeneous X' where X = {CAR4, R, etc.(but not 'Exploratory Heterogeneous Analysis')} is full of these models. I highly recommend not running the latter scripts as stan can be a pain to install and to run all of them takes ~4 hours.

## Replication Steps:


1. Data Cleaning and Preparation Script in Main Analysis folder.
2. Any other script in Main Analysis folder.
3. TextAnalysis/TerrorCleaning - preparation for heterogeneous effects.
4. Heterogenous CAR4 Analysis (The others aren't actually used apart from robustness checks so maybe be a little out of date wrt relative paths.)
5. ExploratoryHeterogeneous Analysis/Any scripts that produce graphics or tables - Using analysis output to create any tables or graphs used.

None of this is strictly necessary in terms of order to use as all the output data should be saved anyway.
