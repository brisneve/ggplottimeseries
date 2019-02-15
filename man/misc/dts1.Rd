\name{dts1}
\alias{dts1}
\title{
Data frame for ggplottimeseries
}
\description{
This creates a data frame of decomposed time series.
}
\usage{
dts1(x,y,z, type ="additive")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
  a vector or matrix of the dates formatted as YYYY-MM-DD
}
  \item{y}{
a vector or matrix of the observed time-series values
}
  \item{z}{
frequency (the number of observations per unit of time)
}
  \item{type}{
type of time series, either "additive" (default) or multiplicative
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
data(sst)

x <- sst$date
y <- sst$sst
z <- 365.25 #number of days in a year

df <- dts1(x,y,z, type = "additive")

head(df)


