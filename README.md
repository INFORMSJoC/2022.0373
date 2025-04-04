[![INFORMS Journal on Computing Logo](https://INFORMSJoC.github.io/logos/INFORMS_Journal_on_Computing_Header.jpg)](https://pubsonline.informs.org/journal/ijoc)

# Assessing Multi-Modality Breast Cancer Screening Strategies for BRCA 1/2 Gene Mutation Carriers and Other High-Risk Populations
### Repository for INFORMS Journal on Computing Submission (Manuscript ID: 2022.0373)

## **Overview**
This repository contains MATLAB code and data used to replicate the results presented in our paper on multi-modality breast cancer screening strategies for high-risk populations. The study investigates the cost-effectiveness of different screening strategies for women with BRCA1/2 gene mutations and those with strong family histories of breast cancer.

The repository includes:
- **MATLAB source code** for solving the optimization model and running numerical analyses.  
- **Data files** containing screening costs, sensitivity/specificity values, and disease progression transition probabilities.  
- **Scripts for sensitivity analyses**, testing the impact of different parameters on results.  
- **Validation scripts** to numerically observe theoretical results from the study.  

## **Requirements**
The following software and toolboxes are required to run the scripts:
- MATLAB (R2021a or later recommended)
- IBM CPLEX (for solving the optimization model)

## **Repository Structure**

```
/2022.0373
├── data/                        # Data files for screening costs and test accuracy
│   ├── Parameters Breast Cancer Transition Probabilities
│   └── Parameters Cost Sensitivity and Specificity Rates
|
├── docs/                        # Additional documentation
│   └── Breast_Cancer_Screening_for_High_Risk_Women_Appendix.pdf
|
├── scripts/                     # Sensitivity analysis & theoretical validation scripts
│   ├── Codes for Sensitivity Analysis Cost Function
│   ├── Codes for Sensitivity Analysis Disutility Function Age 55
│   ├── Codes for Sensitivity Analysis Disutility Function Age 65
│   ├── Codes for Sensitivity Analysis Disutility Function Age 75
│   ├── Codes for Sensitivity Analysis Transition Probability
│   └── Codes for Theoretical Results
|
├── src/                         # Main numerical analysis scripts
│   ├── Codes for Base Case Numerical Analysis
│   └── Codes for Other Numerical Analyses
|
├── AUTHORS                      # Author information
├── LICENSE                      # License for code use and distribution (MIT)
├── README.md                    # This file
```

## **Citing This Repository**
```
@article{Caglayan2025,
  author  = {Caglayan, C. and Ayer, T. and Ekwueme, D. U.},
  title   = {Assessing Multi-Modality Breast Cancer Screening Strategies for BRCA 1/2 Gene Mutation Carriers and Other High-Risk Populations},
  journal = {INFORMS Journal on Computing},
  year    = {2025},
  doi     = {10.1287/ijoc.2022.0373},
  url     = {https://github.com/INFORMSJoC/2022.0373}
}
```

## **DOI Links**
- Zenodo DOI: https://doi.org/10.5281/zenodo.1234567  
- INFORMS JOC Article: https://pubsonline.informs.org/doi/10.1287/ijoc.2022.0373  
- IJOC GitHub Archive: https://github.com/INFORMSJoC/2022.0373

## **Contact**
For any questions regarding the repository, please contact Dr. Çağlar Çağlayan (caglar.caglayan@jhuapl.edu).
