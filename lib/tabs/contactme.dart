import 'package:flutter/material.dart';
import 'package:swaraj/config/assets.dart';
import 'package:swaraj/config/constants.dart';
import 'package:flutter/material.dart';
import 'package:swaraj/widgets/responsive_widget.dart';
import 'dart:html' as html;

import '../widgets/theme_inherited_widget.dart';

class ContactmeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: AnimatedPadding(
            duration: Duration(seconds: 1),
                padding: EdgeInsets.all(ResponsiveWidget.isLargeScreen(context)
                    ? MediaQuery.of(context).size.height * 0.02
                    : MediaQuery.of(context).size.height * 0.06),
                      child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ResponsiveWidget(
                    largeScreen: CircleAvatar(
                      radius: 150,
                      backgroundImage: Image.asset(
                        Assets.avatar,
                        fit: BoxFit.contain,
                      ).image,
                    ),
                    smallScreen: CircleAvatar(
                      radius: 120,
                      backgroundImage: Image.asset(
                        Assets.avatar,
                        fit: BoxFit.contain,
                      ).image,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ResponsiveWidget(
                               largeScreen: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(4, 8),
                            blurRadius: 10,
                          )
                        ],
                        color: ThemeSwitcher.of(context).isDarkModeOn
                            ? Colors.black
                            : Colors.white60,
                        borderRadius: BorderRadius.circular(30)),
                    child: Text(
                      'Lets Connect',
                      style: Theme.of(context).textTheme.caption,
                      textScaleFactor: 3,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  smallScreen: Container(
                    height: 70,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color:  ThemeSwitcher.of(context).isDarkModeOn
                            ? Colors.black
                            : Colors.grey,
                            offset: Offset(4, 8),
                            blurRadius: 10,
                          )
                        ],
                        color: ThemeSwitcher.of(context).isDarkModeOn
                            ? Colors.black
                            : Colors.white60,
                        borderRadius: BorderRadius.circular(30)),
                    child: Text(
                      'Lets Connect',
                      style: Theme.of(context).textTheme.caption,
                      
                      textScaleFactor: 2.5,
                      textAlign: TextAlign.center,
                    ),
                  ), 
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    FlatButton.icon(
                      icon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(Assets.github)),
                      label: Text('Github'),
                      onPressed: () => html.window
                          .open(Constants.PROFILE_GITHUB, 'adityadroid'),
                    ),
                    FlatButton.icon(
                      icon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(Assets.twitter)),
                      label: Text('Twitter'),
                      onPressed: () =>
                          html.window.open(Constants.PROFILE_TWITTER, 'swaraj'),
                    ),
                    FlatButton.icon(
                      icon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(
                              ThemeSwitcher.of(context).isDarkModeOn
                                  ? Assets.medium
                                  : Assets.medium_light)),
                      label: Text('Medium'),
                      onPressed: () =>
                          html.window.open(Constants.PROFILE_MEDIUM, 'swaraj'),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    FlatButton.icon(
                      icon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(Assets.instagram)),
                      label: Text('Instagram'),
                      onPressed: () =>
                          html.window.open(Constants.PROFILE_INSTAGRAM, 'swaraj'),
                    ),
                    FlatButton.icon(
                      icon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(Assets.facebook)),
                      label: Text('Facebook'),
                      onPressed: () =>
                          html.window.open(Constants.PROFILE_FACEBOOK, 'swaraj'),
                    ),
                    FlatButton.icon(
                      icon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(Assets.linkedin)),
                      label: Text('Linkedin'),
                      onPressed: () =>
                          html.window.open(Constants.PROFILE_LINKEDIN, 'swaraj'),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
