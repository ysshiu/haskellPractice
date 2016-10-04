-- file: BookStore.hs
type CustomerID = Int
type ReviewBody = String
data BookInfo = BookInfo Int String [String]
                deriving (Show)
data BookReview = BookReview BookInfo CustomerID ReviewBody

type BookRecord = (BookInfo, BookReview)


type CardHolder = String
type CardNumber = String
type Address = String
data BillingInfo = CreditCard CardNumber CardHolder Address
                | CashOnDelivery
                | Invoice CustomerID
                  deriving (Show)
