part of 'pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset('assets/icons/ic_logo.png', scale: 18,),
                ),
                SizedBox(width: 16,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Halo, Hafiz Ibrahim', style: blackTextStyle.copyWith(fontSize: 14, fontWeight: bold),),
                    Text('Selamat Datang di MITA !', style: greyTextStyle.copyWith(fontSize: 14, fontWeight: bold),),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16,),
          infoCarousel(context),
          const SizedBox(height: 16,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Artikel Seputar ASD', style: blackTextStyle.copyWith(fontSize: 14, fontWeight: bold),),
                const SizedBox(height: 16,),
                infoContainer(context),
                infoContainer(context),
                infoContainer(context),
                infoContainer(context),
                infoContainer(context),
                infoContainer(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget infoCarousel(BuildContext context) {
    return Container(
      child: CarouselSlider(
          items: [1, 2, 3, 4, 5].map((i){
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: orangeColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Text("Text $i", style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 14),)),
            );
          }).toList(),
          options: CarouselOptions(
          height: 120,
            
      )),
    );
  }

  Widget infoContainer(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/icons/ic_logo.png', scale: 20,)
            ),
            SizedBox(width: 16,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Judul', style: blackTextStyle.copyWith(fontWeight: extraBold, fontSize: 14),),
                Text('Deskripsi', style: blackTextStyle.copyWith(fontWeight: medium, fontSize: 10),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
