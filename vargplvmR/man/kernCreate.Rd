\name{kernCreate}
\Rdversion{1.0}
\alias{kernCreate}
\title{Initialise a kernel structure.}
\description{
  Initialise a kernel structure.
}
\usage{
kern <- kernCreate(X, type)
kern <- kernCreate(dim)
}
\arguments{
  \item{X}{Input data values (from which kernel will later be computed).}
  \item{type}{Type of kernel to be created, some standard types are 'lin', 'rbf', 'white', 'bias' and 'rbfard'. If a cell of the form {'cmpnd', 'rbf', 'lin', 'white'} is used a compound kernel based on the sum of the individual kernels will be created. The 'cmpnd' element at the start of the sequence is optional. Furthermore, {'tensor', 'rbf', 'lin'} can be used to give a tensor product kernel, whose elements are the formed from the products of the two indvidual kernel's elements and {'multi', 'rbf', ...} can be used to create a block structured kernel for use with multiple outputs. Finally the form {'parametric', struct('opt1', {val1}), 'rbf'} can be used to pass options to other kernels.}
  \item{dim}{input dimension of the design matrix (i.e. number of features in the design matrix).}
}
\details{
  \code{kern <- kernCreate(X, type)}
  input points and a kernel type.

  \code{kern <- kernCreate(dim)}
  creates a kernel matrix structure given the dimensions of the design matrix and the kernel type.

}
\value{
  \item{kern}{The kernel structure.}
}
\seealso{
\code{\link{kernParamInit}}.
}
\examples{
## missing
}
\keyword{model}
