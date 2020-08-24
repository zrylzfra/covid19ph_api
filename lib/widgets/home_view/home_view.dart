import 'package:flutter/material.dart';
import 'package:covid19ph_api/widgets/data/data.dart';
import 'package:covid19ph_api/widgets/services/services.dart';

class HomeView extends StatefulWidget {
  HomeView() : super();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  //
  List<Cases> _cases;
  // ignore: unused_field
  bool _loading;

  @override
  void initState() {
    super.initState();
    _loading = true;
    CasesCovid19PH.getCases().then((cases) {
      setState(() {
        _cases = cases;
        _loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Covid-19 PH'),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: _cases == null ? 0 : _cases.length,
          itemBuilder: (context, index) {
            Cases cases = _cases[index];
            return Container(
              padding: EdgeInsets.all(5.0),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(13.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Country: ",
                              style: TextStyle(
                                  fontSize: 25.0, color: Colors.blue[800]),
                            ),
                            Text(
                              cases.countryRegion,
                              style: TextStyle(
                                  fontSize: 23.0, color: Colors.black87),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(13.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Confirmed Cases: ",
                              style: TextStyle(
                                  fontSize: 25.0, color: Colors.blue[800]),
                            ),
                            Text(
                              cases.confirmed.toString(),
                              style: TextStyle(
                                  fontSize: 23.0, color: Colors.black87),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(13.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Recovered Patients: ",
                              style: TextStyle(
                                  fontSize: 25.0, color: Colors.blue[800]),
                            ),
                            Text(
                              cases.recovered.toString(),
                              style: TextStyle(
                                  fontSize: 23.0, color: Colors.black87),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(13.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Active Cases: ",
                              style: TextStyle(
                                  fontSize: 25.0, color: Colors.blue[800]),
                            ),
                            Text(
                              cases.active.toString(),
                              style: TextStyle(
                                  fontSize: 23.0, color: Colors.black87),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(13.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Deaths: ",
                              style: TextStyle(
                                  fontSize: 25.0, color: Colors.blue[800]),
                            ),
                            Text(
                              cases.deaths.toString(),
                              style: TextStyle(
                                  fontSize: 25.0, color: Colors.black87),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
