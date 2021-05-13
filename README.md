# COMP6248-Reproductivity-Challenge

# REPRODUCTIVITY CHALLENGE FEW-SHOT TEXT CLASSIFICATION WITH DIS-TRIBUTIONAL SIGNATURES(ICLR 2020)
(20-21 Semester 2 COMP6248 Deep Learning Reproductivity Challenge)

Original Paper: https://openreview.net/forum?id=H1emfT4twB

## Dependency Version(based on Anaconda)

* Python 3.7
* PyTorch 1.1.0
* numpy 1.15.4
* torchtext 0.4.0
* pytorch-transformers 1.1.0
* termcolor 1.1.0
* tqdm 4.32.2

## Data

We run the code on 6 data sets, which can be downloaded in [datasets link](https://people.csail.mit.edu/yujia/files/distributional-signatures/data.zip)


## Environment Requirement 
The code should be run on MacOS or Ubuntu. Colab is also OK except for Windows system.


## Format
* Each <font color="#000066">Json</font> file contains one example per line. With the exception of <font color="#000066">RCV1</font>, each example has keys <font color="#000066">text</font> and <font color="#000066">label</font>. <font color="#000066">text</font> is a list of input tokens and <font color="#000066">label</font> is an integer, ranging from 0 to the number of classes - 1.
* For <font color="#000066">RCV1</font>, we are unable to distribute the original data. In place of input tokens, each example specifies a <font color="#000066">path</font>, which corresponds to each example's file path in the data distribution.
* Class splits for each dataset may be found in > src/dataset/loader.py.

## Quickstart
Run our model with default settings. By default we load data from > data/.

> ./bin/our.sh

Scripts for other baselines may be found under bin/.





## Group Eplison members:

Bohao Yang by2u20@soton.ac.uk 

Ruixiao Zhang rz6u20@soton.ac.uk

Runwei Guan rg6n20@soton.ac.uk

Yan Zhang yz10u20@soton.ac.uk



## Conclusion

We reproduced the meta-learning-based few-shot text classification model with distributional
signatures on five relevant datasets. Almost all results are consistent with that shown in the paper.
These experiments show that using distributional signatures as the inputs of meta-learning model can
achieve better performance than using lexical words directly. However, we failed to fully reproduce
the experiments due to limited computational resources and the implementation details for using
BERT. We have tried to inquire the author for more implementation details and further adjust our
experiments to achieve better performance.
