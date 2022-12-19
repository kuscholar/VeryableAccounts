# VeryableAccounts
 
## About
- This is a part of the Veryable app with two pages where the user can see the list of their banking and card accounts (AccountList) and select an individual account to view some details (AccountDetail).

- The app makes HTTP request to retrieve [JSON data](https://veryable-public-assets.s3.us-east-2.amazonaws.com/veryable.json) hosted on S3. The application  parses the response to the appropriate model and display in order.

- The list of accounts is vertically scrollable. When a user touches one of the list items, the app navigates to the next page (AccountDetail) where the user can see the details.

- To get back to AccountList from AccountDetail, the user can touch either the Done button or the back arrow in the navigation bar.


## Demo

<img src="https://user-images.githubusercontent.com/61807135/208370153-1f166cbd-1355-49b1-ab21-c2ae7c4dc9c7.gif" width="300"/>


## Instructions on running this project

### Install Cocoapods

[Cocoapods](https://cocoapods.org) is needed for this project to be built. You can refer to [this guide](https://guides.cocoapods.org/using/getting-started.html) for detailed instructions on using Cocoapods.

-   To use the default Ruby install, in terminal, run:
    
    ```
      $ sudo gem install cocoapods
    ```
    
    if you encountered any problem, please visit [this guide](https://guides.cocoapods.org/using/troubleshooting#installing-cocoapods).
    

> **_NOTE:_** Cocoapods version 1.11.3 or higher is recommended, you can check your Cocoapods version by typing and running in terminal:

```
  gem which cocoapods
```    

### Building and Installing
#### 1. Clone the repo

-   Clone the repo:
    
    ```
    git clone https://github.com/kuscholar/VeryableAccounts.git
    ```
    
-   Press _**Enter**_, put in the passphrase you set if you are asked for it, then press _**Enter**_ again to create your local clone:
    
    ```
    > Cloning into `target_folder`...
    > remote: Counting objects: 10, done.
    > remote: Compressing objects: 100% (8/8), done.
    > remove: Total 10 (delta 1), reused 10 (delta 1)
    > Unpacking objects: 100% (10/10), done.
    ```

#### 2. Install Project Pods

-   Navigate to the repo folder you just cloned:

	```
		cd VeryableAccounts/Base-Project
	```
    
  
-  Type and run:
    
	```
		pod install
	```
        
    to install all the dependencies needed.

#### 3. Run the project

- Double click to open the **Veryable Sample.xcworkspace** file. 
> **_NOTE:_** please open the highlighted _**Veryable Sample.xcworkspace**_ file instead of the Veryable Sample.xcodeproj file, because Pods are used and need to be included.

- Tap on Build button or Command + Shift + R to start building the app on your test device.
