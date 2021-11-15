# 707_Final_Project
### Research Topic
**Investigating the Relationship between Smoking Dependence and the Amount of Nicotine**

### Research Background

Nicotine is the primary addictive agent that sustains cigarette
smoking, which is responsible for most tobacco-related diseases and premature death
[2]. In terms of helping current tobacco users to quit smoking, researchers suggested
that reducing the nicotine content of cigarettes would achieve the purpose. The U.S.
Food and Drug Administration (FDA) collaborated with several other health
organizations have ordered 3.5 million SPECTRUM-brand variable nicotine research
cigarettes from the 22nd Century Group. The SPECTRUM product line consists of
cigarettes that have a fixed “tar” yield, yet their nicotine yields have different levels.
For example, it can go over a 50-fold range, from very low to high. For research
purposes, SPECTRUM cigarettes usually have 24 styles, 11 regular and 13 menthol
versions, with 8 different levels of nicotine content [5]. Thus, FDA believes that using
SPECTRUM cigarettes which have various levels of nicotine but similar
characteristics can help them validate that it is beneficial for the public to have
cigarettes containing minimally or non-addictive levels of nicotine.

### Problem Description

The problem we are addressing is the relationship between the amount of nicotine in
cigarettes and the smoking abuse of patients. In the meantime, we are also interested
in figuring out what other factors , such as demographics, medical history etc are
related to smoking dependence. Based on the problems we are trying to address, the
primary hypothesis of the study is that less amount of nicotine in cigarettes can help
reduce patients’ dependence on smoking. Nowadays, smoking has become a serious
problem in the United States, according to CDC [6], in 2018, more than 13.7% of the
adults are current smokers. Smoking can have a great impact on people, according to
statistics[6], smokers may die 10 years earlier than nonsmokers. More and more
people have realized the seriousness of smoking and more than half of the smokers
have tried to stop smoking for at least one time[6]. On the contrary, only 7.5% of
people actually successfully quit smoking. Under this circumstance, it is important to
study more about the smoking behavior of people and find out which factors are more
related with the behavior. IF we can find such significant factors, it may help to
provide further guidance on carrying out proposals for quitting smoking. Analyzing
whether reducing nicotine amounts can help reduce smoking dependence is not new
in the drug abuse field. In 2007, Benowitz conducted a 10-week study on whether
reducing the nicotine will increase smokers’ exposure to cigarettes and their
conclusion is that decreasing the nicotine amount may be a feasible solution to help
smokers quit smoking. [7]

### Data Description

For this project, we will be using the dataset from the study “ Investigating the Impact
of Nicotine Using Spectrum Cigarettes”. The data and variable codebook are available
on the National Institute on Drug Abuse Data Share website. Therefore, no obstacles
were met during the data acquisition process.

The study data is stored in six CSV-formatted files. The data files we are using for this project are 
primary baseline table and primary post-randomization table, which includes the treatment allocations and post randomization results. 
the primary source for baseline data has 839 rows and 740 columns; The baseline data includes categorical variables such as gender,
numeric variables such as age, and ordinal variables for respiratory health assessment. The primary source for post-randomization data has 5873 rows and 561 columns; 
These data mostly include ordinal variables for indicating their smoking
urges as well as nicotine dependence.

### Exploratory Data Analysis
Demographic characteristics mainly include age, gender, race, marital status, living
situation, education level and student status. From the plots, the distribution of smoke
desire score is right-skewed and greatly affected by the groups of some categorical
variables.

### Tentative Predictive Model Building Approach
Our planned approach is first to cluster the data based on the selected variables and compare the clustering results
with the label. After that, we can conduct supervised learning such as logistic regression
for analyzing the effect of these features on nicotine dependence. There are previous
studies applying logistic regression on finding the association between various factors
and nicotine dependence [3-4]. Meanwhile, nicotine dependence is measured by how
many cigarettes the participants smoked in the last follow-up week. The number of
cigarettes is categorized into different ranges, so we will treat the outcome as a
categorical variable. Then the logistic regression is feasible for estimating how each
feature affects the probability of smoking a certain amount of cigarettes. We can also treat the smoking dependence as 
continuous variable and perform regression models. 

### Job Division
**Data Preprocessing and Exploratory Data Analysis**: Ruqian Cheng, Weiliang Tian

**Unsupervised Learning**: Wenxin Zhong

**Classification**: Yili Lin

**Regression**: Wenyue Zhuo
