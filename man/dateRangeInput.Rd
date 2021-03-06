\name{dateRangeInput}
\alias{dateRangeInput}
\title{Create date range input}
\usage{
  dateRangeInput(inputId, label, start = NULL, end = NULL,
    min = NULL, max = NULL, format = "yyyy-mm-dd",
    startview = "month", weekstart = 0, language = "en",
    separator = " to ")
}
\arguments{
  \item{inputId}{Input variable to assign the control's
  value to.}

  \item{label}{Display label for the control.}

  \item{start}{The initial start date. Either a Date
  object, or a string in \code{yyyy-mm-dd} format. If NULL
  (the default), will use the current date in the client's
  time zone.}

  \item{end}{The initial end date. Either a Date object, or
  a string in \code{yyyy-mm-dd} format. If NULL (the
  default), will use the current date in the client's time
  zone.}

  \item{min}{The minimum allowed date. Either a Date
  object, or a string in \code{yyyy-mm-dd} format.}

  \item{max}{The maximum allowed date. Either a Date
  object, or a string in \code{yyyy-mm-dd} format.}

  \item{format}{The format of the date to display in the
  browser. Defaults to \code{"yyyy-mm-dd"}.}

  \item{startview}{The date range shown when the input
  object is first clicked. Can be "month" (the default),
  "year", or "decade".}

  \item{weekstart}{Which day is the start of the week.
  Should be an integer from 0 (Sunday) to 6 (Saturday).}

  \item{language}{The language used for month and day
  names. Default is "en".  Other valid values include "bg",
  "ca", "cs", "da", "de", "el", "es", "fi", "fr", "he",
  "hr", "hu", "id", "is", "it", "ja", "kr", "lt", "lv",
  "ms", "nb", "nl", "pl", "pt", "pt", "ro", "rs",
  "rs-latin", "ru", "sk", "sl", "sv", "sw", "th", "tr",
  "uk", "zh-CN", and "zh-TW".}

  \item{separator}{String to display between the start and
  end input boxes.}
}
\description{
  Creates a pair of text inputs which, when clicked on,
  bring up calendars that the user can click on to select
  dates.
}
\details{
  The date \code{format} string specifies how the date will
  be displayed in the browser. It allows the following
  values:

  \itemize{ \item \code{yy} Year without century (12) \item
  \code{yyyy} Year with century (2012) \item \code{mm}
  Month number, with leading zero (01-12) \item \code{m}
  Month number, without leading zero (01-12) \item \code{M}
  Abbreviated month name \item \code{MM} Full month name
  \item \code{dd} Day of month with leading zero \item
  \code{d} Day of month without leading zero \item \code{D}
  Abbreviated weekday name \item \code{DD} Full weekday
  name }
}
\examples{
dateRangeInput("daterange", "Date range:",
               start = "2001-01-01",
               end   = "2010-12-31")

# Default start and end is the current date in the client's time zone
dateRangeInput("daterange", "Date range:")

# start and end are always specified in yyyy-mm-dd, even if the display
# format is different
dateRangeInput("daterange", "Date range:",
               start  = "2001-01-01",
               end    = "2010-12-31",
               min    = "2001-01-01",
               max    = "2012-12-21",
               format = "mm/dd/yy",
               separator = " - ")

# Pass in Date objects
dateRangeInput("daterange", "Date range:",
               start = Sys.Date()-10,
               end = Sys.Date()+10)

# Use different language and different first day of week
dateRangeInput("daterange", "Date range:",
               language = "de",
               weekstart = 1)

# Start with decade view instead of default month view
dateRangeInput("daterange", "Date range:",
               startview = "decade")
}
\seealso{
  \code{\link{dateInput}},
  \code{\link{updateDateRangeInput}}
}

