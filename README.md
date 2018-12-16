[![Build Status](https://travis-ci.com/darylnwk/currency.svg?branch=master)](https://travis-ci.com/darylnwk/currency)

# currency
--
    import "github.com/darylnwk/currency"


## Usage

#### func  IsValid

```go
func IsValid(code string) bool
```
IsValid checks if `code` is valid

#### type Currency

```go
type Currency struct {
	AlphaCode string
	Name      string
	Decimal   int
}
```

Currency contains currency details

#### func  New

```go
func New(code string) (*Currency, error)
```
New initialises a new Currency with ISO 4217 alphabetic code and returns error
if currency is invalid or not found
