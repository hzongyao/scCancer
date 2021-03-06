% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{Read10Xdata}
\alias{Read10Xdata}
\title{Read10Xdata}
\usage{
Read10Xdata(
  data.dir = NULL,
  gene.column = 2,
  unique.features = TRUE,
  only.expr = TRUE
)
}
\arguments{
\item{data.dir}{Directory containing the matrix.mtx, genes.tsv (or features.tsv), and barcodes.tsv files provided by 10X.
A vector or named vector can be given in order to load several data directories.
If a named vector is given, the cell barcode names will be prefixed with the name.}

\item{gene.column}{An integer indicating which column of genes.tsv or features.tsv to use for gene names; default is 2.}

\item{unique.features}{Make feature names unique (default TRUE).}

\item{only.expr}{Whether to read expression data only if have multiple features (default TRUE).}
}
\value{
If the 10X data only has expression data or the argument 'only.expr' is TRUE,
a sparse matrix containing the expression data will be returned.
Otherwise, if the 10X data has multiple data types,
a list containing a sparse matrix of the data from each type will be returned.
}
\description{
Read expression matrix data from 10X. This function is modified from Seurat package.
}
