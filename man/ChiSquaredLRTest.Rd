\name{ChiSquaredLRTest}
\alias{ChiSquaredLRTest}
\title{ Conduct Chi-Squared Likelihood Ratio Test for Mean and Covariance Structure Models }
\description{
  \code{ChiSquaredLRTest} performs the chi-squared likelihood ratio test 
  for comparing hierarchically related mean and covariance structure models.  
  Computations follow those in Levy, R., & Hancock, G. R. (2007). A framework of statistical tests 
  for comparing mean and covariance structure models. Multivariate Behavioral Research, 42, 33-36.
}
\usage{
ChiSquaredLRTest(x, model.1.mean.vector, model.1.cov.matrix, 
		 model.1.df, model.2.mean.vector, 
		 model.2.cov.matrix, model.2.df)
}
\arguments{
  \item{x}{   The raw data arranged with subjects as rows and measured variables as columns. }
  \item{model.1.mean.vector}{   The model-implied mean vector from model 1, the more restricted (nested) model.  If no value is supplied, will employ the mean vector from the sample. }
  \item{model.1.cov.matrix}{   The model-implied covariance matrix from model 1, the more restricted (nested) model.  If no value is supplied, will employ the covariance matrix from the sample. }
  \item{model.1.df}{   The degrees of freedom for model 1, the more restricted (nested) model.  If no value is supplied, will set equal to 0. }
  \item{model.2.mean.vector}{   The model-implied mean vector from model 2, the more general model.  If no value is supplied, will employ the mean vector from the sample. }
  \item{model.2.cov.matrix}{   The model-implied covariance matrix from model 2, the more general model.  If no value is supplied, will employ the covariance matrix from the sample. }
  \item{model.2.df}{   The degrees of freedom for model 2, the more general model.  If no value is supplied, will set equal to 0. }
}
\details{
  The test is used to test for distinguishability and difference in fit between two models that are hierarchically related (i.e., nested)
  via referring -2* the likelihood ratio to a central chi-squared distribution with degrees of freedom equal to the difference in degrees of freedom for the two models.
  The test may also be used to conduct the chi-squared test of model fit for an individual model by not employing arguments for model 2.  
  The test is also used (twice) to test for distinguishability in partially overlapping models  
  See Levy, R., & Hancock, G. R. (2007). A framework of statistical tests for comparing mean and covariance structure models. Multivariate Behavioral Research, 42, 33-36.  
  The function will perform listwise deletion in order to analyze a data set with no missing data.
  If the mean vector(s) and/or covariance matrix(ces) are not supplied for the models, the program will employ the estimates from the sample.
  If the number of degrees of freedom is not supplied for a model the program will employ a value of 0.
}
\value{
  a list containing:


  \item{N }{Total number of subjects in the data set }
  \item{N.complete.data }{Number of subjects with complete data used in the analysis }
  \item{LR }{The value of the likelihood ratio statistic }
  \item{chi.sq.stat }{The test statistic.  Under the null hypothesis of no difference in fit }
  \item{df.test }{The degrees of freedom of the test, evaluated as (model.1.df-model.2.df) }
  \item{p }{The p-value for the observed test statistic }
}
\references{ Levy, R., & Hancock, G. R. (2007). A framework of statistical tests for comparing mean and covariance structure models. Multivariate Behavioral Research, 42, 33-36. }
\author{ Roy Levy \email{Roy.Levy@asu.edu} }
\examples{
  # Load the data, model-implied moments, and degrees of freedom for the
  # comparison of Model A to Model C (the BFPD-C) in Levy and Hancock (2007)
  data(cigandalc.dat)
  data(model.A.mean.vector)
  data(model.A.cov.matrix)
  data(model.A.df)
  data(model.C.mean.vector)
  data(model.C.cov.matrix)
  data(model.C.df)
  
  # Conduct the chi-squared difference LR test for the comparison of Model A 
  # to Model C (the BFPD-C) in Levy and Hancock (2007)
  LR.model.A.to.model.C  <- ChiSquaredLRTest(
	x = cigandalc.dat,
	model.1.mean.vector = model.C.mean.vector,
	model.1.cov.matrix = model.C.cov.matrix,
	model.1.df = model.C.df,
	model.2.mean.vector = model.A.mean.vector,
	model.2.cov.matrix = model.A.cov.matrix,
	model.2.df = model.A.df
  )

  # Conduct the chi-squared LR test for Model A in Levy and Hancock (2007)
  # Illustrates the use of the function to evaluate a single model 
  # (equivalently, in comparison to a saturated model)
  LR.model.A  <- ChiSquaredLRTest(
	x = cigandalc.dat,
	model.1.mean.vector = model.A.mean.vector,
	model.1.cov.matrix = model.A.cov.matrix,
	model.1.df = model.A.df
  )

}
\keyword{ htest }
\keyword{ multivariate }% __ONLY ONE__ keyword per line
