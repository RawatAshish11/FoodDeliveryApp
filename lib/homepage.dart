
import 'package:flutter/material.dart';
import 'package:fooddelivery/models/recipe.dart';
import 'package:fooddelivery/providers/recipes.dart';
import 'package:fooddelivery/screens/recipe_detail_screen.dart';
import 'package:provider/provider.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final menusData = Provider.of<Recipes>(context);
    final menus = menusData.items;
  //  final recipe = Provider.of<Recipe>(context, listen: false);
    // Widget _tile()
    // {
    //   return ;
    // }
    return Scaffold(

      // appBar: AppBar(
      //    leading: Icon(Icons.location_on_rounded,color: Colors.pink,),
      //   iconTheme: IconThemeData(color: Colors.pink),
      //   title: Container(
      //     margin: EdgeInsets.fromLTRB(10, 10, 10, 30),
      //     child: TextField(
      //       //onChanged: ,
      //       decoration: InputDecoration(
      //         hintText: "Location",
      //         contentPadding: EdgeInsets.fromLTRB(0,20,0,0),
      //
      //        // border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      //
      //         //suffixIcon: SvgPicture.asset( "assets/icons/Mail.svg",  fit: BoxFit.scaleDown),
      //       ),
      //     ),
      //   ) ,
      //
      //   backgroundColor: Colors.white,
      //
      // ),
     endDrawer:Drawer(
       elevation: 15,
         child: Text("hello"),
     ) ,
     body: SafeArea(
       child: NestedScrollView(
         physics: NeverScrollableScrollPhysics(),
         headerSliverBuilder: (BuildContext context , bool innerBoxIsScrolled){
           return <Widget> [
             SliverAppBar(
              // collapsedHeight: ,
               iconTheme: IconThemeData(color: Colors.pink),
               floating: true,
               pinned: true,

             title: Container(
               color: Colors.white,
               margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
               child: TextField(
                 //onChanged: ,
                 decoration: InputDecoration(
                   hintText: "Location",
                   contentPadding: EdgeInsets.fromLTRB(0,20,0,0),

                   // border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),

                   //suffixIcon: SvgPicture.asset( "assets/icons/Mail.svg",  fit: BoxFit.scaleDown),
                 ),
               ),
             ) ,
               backgroundColor: Colors.white,
               leading: Icon(Icons.location_on_rounded,color: Colors.pink,),
               bottom: PreferredSize(
                 child: Container(
                   height: 40,
                   color: Colors.pink,
                   child: Text("hello"),
                 ),
                 preferredSize: Size(0,40),
               ),
             ),


           ];
         },

         body:

          SafeArea(
             child: ListView.builder(
               itemCount: menus.length,
                 itemBuilder: (BuildContext context , int index)
                  {
               return InkWell(
                 onTap: (){
                   Navigator.of(context).pushNamed(
                     RecipeDetailScreen.routeName,
                     arguments: menus[index].id,
                   );
                 },
                 child: Container(
                     height: 140,
                     color: Colors.white,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Container(

                           width: MediaQuery.of(context).size.width /2.5,
                           color: Colors.white,
                           padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                           child: Center(
                             child: Stack(
                               // alignment: Alignment.topRight,
                               children: [
                                 Image(image: NetworkImage(
                                     menus[index].imageUrl),
                                   //alignment: Alignment.center,
                                   fit: BoxFit.contain,
//

                                 ),
                                 Positioned.fill(
                                   child: Align(
                                     alignment: Alignment.topRight,
                                     child: Container(
                                         decoration: BoxDecoration(
                                             color: Colors.green,
                                             borderRadius: BorderRadius.circular(3)
                                         ),
                                         margin: EdgeInsets.fromLTRB(0, 4, 4, 0),
                                         height: 16,
                                         width: 26,
                                         child: Center(child: Text(menus[index].rating,
                                           style: TextStyle(
                                               color: Colors.white,
                                               fontWeight: FontWeight.bold
                                           ),)
                                         )
                                     ),
                                   ),
                                 ),
                                 Positioned.fill(
                                   child: Align(
                                       alignment: Alignment.bottomRight,
                                       child: Container(
                                           decoration: BoxDecoration(
                                               color: Colors.deepPurple,
                                               borderRadius: BorderRadius.circular(3)
                                           ),
                                           margin: EdgeInsets.fromLTRB(0, 0, 4, 4),
                                           height: 16,
                                           width: 65,

                                           child: Center(child: Text(menus[index].discount,style: TextStyle(
                                               color: Colors.white,
                                               fontWeight: FontWeight.bold
                                           ),)
                                           )
                                       )
                                   ),
                                 ),

                               ],

                             ),
                           ),
                         ),
                         Container(
                           color: Colors.white,
                           width: 10,
                         ),
                         Container(

                           child: Column(

                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Spacer(),
                               Text(menus[index].title,
                                 style: TextStyle(
                                     fontSize: 18,
                                     fontWeight: FontWeight.bold
                                 ),
                               ),
                               SizedBox(
                                 height: 4,
                               ),
                               Text(menus[index].address,
                                 style: TextStyle(
                                     fontSize: 12,
                                     fontWeight: FontWeight.bold
                                 ),
                               ),
                               Spacer(),
                               RichText(
                                 text: TextSpan(
                                   style: Theme.of(context).textTheme.body1,
                                   children: [

                                     WidgetSpan(
                                       child: Padding(
                                         padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                         child: CircleAvatar(
                                           backgroundColor: Colors.yellow[900],
                                           radius: 8 ,
                                           child: Icon(Icons.attach_money,
                                             color: Colors.white,
                                             size: 16,
                                           ),
                                         ),
                                       ),
                                     ),
                                     TextSpan(text: (menus[index].price).toString(),
                                       style: TextStyle(
                                           fontSize: 12,
                                           fontWeight: FontWeight.bold
                                       ),),
                                   ],
                                 ),
                               ),
                               SizedBox(
                                 height: 4,
                               ),
                               RichText(
                                 text: TextSpan(
                                   style: Theme.of(context).textTheme.body1,
                                   children: [

                                     WidgetSpan(
                                       child: Padding(
                                         padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                         child: CircleAvatar(
                                           backgroundColor: Colors.pink[700],
                                           radius: 8 ,
                                           child: Icon(Icons.lightbulb,
                                             color: Colors.white,
                                             size: 11,
                                           ),
                                         ),
                                       ),
                                     ),
                                     TextSpan(text: ' Redeem Piggybank Coins Here',
                                       style: TextStyle(
                                           fontSize: 12,
                                           fontWeight: FontWeight.bold
                                       ),),
                                   ],
                                 ),
                               ),

                               Spacer(),
                               Row(
                                 crossAxisAlignment: CrossAxisAlignment.end,
                                 //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   RichText(
                                     text: TextSpan(
                                       style: Theme.of(context).textTheme.body1,
                                       children: [

                                         WidgetSpan(
                                           child: Padding(
                                             padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                             child: CircleAvatar(
                                               backgroundColor: Colors.green[700],
                                               radius: 8 ,
                                               child: Icon(Icons.electric_bike,
                                                 color: Colors.white,
                                                 size: 11,
                                               ),
                                             ),
                                           ),
                                         ),
                                         TextSpan(text: 'Self Pickup in ${menus[index].pickuptime} min',
                                           style: TextStyle(
                                               fontSize: 12,
                                               fontWeight: FontWeight.bold
                                           ),),
                                       ],
                                     ),
                                   ),
                                   SizedBox(
                                     width: 35,
                                   ),
                                   RichText(
                                     text: TextSpan(
                                       style: Theme.of(context).textTheme.body1,
                                       children: [

                                         WidgetSpan(
                                           child: Padding(
                                             padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                             child: Icon(Icons.location_pin,
                                               color: Colors.pink,
                                               size: 18,
                                             ),
                                           ),
                                         ),
                                         TextSpan(text: "${menus[index].distance}",
                                           style: TextStyle(
                                               fontSize: 12,
                                               fontWeight: FontWeight.bold
                                           ),),
                                       ],
                                     ),
                                   ),

                                 ],
                               ),
                               Spacer()
                             ],
                           ),
                         )
                       ],
                     )),
               );
                   }
             )

         ),
       ),
     ),
    );
  }
}
