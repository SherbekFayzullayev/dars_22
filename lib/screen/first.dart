import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                // execute bottom modal sheet function
                showModalBottomSheet(
                  backgroundColor: Colors.white,
                  context: context,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  builder: ((context) {
                    return Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 200, top: 40, bottom: 20),
                            child: Text(
                              'Delivery address',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ),
                          SizedBox(
                            width: 360,
                            child: Padding(
                              padding: const EdgeInsets.only(),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: '10th avenue, Lekki, Lagos State',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                  filled: true,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 30, bottom: 20, right: 170),
                            child: Text(
                              'Number we can call',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ),
                          SizedBox(
                            width: 360,
                            child: Padding(
                              padding: const EdgeInsets.only(),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: '09090605708',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                  filled: true,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Colors.white),
                                        minimumSize: MaterialStatePropertyAll(
                                          Size(150, 60),
                                        ),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            side: BorderSide(
                                                color: Color(0xFFFFA451),
                                                width: 2),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        )),
                                    onPressed: () {
                                      Navigator.pushNamed(context, '0');
                                    },
                                    child: Text(
                                      'Pay on delivery',
                                      style: TextStyle(
                                        color: Color(0xFFFFA451),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Colors.white),
                                        minimumSize: MaterialStatePropertyAll(
                                          Size(150, 60),
                                        ),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            side: BorderSide(
                                                color: Color(0xFFFFA451),
                                                width: 2),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        )),
                                    onPressed: () {
                                      Navigator.pushNamed(context, '0');
                                    },
                                    child: Text(
                                      'Pay with card',
                                      style: TextStyle(
                                        color: Color(0xFFFFA451),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      height: 400,
                    );
                  }),
                );
              },
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: Color(0xFFFFA451),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    'Checkout',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
