

project_path <- "~/Documents/AML_BCL7A"
dir.exists(project_path)

readme_text <- "
# Reproduction of BCL7A Methylation–Expression Association in TCGA-LAML

## Overview

This project independently reproduces the TCGA-LAML methylation–expression analysis reported by Patiño-Mercau et al. (2023) *BCL7A is silenced by hypermethylation to promote acute myeloid leukemia*, PMID: 36941700 using R/RStudio.

## Research Question

Does DNA methylation at CpG sites within ±400 bp of the BCL7A genomic region show an inverse relationship with BCL7A expression in TCGA-LAML?

## Key Findings & Main Result

- **176 matched TCGA-LAML patients** were successfully integrated across DNA methylation and RNA expression datasets.
- Out of 22 initial BCL7A-associated CpGs, **21 CpGs** were evaluated (cg20260559 was excluded due to missing data).
- **cg27193813** showed the strongest inverse association with BCL7A expression:
  - **Pearson correlation:** r = -0.2425
  - **P-value:** p = 0.00118
  - **BH-adjusted FDR:** 0.02485
  - **Genomic coordinate:** chr12:122,492,914

![BCL7A methylation-expression correlation](figures/BCL7A_cg27193813_methylation_expression.png)

## Genomic Context

The BCL7A region was inspected using the UCSC Genome Browser, incorporating regulatory chromatin tracks (**H3K4me1**,**H3K27ac**  and **DNase cluster**) to provide epigenetic context.

![UCSC genomic region](figures/USCS%20genomic%20region.png)

## Limitations

- **Scope:** Focuses specifically on reproducing the TCGA-LAML methylation–expression analysis rather than the full experimental scope of the original publication.
- **Sample Cohort:** Used 176 matched patients compared to 160 in the original study, which may account for analytical minor variations.
- **Causality:** Demonstrates a statistical association between methylation and expression, which does not establish direct functional causality.

## Reproducibility

The repository contains the R analysis workflow, processed result tables, and generated figures. Raw TCGA data are omitted.

## Project Purpose

Developed as an independent computational exercise to practice:
- Cancer genomics & epigenetics
- DNA methylation and RNA expression integration
- Patient matching, correlation analysis, and BH-FDR correction
- Genomic visualization and reproducible workflows in R

## Author

**Sibgha Mubeen**
"

readme_file <- file.path(project_path, "README.md")

writeLines(readme_text, readme_file)

file.exists(readme_file)

readme_text <- sub(
  "## Reference",
  paste0(
    "## Repository Structure\n\n",
    "```text\n",
    "AML_BCL7A/\n",
    "├── BCL7A/\n",
    "│   ├── 1.RNA.expression.Rmd\n",
    "│   ├── 2.DNA.methylation.Rmd\n",
    "│   ├── 3.matched IDs.Rmd\n",
    "│   ├── 4.Combine.Rmd\n",
    "│   ├── 5.Corelation.Rmd\n",
    "│   ├── 6.Annotation.Rmd\n",
    "│   ├── 7.visualization.Rmd\n",
    "│   ├── figures/\n",
    "│   ├── results/\n",
    "│   └── Readme.R\n",
    "├── LAML.HumanMethylation450.Level_3/\n",
    "```\n\n",
    "## Reference"
  ),
  readme_text
)
writeLines(readme_text, readme_file)
grep("Repository Structure", readLines(readme_file), value = TRUE)









