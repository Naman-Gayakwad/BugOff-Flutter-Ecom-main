import '../details.dart';
import '../../components/navigationBar.dart';
import '../../models/products.dart';
import '../../responsivescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/banner_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _searchcontroller = TextEditingController();

  List<Widget> pages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(18),
          child: Padding(
            padding: EdgeInsets.fromLTRB(18, 13, 18, 13),
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  suffixIcon:
                      Icon(Icons.keyboard_voice_outlined), // mic_none_rounded
                  border: UnderlineInputBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(40),
                  )),
                  filled: true,
                  fillColor: Colors.white),
            ),
          ),
        ),
        foregroundColor: Colors.transparent,
        backgroundColor: const Color(0xFF1778F2),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(18),
          bottomRight: Radius.circular(18),
        )),
      ),
      
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Discover Product",
                    style: GoogleFonts.montserrat(
                        fontSize: ResponsiveScreen.halfRepWidth(context, 30),
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              TextField(
                controller: _searchcontroller,
                obscureText: false,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                  hintText: "Search",
                  hintStyle: GoogleFonts.montserrat(
                    fontSize: ResponsiveScreen.halfRepWidth(context, 16),
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                  ),
                  border: UnderlineInputBorder(),
                  contentPadding: EdgeInsets.fromLTRB(8, 18, 8, 20),
                ),
              ),
              SizedBox(
                height: ResponsiveScreen.fullRepHeight(context, 18),
              ),
              const BannerWidget(),
              Expanded(
                child: MasonryGridView.builder(
                  itemCount: productData.length,
                  gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(8, 6, 8, 0),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Details(
                                    product: productData[index],
                                  )));
                        },
                         
                        child: Column(
                          children: [
                            
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                              ),

                              //  {
                              //     "product_id": "255532092238",
                              //     "name":
                              //         "3D Ink Mountain Landscape Wallpaper Wall Mural Removable Self-adhesive 149",
                              //     "condition": "Brand New",
                              //     "price": "C \$39.93 to C \$303.84",
                              //     "discount": "uninformed",
                              //     "product_location": "from Australia",
                              //     "logistics_cost": "Free shipping",
                              //     "description": "Brand New",
                              //     "sales_potential": "uninformed",
                              //     "link":
                              //         "https://www.ebay.ca/itm/255532092238?hash=item3b7ee64b4e:g:9dkAAOSwurVifGjF&amdata=enc%3AAQAHAAAA4AH4CkEQ6e6yYc6j0T1rg8IbSYRk6DqZ04HgxI%2B%2FPzmokjj4ugwqDgiLQNvq3Chd25kHSaIh68OCSsmJEX6ewzdOwozAgd394gFpB96nYv4cWsapQfb9w9ZYX9Zj75yRGHTOZKbjeQo%2FM%2BgDiQ5ycbHigYkVwUIkaLjlW3X8QQI7%2BWXjbKvc9xeglBZY8ixjrjkQZD2e9cQvzatDetwSi7WwcQCXW%2B7gn81fqqQsHDIluqJClh62YTWeGjPwXsTmzV9J6AVqRmmcsWECpHh%2B17jyn5PDVSAGY1cne71DXQ%2FP%7Ctkp%3ABFBM1P-gs4Bh",
                              //     "thumbnail":
                              //         "https://i.ebayimg.com/thumbs/images/g/9dkAAOSwurVifGjF/s-l225.jpg"
                              //   }
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  productData[index]['thumbnail'],
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                            SizedBox(
                              height:
                                  ResponsiveScreen.fullRepHeight(context, 4),
                            ),
                            Center(
                              child: Text(
                                productData[index]['name'],
                                style: GoogleFonts.montserrat(
                                  fontSize: ResponsiveScreen.halfRepWidth(
                                      context, 12),
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text(
                                    productData[index]['price'].toString(),
                                    style: GoogleFonts.montserrat(
                                      color: Colors.blue[200],
                                      fontSize: ResponsiveScreen.halfRepWidth(
                                          context, 12),
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      ResponsiveScreen.halfRepWidth(context, 4),
                                ),
                                Center(
                                  child: Text(
                                    " ",
                                    style: GoogleFonts.montserrat(
                                      color: Colors.blue[700],
                                      fontSize: ResponsiveScreen.halfRepWidth(
                                          context, 12),
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
