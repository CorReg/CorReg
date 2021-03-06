% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BicZ.R
\name{BicZ}
\alias{BicZ}
\title{Compute the BIC of a given structure}
\usage{
BicZ(
  X = X,
  Z = Z,
  Bic_null_vect = NULL,
  Bic_old = NULL,
  methode = 1,
  Zold = NULL,
  star = FALSE
)
}
\arguments{
\item{X}{the dataset}

\item{Z}{binary adjacency matrix of the structure (size p)}

\item{Bic_null_vect}{the BIC of the null hypothesis (used for independent variables)}

\item{Bic_old}{BIC (vector) associated to Zold}

\item{methode}{parameter for OLS (matrix inversion) methode_BIC  parameter for OLS (matrix inversion) 1:householderQr, 2:colPivHouseholderQr}

\item{Zold}{another structure with some common parts with Z (allows to compute only the differences, to be faster)}

\item{star}{boolean defining wether classical BIC or BIC* (over-penalized by a hierarchical uniform assumption to avoid over-learning)is computed}
}
\value{
The vector of the BICs associated to each covariate (conditionnal distribution) according to the sub-regression structure.
}
\description{
Compute the BIC of a given structure
}
\examples{
data = mixture_generator(n = 15, p = 5, valid = 0) # dataset generation
Z = data$Z # binary adjacency matrix that describes correlations within the dataset
X = data$X_appr
Bic_null_vect = density_estimation(X = X)$BIC_vect
# Computes the BIC associated to each covariate (optional, BicZ can do it if not given as an input)
# computes the BIC associated to the structure
res = BicZ(X = X, Z = Z, Bic_null_vect = Bic_null_vect)

}
