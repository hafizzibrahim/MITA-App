part of 'pages.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Image.asset('assets/icons/ic_login.png', width: 250,),
          Align(
              child: Text('LOGIN', style: blackTextStyle.copyWith(fontSize: 25, fontWeight: semiBold),),
          ),
          SizedBox(height: 16,),
          CustomeTextField(labelText: 'Email',),
          SizedBox(height: 16,),
          CustomeTextField(labelText: 'Password', obscureText: true,),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: (){Navigator.pushNamed(context, '/register-page');},
                child: Text("Belum Punya Akun?", style: greyTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),)
            ),
          ),
          SizedBox(height: 16,),
          CustomeButton( height: 50, color: orangeColor, title: 'Login', onTap: (){Navigator.pushNamed(context, '');},)
        ],
      ),
    );
  }
}
