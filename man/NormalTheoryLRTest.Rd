\name{NormalTheoryLRTest}
\alias{NormalTheoryLRTest}
\title{ Conduct Normal Theory Likelihood Ratio Test for Mean and Covariance Structure Models }
\description{
  \code{NormalTheoryLRTest} performs the normal theory likelihood ratio test 
  for comparing distinguishable mean and covariance structure models.
  See Equations 19, 7, and 10 of Levy, R., & Hancock, G. R. (2007). A framework of statistical tests 
  for comparing mean and covariance structure models. Multivariate Behavioral Research, 42, 33-36.
}
\usage{
NormalTheoryLRTest(x, model.1.mean.vector, model.1.cov.matrix, 
		   model.2.mean.vector, model.2.cov.matrix)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{   The raw data arranged with subjects as rows and measured variables as columns. }
  \item{model.1.mean.vector}{   The model-implied mean vector from model 1.  If no value is supplied, will employ the mean vector from the sample. }
  \item{model.1.cov.matrix}{   The model-implied covariance matrix from model 1.  If no value is supplied, will employ the covariance matrix from the sample. }
  \item{model.2.mean.vector}{   The model-implied mean vector from model 2.  If no value is supplied, will employ the mean vector from the sample. }
  \item{model.2.cov.matrix}{   The model-implied covariance matrix from model 2.  If no value is supplied, will employ the covariance matrix from the sample. }
}
\details{
  The test is used to test for difference in fit between two models that are 
  (a) partially overlapping and distinguishable with unique best fitting probability distributions (BFPDs), or
  (b) completely nonoverlapping (and therefore distinguishable with unique BFPDs). 
  See Levy, R., & Hancock, G. R. (2007). A framework of statistical tests for comparing mean and covariance structure models. Multivariate Behavioral Research, 42, 33-36;

  especially equations 19, 7, and 10.  
  The function will perform listwise deletion in order to analyze a data set with no missing data.
  If the mean vector(s) and/or covariance matrix(ces) are not supplied for the models, the program will employ the estimates from the sample.
}
\value{
  a list containing:


  \item{N }{Total number of subjects in the data set }
  \item{N.complete.data }{Number of subjects with complete data used in the analysis }
  \item{LR }{The value of the likelihood ratio statistic }
  \item{Omega.hat }{The estimated standard deviation involved in the T statistic }
  \item{T }{The test statistic.  Under the null hypothesis of no difference in fit, T is asymptotically ~ N(O,1) }
  \item{p }{The 2-tailed p-value for the observed test statistic T }
}
\references{ Levy, R., & Hancock, G. R. (2007). A framework of statistical tests for comparing mean and covariance structure models. Multivariate Behavioral Research, 42, 33-36. }
\author{ Roy Levy \email{Roy.Levy@asu.edu} }
\examples{

  # Load the data and model-implied moments for the comparison of Model A 
  # to Model B in Levy and Hancock (2007)
  data(cigandalc.dat)
  data(model.A.mean.vector)
  data(model.A.cov.matrix)
  data(model.B.mean.vector)
  data(model.B.cov.matrix)

  # Conduct the normal theory LR test for the comparison of Model A 
  # to Model B in Levy and Hancock (2007)
  LR.model.A.to.model.B <- NormalTheoryLRTest(
	x = cigandalc.dat,
	model.1.mean.vector = model.A.mean.vector,
	model.1.cov.matrix = model.A.cov.matrix,
	model.2.mean.vector = model.B.mean.vector,
	model.2.cov.matrix = model.B.cov.matrix
  )
}
\keyword{ htest }
\keyword{ multivariate }% __ONLY ONE__ keyword per line
