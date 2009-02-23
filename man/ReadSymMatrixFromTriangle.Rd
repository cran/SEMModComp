\name{ReadSymMatrixFromTriangle}
\alias{ReadSymMatrixFromTriangle}
\title{ Read in a symmetric matrix from a data file containing the triangle of the matrix and the main diagonal }
\description{
  Produces a symmetric matrix (e.g., a covariance matrix) from a file that contains the triangle of the matrix and the main diagonal.  
  Structural equation modeling (SEM) programs often report model-implied covariance matrices by reporting the lower triangle (containing covariances)
  and the diagonal (containing variances).

}
\usage{
ReadSymMatrixFromTriangle(file, n.vars)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{file}{ Path to data file containing the triangle and main diagonal of the matrix }
  \item{n.vars}{ The number of number of rows and columns in the matrix (i.e., the number of variables) }
}
\value{
  A symmetric matrix with n.vars rows and n.vars columns 
}
\author{ Roy Levy \email{Roy.Levy@asu.edu} }
\keyword{ array }
