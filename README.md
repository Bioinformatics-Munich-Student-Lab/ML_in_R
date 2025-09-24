# ML_in_R
Presentations, demos, tasks and data to use in the workshop "Introduction to Machine Learning in R"

Time:       Afternoon - TBD
Duration:   3 hours
Venue:      CIP-Pool
Capacity:   up to 20-30 participants

Title: Introduction to Hands-on Machine Learning with R

# === Flow === #
## Opening (10 min)
1. Purpose:
    i) Introducing a toolkit for machine learning with ease to read and visualize
    ii) why R -> community, leader in statistical analysis and visio, packages
                abstraction, easy and quick to learn and apply
2. References to
    - R for Data Science (Wickham, Cetinkaya-Rundel and Grolemund)
    - Hands-On Machine Learning with R (Boehmke & Greenwell, 2020)
    - Tidy Modeling with R (Kuhn & Silge, 2023)
    
3. Cheat sheets for tidyverse as handout
    - Group participants based on prior knowledge?

## Intro (20 min)
4. Data structures in R, functions, flow-control, ggplot2, data reading and handling
5. Introduction of a general workflow:
    : data (split) -> explore -> (preprocess) -> model -> evaluate -> interpret
6. Introduction of the example data that will be used.
    : For more info, see the presentation (.pptx)
    TODO: [Add Medical Condition Prediction Dataset](https://www.kaggle.com/datasets/marius2303/medical-condition-prediction-dataset)


# ML (20 min)
7. Data split
    For generalizability, enough data for training but very large datasets may give minimal gains, smaller for computation speed, if features >= sample_size you need to increase sample size to identify consistent signals
    Simple sampling vs stratified sampling: Check for the y/response variable.
    Class imbalances an be remedied by
        up-sampling: create rare class instances by repetition or bootstrapping
        down-sampling: choose a subsample of abundant class to match the size of rare class.
8. Evaluation
    Chapter 2.6 of *Hands-On ML with R​*

# Tasks
. Regression (30 min)
    Key words: predictor-response or explanatory-dependent variables, coefficients, intercept, slope,
                residuals, R-squared, RMSE, overfit/underfit
    R: lm(), summary(), predict()
    Demo:
    Task:

    ----- Break (10 min) -----

. Classification (30 min)
    Key words: categorical outcome, binary vs multiclass, logistic regression, decision tree, confusion matrix,
                accuracy-precision-recall and ROC-AUC vs Precision-Recall, F1 score
    R: glm(), rpart(), caret::confusionMatrix() or table()
    Demo:
    Task:
. Clustering/PCA (30 min)
    Key words: unsupervised learning, distance metrics (Euclidean, Manhattan), k-means, dendrogram,
                dimensionality reduction, PCA, principal components, variance explained
    R: kmeans(), prcomp(), ggplot2
    Demo:
    Task:
    Which step would PCA replace in the general procedure? -> "filter out non-informative features without manually removing them"

Closing (10 min)
. Summarize
. Further Reading:
    [Feature Engineering and Selection: A Practical Approach for Predictive Models](http://www.feat.engineering/)

+ 20 mins buffer

(sums up to 3 hours)
