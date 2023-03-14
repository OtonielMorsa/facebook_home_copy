import 'package:flutter/material.dart';

class FacebookHome extends StatefulWidget {
  const FacebookHome({super.key});

  @override
  State<FacebookHome> createState() => _FacebookHomeState();
}

class _FacebookHomeState extends State<FacebookHome> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 15, 15, 15),
      body: SafeArea(
          child: Column(
        children: [
          facebookAppBar(mq),
          Expanded(
            flex: 1,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                publicar(mq),
                SizedBox(height: 6),
                historias(mq),
                SizedBox(height: 6),
                publicacion(
                  mq: mq,
                  img:"https://pbs.twimg.com/media/Dcn3wI1WsAEqU2R.jpg",
                  perfilName: "Sr, Goku",
                  perfilImg: "https://media.revistagq.com/photos/5f10224264f52a842c7f9e8b/master/pass/apps.39852.14455250034361967.824623c3-91b6-402f-9a68-c66bfac9bc20.jpg",
                ),
                SizedBox(height: 6),
                publicacion(
                  mq: mq,
                  img:"https://i.pinimg.com/564x/5f/66/36/5f6636336f68d37978d79059e18c93b4.jpg",
                  perfilName: "Memes Programación",
                  perfilImg: "https://www.grupodigital.eu/blog/wp-content/uploads/2019/11/gamer-decorative-illustration-flat-design_23-2148250394-e1574340136197.jpg",
                ),
                 SizedBox(height: 6),
                publicacion(
                  mq: mq,
                  img:"https://pbs.twimg.com/media/Dcn3wI1WsAEqU2R.jpg",
                  perfilName: "Sr, Goku",
                  perfilImg: "https://media.revistagq.com/photos/5f10224264f52a842c7f9e8b/master/pass/apps.39852.14455250034361967.824623c3-91b6-402f-9a68-c66bfac9bc20.jpg",
                ),
                SizedBox(height: 6),
                publicacion(
                  mq: mq,
                  img:"https://i.pinimg.com/564x/5f/66/36/5f6636336f68d37978d79059e18c93b4.jpg",
                  perfilName: "Memes Programación",
                  perfilImg: "https://www.grupodigital.eu/blog/wp-content/uploads/2019/11/gamer-decorative-illustration-flat-design_23-2148250394-e1574340136197.jpg",
                ),
              ],
            ),
          )
        ],
      )),
    );
  }

  facebookAppBar(mq) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: mq.width * 0.02),
      width: mq.width,
      height: mq.height * 0.15,
      color: Colors.grey[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "facebook",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey[700],
                    radius: 15,
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 6),
                  CircleAvatar(
                    backgroundColor: Colors.grey[700],
                    radius: 15,
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 6),
                  CircleAvatar(
                    backgroundColor: Colors.grey[700],
                    radius: 15,
                    child: const Icon(Icons.message_rounded,
                        color: Colors.white, size: 18),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.home, color: Colors.blue),
              Icon(Icons.people_outline, color: Colors.white),
              Icon(Icons.queue_play_next_outlined, color: Colors.white),
              Icon(Icons.storefront_outlined, color: Colors.white),
              Icon(Icons.notifications_none_outlined, color: Colors.white),
              Icon(Icons.menu, color: Colors.white),
            ],
          ),
          Container(
            color: Colors.white,
            height: 1,
            width: mq.width,
          )
        ],
      ),
    );
  }

  publicar(mq) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: mq.width * 0.02),
      width: mq.width,
      color: Colors.grey[900],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 33,
            width: 33,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: NetworkImage(
                  "https://scontent.fmxl1-1.fna.fbcdn.net/v/t39.30808-6/332832907_1173590240009479_3751539698867371635_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=gPMuLHVziykAX9Kk5Bk&_nc_ht=scontent.fmxl1-1.fna&oh=00_AfCl1ek5oaSDE_IZnUltvYK0WkW_gSmqTXqkufEXdrAq5w&oe=6413F6FC",
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Container(
              height: 28,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.grey[900],
                border: Border.all(color: Colors.white, width: .5),
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextField(
                obscureText: true,
                style: TextStyle(color: Colors.white, fontSize: 13),
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "      ¿Qué estás pensando?"),
              ),
            ),
          ),
          SizedBox(width: 8),
          const Icon(Icons.photo_library_outlined, color: Colors.green),
        ],
      ),
    );
  }

  historias(mq) {
    return Container(
        color: Colors.grey[900],
        height: 150,
        width: mq.width,
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(8),
          children: [
            unaHistoria(),
            unaHistoria(),
            unaHistoria(),
            unaHistoria(),
            unaHistoria(),
            unaHistoria(),
            unaHistoria(),
            unaHistoria(),
          ],
        ));
  }

  unaHistoria() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      height: 150,
      width: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
              "https://i.pinimg.com/564x/e4/64/ff/e464ff06f242c59cd30d0262a87fd87d.jpg",
            ),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(6),
            height: 33,
            width: 33,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: NetworkImage(
                  "https://scontent.fmxl1-1.fna.fbcdn.net/v/t39.30808-6/332832907_1173590240009479_3751539698867371635_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=gPMuLHVziykAX9Kk5Bk&_nc_ht=scontent.fmxl1-1.fna&oh=00_AfCl1ek5oaSDE_IZnUltvYK0WkW_gSmqTXqkufEXdrAq5w&oe=6413F6FC",
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(6),
            child: Text(
              "Otro Morsa",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
            ),
          ),
        ],
      ),
    );
  }

  publicacion({mq, perfilImg, perfilName, img}) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      width: mq.width,
      color: Colors.grey[900],
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 33,
                width: 33,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage(
                      perfilImg,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    perfilName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                  ),
                  Text(
                    "Sugerencias para ti - sáb. a las 3:16 p.m.",
                    style: TextStyle(fontSize: 8),
                  ),
                ],
              ),
              Icon(Icons.more_horiz),
              Icon(Icons.close_rounded),
            ],
          ),
          SizedBox(height: 4),
          Image.network(
            img,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 18,
                width: 18,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  image: DecorationImage(
                    image: NetworkImage(
                      img,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text(
                "15,270   600 comentarios - 2,643 veces compartido",
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
          SizedBox(height: 5),
          Container(
            color: Colors.white,
            height: .3,
            width: mq.width,
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.waving_hand_outlined),
                  Text("Me gusta")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.mode_comment_outlined),
                  Text("Comentar")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.switch_access_shortcut_outlined),
                  Text("Compartir")
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
