
# Reproduction of BCL7A Methylation–Expression Association in TCGA-LAML

## Overview

This project reproduces the TCGA-LAML methylation–expression analysis reported by Patiño-Mercau et al. (2023) in the study *BCL7A is silenced by hypermethylation to promote acute myeloid leukemia*.

The analysis was independently performed using TCGA-LAML DNA methylation and RNA expression data.

The analysis was conducted using R/RStudio.

## Research Question

Does DNA methylation around the **BCL7A** gene show an inverse relationship with **BCL7A expression** in TCGA-LAML?

## Main Result

The strongest negative methylation–expression association was observed for:

**cg27193813**

- Pearson correlation: **r = -0.2425**
- P-value: **p = 0.00118**
- BH-adjusted FDR: **0.02485**
- Genomic coordinate: **chr12:122,492,914**

The result indicates an inverse association between methylation at cg27193813 and BCL7A expression in the 176 matched TCGA-LAML patients.

The analysis demonstrates an association and does not establish that methylation directly causes BCL7A silencing.

## Main Figure

![BCL7A methylation-expression correlation](BCL7A/figures/BCL7A_cg27193813_methylation_expression.png)

## Genomic Context

The BCL7A genomic region was inspected using the UCSC Genome Browser.

The visualization included regulatory chromatin tracks such as **H3K4me1** and **H3K27ac** to provide genomic context around the BCL7A region.

![UCSC genomic region](BCL7A/figures/USCS%20genomic%20region.png)

## Key Findings

- **176 TCGA-LAML patients** were successfully matched between methylation and RNA expression datasets.
- **22 BCL7A-associated CpGs** were initially identified.
- **21 CpGs** were retained after excluding cg20260559 because of complete missing data.
- **cg27193813** showed the strongest negative association with BCL7A expression.
- The association remained statistically significant after BH-FDR correction.

## Limitations

This project focuses specifically on reproducing the TCGA-LAML methylation–expression analysis rather than reproducing every experiment and analysis in the original publication.

The analysis demonstrates an association between methylation and BCL7A expression but does not establish causality.

The reproduced analysis used a different matched patient set (**176 instead of 160**), which may contribute to differences from the original study.

## Reproducibility

The analysis was performed using **R/RStudio**.

The repository contains the R analysis workflow, processed result tables, and generated figures used to evaluate the BCL7A methylation–expression relationship.

Raw TCGA data are not included in this repository.

## Repository Structure

```text
AML_BCL7A/
├── BCL7A/
│   ├── 1.RNA.expression.Rmd
│   ├── 2.DNA.methylation.Rmd
│   ├── 3.matched IDs.Rmd
│   ├── 4.Combine.Rmd
│   ├── 5.Corelation.Rmd
│   ├── 6.Annotation.Rmd
│   ├── 7.visualization.Rmd
│   ├── figures/
│   ├── results/
│   └── Readme.R
├── LAML.HumanMethylation450.Level_3/
└── README.md
```

## Reference

Patiño-Mercau, S., et al. (2023).

**BCL7A is silenced by hypermethylation to promote acute myeloid leukemia.**

PMID: **36941700**

## Project Purpose

This project was developed as an independent computational reproduction to practice:

- Cancer genomics
- DNA methylation analysis
- RNA expression analysis
- TCGA data integration
- Patient-level data matching
- Correlation analysis
- Multiple-testing correction
- Genomic visualization
- Reproducible analysis using R
- Interpretation of epigenetic regulation in cancer

## Author

**Sibgha Mubeen**

