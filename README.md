# **`Custom bottom Navigation bar`** 🌍


## Project Structure
```dart 
├── lib
│   ├── cubit
│   │   ├── navbar_cubit.dart
│   │   └── navbar_state.dart
│   ├── views
│   │    └── bottom_nav
│   │		 ├── bottom_nav.dart
│   │		 ├── custom_bottom_nav_bar_dash.dart
│	│		 └── custom_bottom_nav_bar_dot.dart
│   └── main.dart
├── pubspec.lock
├── pubspec.yaml
```

## Usage

- in bottom_nav.dart
```dart
bottomNavigationBar: CustomBottomNavBarDot(
  onChange: (index) {
	cubit.changeBottomNavBar(index);
	//or BlocProvider.of<NavbarCubit>(context).changeBottomNavBar(index);
  }, // To change items
  
  defaultSelectedIndex: 0, //The default selected item from the navigation bar
  backgroundColor: Colors.grey.shade100, //Background color of navigation bar
  radius: 25, //Radius navigation bar 
  showLabel: true, //To hide the label
  textList: [
	'Home',
	'Camera',
	'Messenger',
	'User',
  ],//Label list for each item in the navigation bar
  iconList: [
	Icons.home_outlined,
	Icons.camera,
	Icons.mail_outline,
	Icons.person_outline,
  ],//Icon list for each item in the navigation bar
),
```


## Snapshots

- CustomBottomNavBarDash
![](/dash gif.gif)

- CustomBottomNavBarDot
![](/dot gif.gif)
