\name{wordcount}
\alias{wordcount}
\title{
Word Count
}
\description{
The function takes a text file or text string and outputs a \code{\link{barplot}} of the most frequently occuring words.
}
\usage{
wordcount(file = "", n, decreasing = TRUE, text)
}
\arguments{
  \item{file}{
A text file whose location is interpreted relative to the current working directory (given by \code{\link{getwd}}). Can be left blank, in which case the text must be inputted as the argument \code{text}.
}
  \item{n}{
The number of words to show in the \code{\link{barplot}}. Should be an integer greater than 0 and less than the number of unique words in the text. For example, if \code{n}=5, then the \code{\link{barplot}} will show the 5 most frequently occuring words.
}
  \item{decreasing}{
If \code{TRUE} (the default), the words in the \code{\link{barplot}} will show from most frequent on the left to least frequent on the right. If \code{FALSE}, the most frequently occuring word will be on the right hand side of the \code{\link{barplot}}.
}
  \item{text}{
If you wish to enter text as an inline argument rather than as a file on your computer, you can enter your text as this argument and leave \code{file} blank.
}
}
\author{
Jonathan Schwartz
}
\seealso{
\code{\link{scan}},
\code{\link{barplot}}
}
\examples{
myfile <- file.path(tempdir(), "wordcounttest.txt")
write("Four four four four. Three three three. Two two. One.",file=myfile )
wordcount(myfile ,4)

##or text can be entered inline
wordcount(text="Four four four four. Three three three. Two two. One.",n=4)
}