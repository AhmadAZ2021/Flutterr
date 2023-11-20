class dateclasses {
  final int id;
  final String title, subtitle, description, image , image1 , image2;

  dateclasses(
      {required this.id,
      required this.title,
      required this.subtitle,
      required this.description,
      required this.image , 
      required this.image1,
      required this.image2,});
}

List<dateclasses> classes = [
  dateclasses(
    id: 1,
    title: 'Class A',
    subtitle: 'Premium Quality',
    description:
        'Class A Medjool dates represent the pinnacle of excellence in the Medjool date spectrum. These dates are meticulously chosen for their exceptional attributes, including impressive size, impeccable taste, and a luxurious, tender texture. With a perfect balance of sweetness and a delightful eating experience, Class A Medjool dates stand out as the premium choice for those who seek the absolute best in flavor and quality.',
    image: 'images/Date.jpg',
    image1: 'images/Class A 1.jpg',
    image2: 'images/Class A 2.jpg'
  ),
  dateclasses(
      id: 2,
      title: 'Class B',
      subtitle: 'High Quality',
      description:
          'Falling just below the premium tier, Class B Medjool dates maintain a high standard of quality. While they may be slightly smaller or exhibit minor imperfections compared to Class A, they offer a commendable taste and texture. Class B is an excellent option for those who appreciate quality Medjool dates but are open to a more affordable choice without compromising significantly on the overall experience.',
      image: 'images/Date.jpg',
      image1: 'images/Class B 1.jpg',
      image2: 'images/Class B 2.jpg'),

  dateclasses(
      id: 3,
      title: 'Class C',
      subtitle: 'Standard Quality',
      description:
          'Class C Medjool dates embody a solid standard of quality, meeting the fundamental criteria for taste and texture. Although they might have some imperfections such as smaller sizes or irregular shapes, Class C dates still provide a satisfactory and enjoyable eating experience. These dates are a reliable choice for those seeking a balance between value and quality, offering a budget-friendly option without compromising too much on flavor.',
      image: 'images/Date.jpg',
      image1: 'images/Class C 1.jpg',
    image2: 'images/Class C 2.jpg'),
  dateclasses(
      id: 4,
      title: 'Class D',
      subtitle: 'Economy Grade',
      description:
          'Class D Medjool dates are the economy-grade option, displaying more noticeable imperfections in size, appearance, or taste. While they may not reach the premium or high-quality standards, Class D dates remain suitable for various culinary purposes. Offering an economical choice, Class D Medjool dates cater to those who prioritize affordability and are willing to make modest compromises in certain aspects of quality for specific uses.',
      image: 'images/Date.jpg',
      image1: 'images/Class D 1.jpg',
    image2: 'images/Class D 2.jpg'),
];
