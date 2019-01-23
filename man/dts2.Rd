\name{dts2}
\alias{dts2}
\title{
Data frame for ggplottimeseries
}
\description{
This converts time series-class data into a data frame of decomposed time series.
}
\usage{
dts1(x, type = "additive")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
a time series-class data
}
  \item{type}{
type of time series, either additive (default) or multiplicative
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
data(co2)

df <- dts2(co2, type ="additive")

head(df)



% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
