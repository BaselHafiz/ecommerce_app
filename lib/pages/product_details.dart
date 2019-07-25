import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final String productName;
  final String productImage;
  final int productOldPrice, productNewPrice;

  ProductDetails(
      {this.productName,
      this.productImage,
      this.productOldPrice,
      this.productNewPrice});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.redAccent,
        title: Text(widget.productName),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          _buildProductDetailsPart(),
          _buildSizeColorQuantityButtonsRow(context),
          _buildBuyButtonRow(),
          Divider(),
          ListTile(
              title: Text('Product Details'),
              subtitle: Text(
                  'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using "Content here, content here", making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for "lorem ipsum" will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)')),
          Divider(),
          Row(
            children: <Widget>[
              Padding(
                  child: Text('Product name', style: TextStyle(color: Colors.grey),), padding: EdgeInsets.fromLTRB(12, 5, 5, 5)),
              Padding(child: Text(widget.productName), padding: EdgeInsets.all(5)),
            ],
          ),

          Row(
            children: <Widget>[
              Padding(
                  child: Text('Product brand', style: TextStyle(color: Colors.grey),), padding: EdgeInsets.fromLTRB(12, 5, 5, 5)),
              // TODO
              Padding(child: Text('Brand X'), padding: EdgeInsets.all(5)),
            ],
          ),

          Row(
            children: <Widget>[
              Padding(
                  child: Text('Product condition', style: TextStyle(color: Colors.grey),), padding: EdgeInsets.fromLTRB(12, 5, 5, 5)),
              // TODO
              Padding(child: Text('Used'), padding: EdgeInsets.all(5)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSizeColorQuantityButtonsRow(BuildContext context) {
    return Row(
      children: <Widget>[
        // ============ Size Button ============
        Expanded(
            child: MaterialButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Size'),
                    content: Text('Choose the size'),
                    actions: <Widget>[
                      MaterialButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Close'),
                      )
                    ],
                  );
                });
          },
          color: Colors.white,
          textColor: Colors.grey,
          elevation: 0.2,
          child: Row(
            children: <Widget>[
              Expanded(child: Text('Size')),
              Expanded(child: Icon(Icons.arrow_drop_down))
            ],
          ),
        )),

        // ============ Color Button ============
        Expanded(
            child: MaterialButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Color'),
                    content: Text('Choose the color'),
                    actions: <Widget>[
                      MaterialButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Close'),
                      )
                    ],
                  );
                });
          },
          color: Colors.white,
          textColor: Colors.grey,
          elevation: 0.2,
          child: Row(
            children: <Widget>[
              Expanded(child: Text('Color')),
              Expanded(child: Icon(Icons.arrow_drop_down))
            ],
          ),
        )),

        // ============ Quantity Button ============
        Expanded(
            child: MaterialButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Quantity'),
                    content: Text('Choose the quantity'),
                    actions: <Widget>[
                      MaterialButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Close'),
                      )
                    ],
                  );
                });
          },
          color: Colors.white,
          textColor: Colors.grey,
          elevation: 0.2,
          child: Row(
            children: <Widget>[
              Expanded(child: Text('Qty')),
              Expanded(child: Icon(Icons.arrow_drop_down))
            ],
          ),
        )),
      ],
    );
  }

  Widget _buildBuyButtonRow() {
    return Row(
      children: <Widget>[
        Expanded(
          child: MaterialButton(
              onPressed: () {},
              color: Colors.red,
              textColor: Colors.white,
              elevation: 0.2,
              child: Text('Buy now')),
        ),
        Padding(
            padding: EdgeInsets.only(right: 35, left: 35),
            child: IconButton(
                icon: Icon(Icons.add_shopping_cart, color: Colors.red),
                onPressed: () {})),
        Padding(
            padding: EdgeInsets.only(right: 35, left: 35),
            child: IconButton(
                icon: Icon(Icons.favorite_border, color: Colors.red),
                onPressed: () {})),
      ],
    );
  }

  Widget _buildProductDetailsPart() {
    return Container(
      height: 300,
      child: GridTile(
        child: Image.asset(widget.productImage),
        footer: Container(
          color: Colors.white70,
          child: ListTile(
            leading: Container(
              padding: EdgeInsets.only(top: 3, left: 100),
              child: Text(
                widget.productName,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            title: Column(
              children: [
                Text(
                  '\$${widget.productNewPrice.toString()}',
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.w800),
                ),
                Text(
                  '\$${widget.productOldPrice.toString()}',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.lineThrough),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
