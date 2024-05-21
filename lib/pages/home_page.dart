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
                  child: Image.asset(
                    'assets/icons/ic_logo.png',
                    scale: 18,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Halo, Hafiz Ibrahim',
                      style: blackTextStyle.copyWith(
                          fontSize: 14, fontWeight: bold),
                    ),
                    Text(
                      'Selamat Datang di MITA !',
                      style: greyTextStyle.copyWith(
                          fontSize: 14, fontWeight: bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          infoCarousel(context),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                containerTest(context),
                SizedBox(
                  height: 16,
                ),
                Align(
                  alignment: Alignment.center,
                    child: buttonTest()
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Artikel Seputar ASD',
                  style:
                      blackTextStyle.copyWith(fontSize: 14, fontWeight: bold),
                ),
                const SizedBox(
                  height: 16,
                ),
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
        items: [
          "assets/images/img_banner1.png",
          "assets/images/img_banner2.png",
          "assets/images/img_banner3.png",
        ].map((String imagePath) {
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          );
        }).toList(),
        options: CarouselOptions(
          height: 120,
        ),
      ),
    );
  }

  Widget infoContainer(BuildContext context) {
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
                child: Image.asset(
                  'assets/icons/ic_logo.png',
                  scale: 20,
                )),
            SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Judul',
                  style: blackTextStyle.copyWith(
                      fontWeight: extraBold, fontSize: 14),
                ),
                Text(
                  'Deskripsi',
                  style:
                      blackTextStyle.copyWith(fontWeight: medium, fontSize: 10),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget containerTest(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: orangeColor, borderRadius: BorderRadius.circular(10)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: whiteColor, borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Hasil Test',
                  style: blackTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: 14),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  '-',
                  style:
                      blackTextStyle.copyWith(fontSize: 24, fontWeight: bold),
                )
              ],
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Terapi A',
                style:
                    whiteTextStyle.copyWith(fontWeight: semiBold, fontSize: 14),
              ),
              SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Hari ke',
                    style: whiteTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 14),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '1',
                    style: whiteTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 32),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '/ 30 day',
                    style: whiteTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 14),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buttonTest() {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: orangeColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        'Mulai Test',
        style: whiteTextStyle.copyWith(fontWeight: bold, fontSize: 14),
      ),
    );
  }
}
