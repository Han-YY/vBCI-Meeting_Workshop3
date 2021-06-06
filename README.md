# BCI Meeting 2021 Workshop 3: Optimising BCI performance by integrating information on the users internal state

## Presenters
Sebastian Halder, University of Essex 
<br>Yiyuan Han, University of Essex. 
<br>Angela Riccio, Fondazione Santa Lucia. 
<br>Philipp Ziebell, University of Würzburg. 

## Abstract
Brain-computer interface (BCI) performance is known to be sensitive to the internal state of the user, e.g. consciousness, somatosensory state, attention and internal mental processes. For this reason, it is important to quantify the physical and mental state of the user while recording brain activity with the electroencephalogram (EEG). Such information may be beneficial not only to implement a BCI for communication, but also when using EEG technology with healthy users. In this workshop we will discuss the use of biomarkers extracted from the EEG to make inferences about internal states in combination with state-of-the-art active, reactive or passive BCIs. We will also discuss psychological perspectives following the User-Centered Design approach as well as novel machine learning techniques aiming at increasing the benefits of BCI technology for healthy as well as users with disabilities. Participants will learn details about the neurophysiological background of these signals, how improvements of user experience may be quantified and how detection of changes in the state of the user can be implemented technically.

## Intended audience
Neuroscientists, engineers and clinicians are welcome. Participants should have an interest in designing, developing, deploying and evaluating a brain-computer interface in a real world scenario.

## Learning objectives
1. Learn about biosignals for the detection of consciousness and the detection of pain.
2. Learn about three scenarios in which BCIs might offer an advantage to the user and be able to reason why these groups of users might benefit from BCIs
3. Learn how to thoroughly quantify user experience according to the User-Centered Design and its three BCI usability criteria effectiveness, efficiency and satisfaction. This will be illustrated in detail with examples from clinical environments.

## Materials
### Lempel-Ziv complexity for online consciousness detection, Sebastian Halder
- Jupyter Notebook: https://github.com/Han-YY/vBCI-Meeting_Workshop3/blob/e50b1985644b7726fc45505a172199b66dab6042/SH_Lempel-Ziv%20complexity%20for%20online%20consciousness%20detection/Quick%20tutorial%20on%20importing,%20processing%20and%20visualising%20Wada%20data.ipynb
- Document: https://github.com/Han-YY/vBCI-Meeting_Workshop3/blob/e50b1985644b7726fc45505a172199b66dab6042/SH_Lempel-Ziv%20complexity%20for%20online%20consciousness%20detection/Quick%20tutorial%20on%20importing,%20processing%20and%20visualising%20Wada%20data.md.pdf
- Data (patient1.txt, patient1.set and patient1.fdt): https://essexuniversity.box.com/s/o876dpwne5orbaj7c57snphdldlxb21c
### Building a classification model with integrative EEG features, Yiyuan Han
Download All files from: https://github.com/Han-YY/vBCI-Meeting_Workshop3/blob/e50b1985644b7726fc45505a172199b66dab6042/YH_integrative%20EEG%20features/YH_integrative%20EEG%20features.zip
- MATLAB live script: vBCI_workshop_InteFea_tutorial.mlx
- Supporting .m programs: EEGfilter.m and EEGsegment.m
- Other support files: electrodes.mat, channelPositions.mat, Empty.tiff
- Data: 'Example_data' folder
Before running the codes, please...
Before running this script...
Install EEGLAB from: https://sccn.ucsd.edu/eeglab/download.php
Download laplacian_perrinX.m from http://mikexcohen.com/lecturelets/laplacian/

