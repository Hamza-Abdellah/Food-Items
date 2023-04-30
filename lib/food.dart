class Food
{
  String imageURL;
  String name;
  double price;
  double rating;

  Food({required this.name, required this.rating,  required this.imageURL, required this.price});
}

Food food1 = Food(name: 'Mighty Plus',  rating: 4,   imageURL: "https://kfcprodnecmsimage.azureedge.net/cmsimages/egy/desktop/imagestemp/66-Combo.png", price: 170);
Food food2 = Food(name: 'Mighty Love', rating: 3.5,   imageURL: "https://kfcprodnecmsimage.azureedge.net/cmsimages/egy/desktop/imagestemp/77-Combo.png", price: 224);
Food food3 = Food(name: 'Mega Rizo', rating: 4,   imageURL: "https://kfcprodnecmsimage.azureedge.net/cmsimages/egy/desktop/imagestemp/148-Combo.png", price: 110);
Food food4 = Food(name: 'Supreme Love', rating: 5,   imageURL: "https://kfcprodnecmsimage.azureedge.net/cmsimages/egy/desktop/imagestemp/171-Combo.png", price: 182 );
Food food5 = Food(name: 'Twister Chilla Box', rating: 4.5, imageURL: "https://kfcprodnecmsimage.azureedge.net/cmsimages/egy/desktop/imagestemp/1-Combo.png", price: 385 );

