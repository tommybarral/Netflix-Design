import 'package:flutter/material.dart';
import './content_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  
  int _selectedIndex = 0;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> _signIn() async {
    // Navigator.of(context).push(MaterialPageRoute(builder: (context) {});
    Navigator.push(context, MaterialPageRoute(builder: (context) => const ContentScreen())
    );
  }

  Widget _renderSignIn() {
    return Container(
      padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.network('https://fr.web.img4.acsta.net/newsv7/20/01/30/10/19/1468726.jpg', width: 200,),
          ),
          const SizedBox(height: 60,),
          TextField(
            controller: _emailController,
            autofocus: false,
            autocorrect: false,
            enableSuggestions: false,
            decoration: const InputDecoration(
              filled: true,
              fillColor: Colors.grey,
              labelText: 'Email',
              floatingLabelStyle: TextStyle(
                color: Colors.black,
              ),
              focusedBorder: InputBorder.none,
              border: InputBorder.none,
            ),
          ),
          Container(
            height: 0.1,
            color: Colors.black,
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: _passwordController,
            obscureText: true,
            autofocus: false,
            autocorrect: false,
            enableSuggestions: false,
            decoration: const InputDecoration(
              filled: true,
              fillColor: Colors.grey,
              labelText: 'Password',
              floatingLabelStyle: TextStyle(
                color: Colors.black,
              ),
              focusedBorder: InputBorder.none,
              border: InputBorder.none,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                side: const BorderSide(width: 1, color: Colors.grey),
              ),
              child: const Text('Sign up', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),),
              onPressed: () async {
                final email = _emailController.text;
                final password = _passwordController.text;

                if (email.isEmpty || password.isEmpty) {
                  showDialog(context: context, builder: (_) => AlertDialog(
                    title: const Text('Error'),
                    content: const Text('Enter a valid email & password'),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.of(context).pop();
                      }, child: const Text('Ok'),),
                    ],
                  ));
                  //return;
                }
                // IGNORE THE VERIFICATION SIGNIN / SIGNUP FOR TESTING REASONS.
                _signIn();
              },
            ),
          ),
          const SizedBox(height: 40),
          MaterialButton(
              onPressed: () {
                setState(() {
                  _selectedIndex = 1;
                });
              },
              child: const Text('Don\'t have an account yet ? Sign up', style: TextStyle(color: Colors.white),),),
          const SizedBox(height: 5,),
          MaterialButton(
            onPressed: () {},
            child: const Text('Forgot your password ? click here', style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
    );
  }

  Widget _renderSignUp() {
    return Container(
      padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.network('https://fr.web.img4.acsta.net/newsv7/20/01/30/10/19/1468726.jpg', width: 200,),
          ),
          const SizedBox(height: 60,),
          TextField(
            controller: _nameController,
            autofocus: false,
            autocorrect: false,
            enableSuggestions: false,
            decoration: const InputDecoration(
              filled: true,
              fillColor: Colors.grey,
              labelText: 'Name',
              floatingLabelStyle: TextStyle(
                color: Colors.black,
              ),
              focusedBorder: InputBorder.none,
              border: InputBorder.none,
            ),
          ),
          Container(
            height: 0.1,
            color: Colors.black,
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: _emailController,
            autofocus: false,
            autocorrect: false,
            enableSuggestions: false,
            decoration: const InputDecoration(
              filled: true,
              fillColor: Colors.grey,
              labelText: 'Email',
              floatingLabelStyle: TextStyle(
                color: Colors.black,
              ),
              focusedBorder: InputBorder.none,
              border: InputBorder.none,
            ),
          ),
          Container(
            height: 0.1,
            color: Colors.black,
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: _passwordController,
            obscureText: true,
            autofocus: false,
            autocorrect: false,
            enableSuggestions: false,
            decoration: const InputDecoration(
              filled: true,
              fillColor: Colors.grey,
              labelText: 'Password',
              floatingLabelStyle: TextStyle(
                color: Colors.black,
              ),
              focusedBorder: InputBorder.none,
              border: InputBorder.none,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                side: const BorderSide(width: 1, color: Colors.grey),
              ),
              child: const Text('Sign in', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),),
              onPressed: () async {
                final email = _emailController.text;
                final password = _passwordController.text;
                final name = _nameController.text;

                if (email.isEmpty || password.isEmpty || name.isEmpty) {
                  showDialog(context: context, builder: (_) => AlertDialog(
                    title: const Text('Error'),
                    content: const Text('Enter a valid email & password'),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.of(context).pop();
                      }, child: const Text('Ok'),),
                    ],
                  ));
                  return;
                }
              },
            ),
          ),
          const SizedBox(height: 40),
          MaterialButton(
            onPressed: () {
              setState(() {
                _selectedIndex = 0;
              });
            },
            child: const Text(
              'Already have an account ? Sign in',
              style: TextStyle(
                  color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {

    //final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          _renderSignIn(),
          _renderSignUp(),
        ],
      ),
    );
  }
}
