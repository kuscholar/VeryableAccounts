# VeryableAccounts
 
## Instructions
- This is a part of the Verable app with two pages where the user can see the list of their banking and card accounts (AccountList) and select an individual account to view some details (AccountDetail).

- The app makes HTTP request to retrieve [JSON data](https://veryable-public-assets.s3.us-east-2.amazonaws.com/veryable.json) hosted on S3. The application  parses the response to the appropriate model and display in order.

- The list of accounts is vertically scrollable. When a user touches one of the list items, the app navigates to the next page (AccountDetail) where the user can see the details.

- To get back to AccountList from AccountDetail, the user can touch either the Done button or the back arrow in the navigation bar.

## Demo

<img src="https://user-images.githubusercontent.com/61807135/208370153-1f166cbd-1355-49b1-ab21-c2ae7c4dc9c7.gif" width="300"/>
