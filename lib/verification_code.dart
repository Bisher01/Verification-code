import 'package:flutter/material.dart';

class VerificationCodeScreen extends StatefulWidget {
  const VerificationCodeScreen({Key? key}) : super(key: key);

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
  List<String> code = ['', '', '', ''];
  int selected = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        backgroundColor: Colors.white,
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: selected == 1
                                ? const Color.fromRGBO(255, 255, 255, 1)
                                : const Color.fromRGBO(122, 135, 230, 1),
                          ),
                          width: MediaQuery.of(context).size.width / 8,
                          height: MediaQuery.of(context).size.width / 8,
                          child: Center(
                            child: Text(
                              code[0],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color:
                                selected == 1 ? Colors.black : Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: selected == 2
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
                                selected == 2 ? Colors.black : Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: selected == 3
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
                                selected == 3 ? Colors.black : Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: selected == 4
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
                                selected == 4 ? Colors.black : Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: TextButton(
                        onPressed: () {

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
                        onPressed: () {},
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
                              InkWell(
                                onTap: () {
                                  if(selected<4) {
                                    setState(() {
                                    code[selected] = '1';
                                    selected = selected + 1;
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
                                  if(selected<4) {
                                    setState(() {
                                    code[selected] = '4';
                                    selected = selected + 1;
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
                                  if(selected<4) {
                                    setState(() {
                                    code[selected] = '7';
                                    selected = selected + 1;
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
                                  if(selected<4) {
                                    setState(() {
                                    code[selected] = '2';
                                    selected = selected + 1;
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
                                  if(selected<4) {
                                    setState(() {
                                    code[selected] = '5';
                                    selected = selected + 1;
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
                                  if(selected<4) {
                                    setState(() {
                                    code[selected] = '8';
                                    selected = selected + 1;
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
                                  if(selected<4) {
                                    setState(() {
                                    code[selected] = '0';
                                    selected = selected + 1;
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
                                  if(selected<4) {
                                    setState(() {
                                    code[selected] = '3';
                                    selected = selected + 1;
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
                                  if(selected<4) {
                                    setState(() {
                                    code[selected] = '6';
                                    selected = selected + 1;
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
                                  if(selected<4) {
                                    setState(() {
                                    code[selected] = '9';
                                    selected = selected + 1;
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
                              InkWell(
                                onTap: () {
                                  if (selected > 0) {
                                    setState(() {
                                      code[selected - 1] = '';
                                      selected = selected - 1;
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
