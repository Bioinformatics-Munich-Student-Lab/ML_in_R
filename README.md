# Introduction to Machine Learning with R - Train your first model with biological data sets

Presentations, demos, tasks and data to use in the workshop:

Date:       24.10.2025 \
Time:       13:00 - 16:00 \
Duration:   3 hours \
Venue:      CIP-Pool \
Capacity:   up to 20 participants

Directory Structure is [at the bottom](#dir-Structure):

# === Flow === #
## Opening (10 min)
1. Purpose and Outcomes:
2. References to fundamental books
3. Cheat sheets for tidyverse as handout
    - Group participants based on prior knowledge?

## Intro (20 min)
4. tidyverse refresher
5. Introduction of the example data that will be used.
    - For more info, see the presentation (.pptx)
    - TODO: [Add Medical Condition Prediction Dataset](https://www.kaggle.com/datasets/marius2303/medical-condition-prediction-dataset)


## ML (20 min)
6. Modelling
7. tidymodels
8. Validation
    For generalizability, enough data for training but very large datasets may give minimal gains, smaller for computation speed, if features >= sample_size you need to increase sample size to identify consistent signals
    Simple sampling vs stratified sampling: Check for the y/response variable.
    Class imbalances an be remedied by
        up-sampling: create rare class instances by repetition or bootstrapping
        down-sampling: choose a subsample of abundant class to match the size of rare class.
9. Evaluation
    - Chapter 2.6 of *Hands-On ML with R​*

## Demo & Task Phase
9. Regression (30 min)
    **Key words:** predictor & target, coefficients, intercept, slope, residuals, RMSE, overfit/underfit
    
    **Demo_1:** Wine quality
    
    **Task_1:** Oktoberfest Detective
    
    **Task_2:** Abalone age

    ----- Break (10 min) -----

10. Classification (30 min)
    **Key words:** categorical outcome, binary vs multiclass, logistic regression, decision tree, confusion matrix,
                accuracy-precision-recall and ROC-AUC vs Precision-Recall, F1 score
                
    **R:** glm(), rpart(), caret::confusionMatrix() or table()
    
    **Demo:** Agaricus lepiota
    
    **Task:** Medical Condition Dataset
    **Task:**


11. Clustering/PCA (30 min)
    **Key words:** unsupervised learning, distance metrics (Euclidean, Manhattan), k-means, dendrogram,
                dimensionality reduction, PCA, principal components, variance explained
                
    **R:** kmeans(), prcomp(), ggplot2
    
    **Demo:** TODO
    
    **Task:** TODO
    
    Which step would PCA replace in the general procedure? -> "filter out non-informative features without manually removing them"

## Closing (10 min)
- Summarize
- Further Reading:
    - [Feature Engineering and Selection: A Practical Approach for Predictive Models](http://www.feat.engineering/)

* 20 mins buffer

(sums up to 3 hours)

# Dir Structure
```
├── demos                               # All demos and tasks will be here 
│   ├── data                            # Data sets 
│   ├── demos.Rproj                     # Please use this to open Rstudio, sets the current dir as root 
│   ├── linear_regression.R
│   ├── task1_linreg_oktoberfest_files
│   ├── task1_linreg_oktoberfest.pdf
│   ├── task1_linreg_oktoberfest.Rmd
│   ├── wine_quality.pdf
│   └── wine_quality.Rmd
├── images                              # Image collection to use in presentation 
├── LICENSE
├── README.md
└── workshop.pptx                       # Workshop presentation to help with the workflow 
```

