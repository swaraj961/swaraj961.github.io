import 'package:swaraj/config/assets.dart';
import 'package:swaraj/config/constants.dart';
import 'package:flutter/material.dart';
import 'package:swaraj/widgets/responsive_widget.dart';
import 'dart:html' as html;
import 'package:swaraj/widgets/loadurl.dart';
import 'package:url_launcher/url_launcher.dart';


import '../widgets/theme_inherited_widget.dart';

class AboutTab extends StatelessWidget {
  
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
                            color: ThemeSwitcher.of(context).isDarkModeOn
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
                      'Swaraj Routray',
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
                      'Swaraj Routray',
                      style: Theme.of(context).textTheme.caption,
                      textScaleFactor: 2.5,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
               ResponsiveWidget(
                 largeScreen:
                               Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                    
                     
                     mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Flutter Developer •',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            decoration: TextDecoration.underline,
                          ),
                          textScaleFactor: 1.5,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Cisco CCNA •',
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              decoration: TextDecoration.underline),
                          textScaleFactor: 1.5,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'UI/UX Designer',
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              decoration: TextDecoration.underline),
                          textScaleFactor: 1.5,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ), 
                  smallScreen:  Row(
                    
                      
                      children: <Widget>[
                        Text(
                          'Flutter Developer •',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade600,
                            decoration: TextDecoration.underline,
                          ),
                          textScaleFactor: 1.5,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Cisco CCNA •',
                          style: TextStyle(
                            fontSize: 15,
                              color: Colors.grey.shade600,
                              decoration: TextDecoration.underline),
                          textScaleFactor: 1.5,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'UI/UX',
                          style: TextStyle(
                            fontSize: 15,
                              color: Colors.grey.shade600,
                              decoration: TextDecoration.underline),
                          textScaleFactor: 1.5,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  
                ),
                SizedBox(
                  height: 20,
                ),
                ResponsiveWidget(
                  largeScreen: Column(
                    children: <Widget>[
                      Text(
                        "Hi there! ",
                        textScaleFactor: 2,
                        style: TextStyle(
                            color: Colors.deepOrangeAccent,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        Constants.myintroLarge,
                        softWrap: true,
                        textScaleFactor: 1.5,
                         textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                  smallScreen: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Hi there! ",
                        textScaleFactor: 2,
                        style: TextStyle(
                            color: Colors.deepOrangeAccent,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          
                          Constants.myintroSmall,
                          softWrap: true,
                          textScaleFactor: 1.5,
                          style: TextStyle(color: Colors.grey.shade600),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                 Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          RaisedButton.icon(
            shape: StadiumBorder(),
            icon: Icon(Icons.description),
            label: Text("Resume"),
            color: Colors.deepOrangeAccent,
            onPressed: () {
              html.window.open(
                  "https://drive.google.com/file/d/1RAOc1wyCjMFUq4C9KuEquFxVMYPz-DZw/",
                  "");
            },
            padding: EdgeInsets.all(10),
          ),
          SizedBox(
            width: 20,
          ),
           RaisedButton.icon(
             icon: Icon(Icons.mail),
            shape: StadiumBorder(),
            label:Text("Mail Me"),
            color: Colors.deepOrangeAccent,
            onPressed: () {
              loadurlgmail();
             
            },
            padding: EdgeInsets.all(10),
          ),
        ],
      ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}

