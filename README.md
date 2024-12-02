# RestartApp: Overview

**RestartApp** is a visually engaging onboarding application designed using **SwiftUI** for iOS. The app features a smooth, interactive user interface with animations, haptic feedback, and sound effects that enhance the user experience. It introduces a simple yet elegant onboarding process with drag gestures, interactive elements, and a unique, dynamic design approach.

### Key Features:
- **Onboarding Process**: 
  - The app starts with an onboarding view that introduces the app's core message: "Share." 
  - The user can interact with a draggable image, which dynamically changes the text to "Give" during the interaction.
  - The onboarding experience culminates in a "Get Started" button, which, when dragged to the end, dismisses the onboarding screen and proceeds to the main app interface.
  
- **Home Screen**:
  - After the onboarding is completed, the user is greeted with the home screen, which features a dynamic character animation and motivational text.
  - There is also a button to restart the onboarding process.

- **Haptic Feedback**: 
  - Throughout the app, haptic feedback is used to provide subtle and meaningful interactions, such as when the onboarding button is completed or when the "Restart" button is pressed.

- **Sound Effects**: 
  - Custom sound effects (such as "chimeup" and "success") are played to add an auditory layer to user actions.

- **Animation**: 
  - **SwiftUI** animations are utilized to create a smooth transition and interaction experience. Elements like the image and text change positions and opacity, giving a fluid and responsive feel to the app.

- **Custom Views**: 
  - The app makes use of custom components, such as `CircleBackgroundView`, to add aesthetic enhancements, including blurred background effects and circular stroked patterns.

### Technologies Used:
- **SwiftUI**: The primary framework for building the user interface, enabling a declarative approach to UI design with smooth animations and transitions.
- **AppStorage**: Used to store and retrieve the onboarding state, ensuring that the onboarding experience is shown only once.
- **AVFoundation**: For playing custom sound effects, enhancing the app's feedback loop.
- **UINotificationFeedbackGenerator**: Provides haptic feedback for user interactions, contributing to the tactile experience.
- **DragGesture**: Used to track user interaction with the draggable onboarding elements, creating a dynamic and interactive flow.

### Example Code Breakdown:
- **OnboardingView**:
  - Displays an initial onboarding screen with an animated character.
  - Uses gestures to change text and image position dynamically.
  - A button at the bottom enables users to finish onboarding and move to the main screen.

- **HomeView**:
  - Features a looping animation for a character that moves vertically.
  - Displays a motivational quote with a button that triggers a restart of the onboarding process.

- **CircleBackgroundView**:
  - Creates an aesthetically pleasing background using two animated circles with opacity and blur effects.

- **Sound and Haptic Feedback**:
  - Plays sounds on specific user actions (e.g., completing the onboarding) and provides feedback with haptic notifications, enhancing the interactive feel of the app.

### Conclusion:
**RestartApp** is a highly interactive, user-friendly app developed with **SwiftUI** that focuses on user engagement through animations, gestures, sound, and haptic feedback. It provides a modern and immersive onboarding experience that emphasizes interaction, visual appeal, and accessibility, with seamless transitions between screens. The app leverages the latest iOS technologies, ensuring a smooth and responsive experience for users.




### Screenshots
<img src="https://github.com/user-attachments/assets/d2f2e069-45bc-45fd-81a8-ca206f06212e" alt="Screenshot 2024-12-02 at 3 00 44 AM" width="200" height="auto">
<img src="https://github.com/user-attachments/assets/a7de7d5c-5df5-446b-96fd-4b33e4f90704" alt="Screenshot 2024-12-02 at 3 01 56 AM" width="200" height="auto">
<img src="https://github.com/user-attachments/assets/77054333-1b68-4618-a6e2-7816e79c8ad3" alt="Screenshot 2024-12-02 at 3 01 33 AM" width="200" height="auto">
<img src="https://github.com/user-attachments/assets/f02955f2-02c9-440c-b7e2-5ea5c5b4f55e" alt="Screenshot 2024-12-02 at 3 01 26 AM" width="200" height="auto">
<img src="https://github.com/user-attachments/assets/0dbe740d-fd85-42d1-8b52-841306564a64" alt="Screenshot 2024-12-02 at 3 01 10 AM" width="200" height="auto">
