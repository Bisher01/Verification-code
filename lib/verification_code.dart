import 'package:flutter/material.dart';

class VerificationCodeScreen extends StatefulWidget {
  const VerificationCodeScreen({Key? key}) : super(key: key);

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {

  // initialize a list of strings to contain our code
  List<String> code = ['', '', '', ''];
  // this int value to let us keep track of the active cell
  int activeCell = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // set the background color of our page to white
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        title:  const Text(
          'Verification code',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            width: double.infinity,
            height: 140
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(90, 101, 230, 1),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(
                    40,
                  ),
                  topLeft: Radius.circular(
                    40,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'CONFIRMATION',
                      style:  TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                    ),
                    const Text(
                      'Please type the verification code sent to userEmail@gmail.com',
                      maxLines: 3,
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color:  Color.fromRGBO(171, 184, 250, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      // MainAxisAlignment.spaceEvenly to make the cells aligns perfectly
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            // circular shape to the container
                            shape: BoxShape.circle,
                            // here we will check if this is the active cell
                            // if it is the active cell its color will be white, else its will be light purple
                            color: activeCell == 1
                                ? const Color.fromRGBO(255, 255, 255, 1)
                                : const Color.fromRGBO(122, 135, 230, 1),
                          ),
                          width: MediaQuery.of(context).size.width / 8,
                          height: MediaQuery.of(context).size.width / 8,
                          child: Center(
                            child: Text(
                              // text widget to display the first digit of the code
                              code[0],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color:
                                activeCell == 1 ? Colors.black : Colors.white,
                              ),
                            ),
                          ),
                        ),
                        // we will repeat the same process for the next three containers but we will change the condition for each one
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: activeCell == 2
                                ? const Color.fromRGBO(255, 255, 255, 1)
                                : const Color.fromRGBO(122, 135, 230, 1),
                          ),
                          width:  MediaQuery.of(context).size.width / 8,
                          height:MediaQuery.of(context).size.width / 8,
                          child: Center(
                            child: Text(
                              code[1],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color:
                                activeCell == 2 ? Colors.black : Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: activeCell == 3
                                ? const Color.fromRGBO(255, 255, 255, 1)
                                : const Color.fromRGBO(122, 135, 230, 1),
                          ),
                          width: MediaQuery.of(context).size.width / 8,
                          height:  MediaQuery.of(context).size.width / 8,
                          child: Center(
                            child: Text(
                              code[2],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color:
                                activeCell == 3 ? Colors.black : Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: activeCell == 4
                                ? const Color.fromRGBO(255, 255, 255, 1)
                                : const Color.fromRGBO(122, 135, 230, 1),
                          ),
                          width: MediaQuery.of(context).size.width / 8,
                          height: MediaQuery.of(context).size.width / 8,
                          child: Center(
                            child: Text(
                              code[3],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color:
                                activeCell == 4 ? Colors.black : Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: TextButton(
                        onPressed: () {
                          // API call to resend the verification code from the server
                        },
                        child: const Text(
                          'Resend code',
                          style:  TextStyle(
                            color:  Color.fromRGBO(171, 184, 250, 1),
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // API call to verify the code that entered by the user
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(122, 135, 230, 1),),
                          shape: MaterialStateProperty.all<OutlinedBorder?>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                12,
                              ),
                            ),
                          ),
                          fixedSize: MaterialStateProperty.all(
                            Size(
                              MediaQuery.of(context).size.width - 60,
                              MediaQuery.of(context).size.height/16,
                            ),
                          ),
                        ),
                        child:  const Text(
                          'VERIFY',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize:20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height/3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              // each child of the column will be a button
                              InkWell(
                                onTap: () {
                                  // onPressed first we will check that we didn't pass four digits
                                  if(activeCell<4) {
                                    setState(() {
                                      // this is button number 1 so wwe will but '1' value in the current active cell, store that value in our list and then increase the active cell value by one
                                    code[activeCell] = '1';
                                    activeCell = activeCell + 1;
                                  });
                                  }
                                },
                                child: const Text(
                                  '1',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  if(activeCell<4) {
                                    setState(() {
                                    code[activeCell] = '4';
                                    activeCell = activeCell + 1;
                                  });
                                  }
                                },
                                child: const Text(
                                  '4',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  if(activeCell<4) {
                                    setState(() {
                                    code[activeCell] = '7';
                                    activeCell = activeCell + 1;
                                  });
                                  }
                                },
                                child: const Text(
                                  '7',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              const Text(
                                '',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () {
                                  if(activeCell<4) {
                                    setState(() {
                                    code[activeCell] = '2';
                                    activeCell = activeCell + 1;
                                  });
                                  }
                                },
                                child: const Text(
                                  '2',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  if(activeCell<4) {
                                    setState(() {
                                    code[activeCell] = '5';
                                    activeCell = activeCell + 1;
                                  });
                                  }
                                },
                                child: const Text(
                                  '5',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  if(activeCell<4) {
                                    setState(() {
                                    code[activeCell] = '8';
                                    activeCell = activeCell + 1;
                                  });
                                  }
                                },
                                child: const Text(
                                  '8',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  if(activeCell<4) {
                                    setState(() {
                                    code[activeCell] = '0';
                                    activeCell = activeCell + 1;
                                  });
                                  }
                                },
                                child: const Text(
                                  '0',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () {
                                  if(activeCell<4) {
                                    setState(() {
                                    code[activeCell] = '3';
                                    activeCell = activeCell + 1;
                                  });
                                  }
                                },
                                child: const Text(
                                  '3',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  if(activeCell<4) {
                                    setState(() {
                                    code[activeCell] = '6';
                                    activeCell = activeCell + 1;
                                  });
                                  }
                                },
                                child: const Text(
                                  '6',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  if(activeCell<4) {
                                    setState(() {
                                    code[activeCell] = '9';
                                    activeCell = activeCell + 1;
                                  });
                                  }
                                },
                                child: const Text(
                                  '9',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              // to delete a digit from the code we will do a reverse process
                              InkWell(
                                onTap: () {
                                  // first check that we have digits to delete it
                                  if (activeCell > 0) {
                                    setState(() {
                                      // put empty string in the current active cell and decrease the active cell value
                                      code[activeCell - 1] = '';
                                      activeCell = activeCell - 1;
                                    });
                                  }
                                },
                                child: const Icon(
                                  Icons.cancel_presentation_rounded,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
