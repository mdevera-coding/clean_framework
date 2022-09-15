# pdf handler

### Problem Statement
- User should be able to retrieve pdfs relevant to their account.
- User should be able to view the pdfs.
- User should be able to share the pdfs with device specific interface.

# API Components

## PDF API

The Information regarding each pdf for the user.

### PdfInformationRequestModel
- Handles request to Pdf Information service

- API Endpoint: "/pdfInformation"

### PdfInformationResponseModel
- Handles response from Pdf Information service

- API Endpoint: "/pdfInformation"


### PdfInformationServiceAdapter
- Service adapter will hit the following endpoint:

- API Endpoint: "/pdfInformation"

## PDF updater

- updates the last date opened of the pdf

### PdfUpdaterRequestModel
- Handles request to Pdf Updater service

- API Endpoint: "/pdfUpdater"

### PdfUpdaterResponseModel
- Handles response from Pdf Updater service

- API Endpoint: "/pdfUpdater"

### PdfUpdaterServiceAdapter
- Service adapter will hit the following endpoint:

- API Endpoint "/pdfUpdater"


# Bloc Components
- The PdfInformationBloc will interact with PdfInformationViewModel, PdfInformationPresenter, and PdfInformationUseCase

## PdfInformationBloc
- Handles logic for sending and receiving request for Pdf Information service,
- Interacts with PdfInformationUseCase

## PdfInformationUseCase
-	This use case handles retrieving, opening, and sharing the pdf.

## Models
-	PdfInformationViewModel will interact with PdfInformationBloc, PdfInformationPresenter, and PdfInformationScreen

## PdfInformationViewModel

-	Contains the following fields: pdfName, pdfDateCreated, pdfDescription, pdfPath.

## PdfInformationEntity

-	Contains the following fields: pdfName, pdfDateCreated, pdfDescription, pdfPath.

### PdfActionsViewModel

### Responsibilities
- Contains the following fields: pdfName, pdfDateCreated, pdfDescription, pdfPath.

### Collaborators
- PdfActionsUseCase
- PdfActionsPresenter

# UI Components

## PdfInformationButtonWidget

### Responsibilities
- Allows the user to open PdfInformationFeatureWidget

### Collaborators
- PdfInformationFeatureWidget

## PdfInformationFeatureWidget

### Responsibilities
- Contains the PdfInformationPresenter and PdfInformationBloc

### Collaborators
- PdfInformationPresenter
- PdfInformationBloc

## PdfInformationPresenter

### Responsibilities
- Middle Layer between Bloc and Screen.
- Navigation between interfaces

### Collaborators
- PdfInformationBloc
- PdfInformationScreen
- PdfInformationViewModel
- PdfInformationFeatureWidget
- PdfInformationPresenterActions

### PdfInformationPresenterActions

### Responsibilities
- contains the method for opening PdfActionsFeatureWidget

### Collaborators
- PdfInformationScreen
- PdfInformationPresenter
- PdfInformationBloc

## PdfInformationScreen

### Responsibilities
- Displays preview buttons of each pdf with basic information of each pdf.

### Collaborators
- PdfInformationPresenterActions
- PdfInformationPresenter

## PdfActionsFeatureWidget

### Responsibilities
- Feature widget
- Displays options to open or share a given pdf.

### Collaborators
- PdfActionsPresenter
- PdfActionsBloc

## PdfActionsPresenter

### Responsibilities
- Middle Layer between Bloc and Screen

### Collaborators
- PdfActionsBloc
- PdfActionsScreen
- PdfActionsViewModel
- PdfActionsFeatureWidget
- PdfActionsPresenterActions

## PdfActionsScreen

### Responsibilities
- Contains the button to open the pdf and button to share the pdf

### Collaborators
- PdfActionsViewModel
- PdfActionsPresenter
- PdfActionsPresenterActions

## PdfActionsPresenterActions

### Responsibilities
- Holds actions for opening and sharing the pdf.

### Collaborators
- PdfActionsScreen
- PdfActionsPresenter
- PdfActionsBloc

# Utilities / Extensions
- 

# Serialized Data Structures

## JSON Responses

### /pdfInformation

``` json
{
    "pdfInformation": [
        {
          "pdfName": "Q1.pdf",
          "pdfDateCreated": "03/31/2021 00:00:00",
          "pdfDescription": "Contains transactions for Quarter 1",
          "pdfPath": "assets/q1.pdf"
        },
        {
          "pdfName": "Q2.pdf",
          "pdfDateCreated": "06/30/2021 00:00:00",
          "pdfDescription": "Contains transactions for Quarter 2",
          "pdfPath": "assets/q2.pdf"
        },
    ]
}
```

### /pdfUpdater
``` json
{
  "result": "true"
}
```

## JSON Requests

### /pdfUpdater
``` json
{
    "pdfUpdater": {
        "date": <current date here>
    }
}
```

# External References
- 