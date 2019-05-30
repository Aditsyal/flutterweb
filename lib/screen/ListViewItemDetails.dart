import 'package:flutter_web/material.dart';
import 'package:flutterweb/model/Item.dart';
import 'package:flutterweb/screen/GetRatings.dart';


class ListItemDetails extends StatelessWidget {
  final Item item;
  double height;
  double width;

  ListItemDetails(this.item);
 
  @override
  Widget build(BuildContext context) {
    
     Size media = MediaQuery.of(context).size;
     height = MediaQuery.of(context).size.height;
     width = MediaQuery.of(context).size.width;


    return Scaffold(
      primary: true,
      appBar: media.width>600? null: AppBar(
        title: Text(item.name),
      ),
      backgroundColor: Color(0xFF761322),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderBanner(this.item,height,width, media),
          GetTags(media,height,width),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 30.0),
            child: Text(
              item.desc,
              style: TextStyle(
                fontSize: media.width > 600? 16:13.0,
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
                      child: RaisedButton(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      onPressed: () {
      },
      textColor: Colors.black,
      color: Colors.transparent,
      padding: EdgeInsets.all(0.0),
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height / 15,
        width: MediaQuery.of(context).size.width / 4,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            color: Colors.white,
        ),
        padding: const EdgeInsets.all(10.0),
        child: Text('Watch Movies', textAlign: TextAlign.center, style: TextStyle(fontSize: media.width > 600? 20: 12),),
      ),
    ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
            child: Text(
              'Trailers',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
          ),
          GetTrailers(this.item,media),
        ],
      ),
      )
    );
  }
}

class GetTags extends StatelessWidget {
  Size media;
  double height, width;
  GetTags(this.media, this.height,this.width);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 10.0),
      height: height/20,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          InkWell(
            onTap: () => {},
            child: Container(
              width: 100.0,
              height: 35.0,
              margin: EdgeInsets.only(
                left: 5.0,
                right: 5.0,
              ),
              decoration: BoxDecoration(
                color: Color(0xFF761322),
                border: Border.all(color: Colors.white, width: 1.0),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Center(
                child: Text(
                  'Action',
                  style: TextStyle(fontSize: media.width > 600? 18.0: 12, color: Colors.white),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => {},
            child: Container(
              width: 100.0,
              height: 35.0,
              margin: EdgeInsets.only(
                left: 5.0,
                right: 5.0,
              ),
              decoration: BoxDecoration(
                color: Color(0xFF761322),
                border: Border.all(color: Colors.white, width: 1.0),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Center(
                child: Text(
                  'Adventure',
                  style: TextStyle(fontSize:  media.width > 600? 18.0: 12, color: Colors.white),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => {},
            child: Container(
              width: 100.0,
              height: 35.0,
              margin: EdgeInsets.only(
                left: 5.0,
                right: 5.0,
              ),
              decoration: BoxDecoration(
                color: Color(0xFF761322),
                border: Border.all(color: Colors.white, width: 1.0),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Center(
                child: Text(
                  'Fantasy',
                  style: TextStyle(fontSize: media.width > 600? 18.0: 12, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SetTagsItem extends StatelessWidget {
  final String tag;

  SetTagsItem(this.tag);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {},
      child: Container(
        width: 100.0,
        height: 35.0,
        margin: EdgeInsets.only(
          left: 5.0,
          right: 5.0,
        ),
        decoration: BoxDecoration(
          color: Color(0xFF761322),
          border: Border.all(color: Colors.white, width: 1.0),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Center(
          child: Text(
            tag,
            style: TextStyle(fontSize: 16.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class HeaderBanner extends StatelessWidget {
  final Item item;
  double height, width;
  Size media;

  HeaderBanner(this.item,this.height,this.width, this.media);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0.0,
      child: Container(
        height: 380.0,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            HeaderImage(this.item.bannerUrl, height,width),
            HeaderContent(this.item,height,width,media),
          ],
        ),
      ),
    );
  }
}

class HeaderImage extends StatelessWidget {
  final String bannerUrl;
  double height,width;

  HeaderImage(this.bannerUrl, this.height,this.width);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      bannerUrl,
      width: 600.0,
      height: 380.0,
      fit: BoxFit.cover,
    );
  }
}

class HeaderContent extends StatelessWidget {
  final Item item;
  double height,width;
  Size media;

  HeaderContent(this.item,this.height,this.width,this.media);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        //color: Colors.black.withOpacity(0.1),
        constraints: BoxConstraints.expand(
          height: media.height >600? height/6 : height / 4,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          child: Container(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 1.0),
                        child: Text(
                          item.name,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 26.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      GetRatings(),
                      Container(
                        margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                        child: Text(
                          item.directors,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                      Container(
                        //margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                        child: Text(
                          item.releaseDateDesc,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //child:
        ),
      ),
    );
  }
}

class GetTrailers extends StatelessWidget {
  final Item item;
  Size media;

  GetTrailers(this.item, this.media);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
      height: media.width > 600? 200 : 100.0,
      width: double.infinity,
      child: ListView(
        
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
          
            child: Image.asset(
              item.trailerImg1,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 5.0),
            child: Image.asset(
              item.trailerImg2,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 5.0),
            child: Image.asset(
              item.trailerImg3,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}