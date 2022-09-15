# Personal Fund Goal 
 
#### Problem Statement
-	User should be able to see the current status of his emergency fund
-	User should be able to update the goal and deadlne of his emergency fund
-	User should be able to see his deposits to the emergency fund
 
##### UI 
#### EmergencyFundCardWidget
### Responsibilities
- Feature widget
- Display emergency fund account information
- Handle click on hub card

### Collaborator
- 

#### EmergencyFundEditWidget
### Responsibilities
- Feature widget
- Display emergency fund account information
- Handle click on hub card

### Collaborator
- 

#### EmergencyFundTransactionsWidget
### Responsibilities
- Feature widget
- Display emergency fund account information
- Handle click on hub card

### Collaborator
- 





### HubCardPresenter 

-	The middle layer between the Bloc and the Screen 

-	Contains the navigation interface 
 
### HubCardNavigationInterface 

-	Controls the back, forward, and action item navigation for HubCardScreen 
 
### HubCardScreen 

-	This screen will show the such and such items 

![Hub Card](screenshots/hub_card.png)

## Statements List

### StatementsListPresenter 

-	The middle layer between the Bloc and the Screen 

-	Contains the navigation interface 
 
### StatementsListNavigationInterface 

-	Controls the back, forward, and action item navigation for StatementsListScreen 
 
### StatementsListScreen 

-	This screen will show the such and such items 

![Statements List Screen](screenshots/statements_list.png)

## PDF Statements

### PDFStatementsPresenter 

-	The middle layer between the Bloc and the Screen 

-	Contains the navigation interface 
 
### PDFStatementsNavigationInterface 

-	Controls the back, forward, and action item navigation for PDFStatementsScreen 
 
### PDFStatementsScreen 

-	This screen will show the such and such items 

![PDF Statements Screen](screenshots/pdf_statements.png)






# API Components 

## Account API

The Account API Service will be utilized during the setup process of the Hub Card.  
 
### AccountServiceRequestModel 

This request model is to make request to Account service

- API Endpoint: “/test/version/1/accountInfo/” 
 
### AccountServiceResponseModel 

This response model is to handle the response from Account service

- API Endpoint: “/test/version/1/accountInfo/” 
 
### AccountServiceAdapter 

This service adapter is to hit the following endpoint 
 
- API Endpoint: “/test/version/1/accountInfo/” 

## Transactions API

The Transactions API Service will be utilized to read the list of transactions displayed by the Statements List screen.  
 
### TransactionsServiceRequestModel 

This request model is to make request to Transactions service

- API Endpoint: “/test/version/1/transactions/” 
 
### TransactionsServiceResponseModel 

This response model is to handle the response from Transactions service

- API Endpoint: “/test/version/1/transactions/” 
 
### TransactionsServiceAdapter 

This service adapter is to hit the following endpoint 
 
- API Endpoint: “/test/version/1/transactions/” 

# Bloc Components 
-	The SuchAndSuchBloc will interact with SuchAndSuchViewModel, SuchAndSuchPresenter, SuchAndSuchStrings , and SuchAndSuchUseCase 
 
## SuchAndSuchBloc 
-	This is to handle the logic associate with determining x, y, and z. - 	This interacts with the Use Case XYZ.  
 
## SuchAndSuchUseCase 
-	This Use Case handles all the zoom, span, max, min, etc. logic. 
	 
## Models 
-	SuchAndSuchViewModel will interact with SuchAndSuchBloc, SuchAndSuchPresenter, and SuchAndSuchScreen 
 
## SuchAndSuchViewModel 

-	Contains the following fields: Account, Bank, WireNumber, etc. 
 
## SuchAndSuchEntity  

-	Contains the following fields: Account, Bank, WireNumber, etc. 

 
## Utils/Strings Classes 

## SuchAndSuchStrings 
-	Contains the strings for the SuchAndSuchFeature 
 
## JSON Responses 

### /emergency-account 

``` json
{
	"accountNumber": "1234567890126917",
	"goal": 123.45,
	"amountSaved": 678.90,
	"deadline": "04/13/2021 00:00:00"
}
```

### /transactions 
``` json
{
	"transactions": [
		{
			"transactionDate": "04/13/2021 00:00:00",
			"fromAccount": "1234567890",
			"debitAmount": 500.0,
			"description": "April deposit"
		},
		{
			"transactionDate": "05/13/2021 00:00:00",
			"fromAccount": "1234567890",
			"debitAmount": 250.0,
			"description": "May deposit"
		}
	]
}
```
