## Firebase

- Firebase is mainly used to save our message data and our user details in the cloud by using their pre-built methods and classes.
- This includes things like analytics, authentication, databases, configuration, file storage, push messaging, and the list goes on. 
- The services are hosted in the cloud, and scale with little to no effort on the part of the developer.
- For Documentation and Creation, Visit https://firebase.google.com/
- For Android, Create the package name, Download google-services.json and add that in the app folder.
- Finally add Firebase SDK in the build.gradle as per the documentation.
- For IOS, Need a MAC machine with XCode.
- Select the IOS App and Register our App using ios bundle ID.
- For Getting ios bundle ID -> Locate the ios path folder in our application and open Runner.xcodeproj using XCode.
- Now click Runner(top of the module) -> Check the name in Bundle identifier.
- Now copy or drag and put under the runner folder in our application.
- __Firebase Flutter Packages Setup__ Visit, https://pub.dev/packages/cloud_firestore/install
- For Flutter packages Visit, https://github.com/FirebaseExtended/flutterfire
- Now add the following packages(i.e.) firebase_core, firebase_auth and cloud_firestore
- Now add for IOS 3.25 
