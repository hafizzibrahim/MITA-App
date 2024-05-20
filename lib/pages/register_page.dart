part of 'pages.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Image.asset('assets/icons/ic_login.png', width: 250,),
          Align(
            child: Text('REGISTER', style: blackTextStyle.copyWith(fontSize: 25, fontWeight: semiBold),),
          ),
          SizedBox(height: 16,),
          CustomeTextField(labelText: 'Email',),
          SizedBox(height: 16,),
          CustomeTextField(labelText: 'Password', obscureText: true,),
          SizedBox(height: 16,),
          CustomeButton( height: 50, color: orangeColor, title: 'Register', onTap: (){Navigator.pushNamed(context, '/login-page');},)
        ],
      ),
    );
  }
}
