# qbo-csv

qbo-csv helps to ensure that an input CSV is ready for consumption by
QuickBooks Online. Based on [this page](https://community.intuit.com/questions/1213571-why-isn-t-quickbooks-online-uploading-my-csv-file) there are several requirements for a CSV to be uploaded.


1. 0's are not allowed anywhere in the file, e.g $0 should be left blank
2. $ symbols aren’t allowed either e.g $234 should be 234
3. Commas for thousands are not allowed either e.g 2,111 should be 2111
4. Correct any transactions with the amount showing in description
5. Remove the word “amount" if it appears in the credit or debit column, i.e. credit amount, debit amount
6. Correct and standardize the date format to a single format i.e. dd/mm/yyyy

Unfortunately, it's common to come across other CSV formats. For example, the
only CSV format provided by HSBC for personal banking doesn't adhere to this
format. Their format currently emits numbers with commas.
