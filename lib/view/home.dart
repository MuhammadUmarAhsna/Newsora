import 'package:flutter/material.dart';
import 'package:newsora/controller/fetch_news.dart';
import 'package:newsora/view/widgets/newsContainer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FetchNews.fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Newsora", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: const Color(0xff01411C),
      ),
      body: PageView.builder(
        itemCount: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return NewsContainer(
            imgUrl:
                "https://images.unsplash.com/photo-1603515161074-3206aaeb03f2?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            newsHead: "Pakistan goes 5G: Zong introduces high-speed network",
            newsDes:
                "Zong has officially introduced commercial 5G services across more than 16 cities in Pakistan including Islamabad, Rawalpindi, Karachi, Lahore, Peshawar, and Quetta marked a transformative milestone in the country's digital journey. At a media briefing, Umar Siddique, Director of Marketing Segments at Zong, outlined the real-world impact of the rollout, noting that streaming speeds are projected to improve by three to five times compared to current standards. Building on Pakistan's first 5G trial conducted back in 2019, Zong has since demonstrated network speeds surpassing 1.4Gbps, cementing its reputation as the nation's foremost technology service enterprise.",
            newsUrl:
                "https://mettisglobal.news/Pakistan-goes-5G-Zong-introduces-highspeed-network-59380",
          );
        },
      ),
    );
  }
}
