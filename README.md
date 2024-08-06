# BuzzUp, A flutter bookiing application for small businesses

BuzzUp is a versatile booking application specifically designed for small businesses, including barbers, aestheticians, and other personal service providers. Our platform streamlines the appointment scheduling process, enhancing customer experience and optimizing business operations.

More details coming soon...

# Application iterations

### Initial application design
https://www.figma.com/design/bUDCu3gm4ui9ljhjr7RzhL/Personal_Project?node-id=0-1&t=MRkOand45gr6MPgp-1

### ------------------------- July 15, 2024 -------------------------
<img src="https://github.com/user-attachments/assets/7da56eb0-a266-487f-9e96-761dd4eecc64" width="200"> <img src="https://github.com/user-attachments/assets/40077978-1d9c-4969-80f7-bc8dd05abf04" width="200"> <img src="https://github.com/user-attachments/assets/c85b8a67-f332-4338-9dc0-9b8eb1f1552d" width="200">

The first iteration marks the completion of the initial design phase for the booking application.

The initial plan includes three distinct pages for Favorites, Booked, and Pending bookings.

### ------------------------- July 17, 2024 -------------------------
<img src="https://github.com/user-attachments/assets/e6794a6a-49d4-45e8-920d-ccdd275f9fce" width="200">

The second iteration focuses on enhancing the Favorites page and incorporating an application bar and a navigation bar.

### ------------------------- July 19, 2024 -------------------------
<img src="https://github.com/user-attachments/assets/7dbd6f8d-b773-461d-a8fa-3c8cf442afcf" width="200">

This iteration focuses on redesigning the application to provide more information on the cards introduced in the previous iteration.

Changes made:
<ul>
  <li>
    Favorites page renamed to Home
  </li>
  <li>
    Booked page renamed to Appointments
  </li>
  <li>
    Pending renamed to Updates
  </li>
  <li>
    Cards now provide more information from last iteration
  </li>
  <li>
    Navigation bar changed from curved_navigation_bar to google_nav_bar
  </li>
  <li>
    Search bar addition in the home page
  </li>
</ul>

Redundant code has been removed from the Dart files for better efficiency. Imports are now consolidated into a separate file named 'imports.dart' to prevent the accumulation of import lines over time.

### ------------------------- July 20, 2024 -------------------------
<img src="https://github.com/user-attachments/assets/4ff850cb-39ec-40e3-acb4-c3f890f1885e" width="200"> <img src="https://github.com/user-attachments/assets/f8931a4a-56e1-4fc2-ae39-9905e5d50b7f" width="200"> <img src="https://github.com/user-attachments/assets/4c2b23e6-6c56-4ff5-8e32-e60448f51ce8" width="200"> 

The bottom navigation bar is now functional, allowing changes to the main content. Minor fixes include ensuring the app scrolls back to the top and displays all content correctly. Code cleanup has been performed, including the introduction of global variables for primary (texts, icons), secondary (app bar, navigation bar), and tertiary (background color) colors. These changes will facilitate easy implementation of dark mode and light mode in future iterations.

I aimed to reduce the opening page to fewer than 100 lines of code. Now, I need to determine how to move the bottom navigation bar to a separate file.

Goals for the next iteration:
<ul>
  <li>
    Come up a ui/ux design for the update page
  </li>
  <li>
    Develop the update page
  </li>
  <li>
    Develop and redesign the profile page
  </li>
  <li>
    Come up a design idea of the settings page. This will include a switch to switch between light mode and dark mode
  </li>
  <li>
    Develop search page results UI
  </li>
</ul>

### ------------------------- August 5, 2024 -------------------------
## Light mode screens
<img src="https://github.com/user-attachments/assets/e49e279d-c02b-49f2-8005-8e3826e22354" width="200">
<img src="https://github.com/user-attachments/assets/dc341dd6-0f91-4af6-80c9-d134ab746a23" width="200">
<img src="https://github.com/user-attachments/assets/435a6e62-1b67-473f-8567-8beb0488cb59" width="200">
<img src="https://github.com/user-attachments/assets/65de0f05-2ac8-4b1e-b97c-af708c71f167" width="200">

## Dark mode Screens
<img src="https://github.com/user-attachments/assets/a118a78f-e158-4cee-aade-fd75c88f2509" width="200">
<img src="https://github.com/user-attachments/assets/a3b9a98f-36f5-4488-b8a9-1a5f65c4e3d3" width="200">
<img src="https://github.com/user-attachments/assets/36775b87-dcd2-4c8b-9b24-13dbe46482dc" width="200">
<img src="https://github.com/user-attachments/assets/9b841a7c-b0ea-47ce-9a3f-1b4fe7d4f2bc" width="200">

## Changing avatar and switching application theme
[![Video Placeholder](https://github.com/user-attachments/assets/a118a78f-e158-4cee-aade-fd75c88f2509)](https://github.com/user-attachments/assets/ab82f9e1-3a2a-41bd-b582-6f328d09fed5)

Changes/additions made:
<ul>
  <li><strong>Navigation Redesign:</strong> Enhanced user experience by redesigning the navigation system. Users can now easily access desired pages through buttons located at the top right of the screen.</li>
  <li><strong>Updates Page:</strong> Designed and developed a comprehensive updates page to keep users informed of the latest changes.</li>
  <li><strong>Profile Page:</strong> Created and implemented a new profile page, providing users with a personalized space.</li>
  <li><strong>Avatar and Display Name Customization:</strong> Introduced a feature allowing users to change their avatar and display name, ensuring user anonymity.</li>
  <li><strong>Theme Customization:</strong> Added a button enabling users to switch between dark and light mode themes.</li>
</ul>