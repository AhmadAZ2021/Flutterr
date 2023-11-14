class dateclasses {
  final int id;
  final String title, subtitle, description, image;

  dateclasses(
      {required this.id,
      required this.title,
      required this.subtitle,
      required this.description,
      required this.image});
}

List<dateclasses> classes = [
  dateclasses(
    id: 1,
    title: 'Class A',
    subtitle: 'Premium Quality',
    description:
        'Class A represents the premium category of Medjool dates, signifying the highest quality. These dates are characterized by their exceptional size, exquisite taste, and perfect texture. They are carefully selected for their superior sweetness, tenderness, and overall delightful eating experience. Class A Medjool dates are the epitome of excellence, making them the top choice for those seeking the finest and most indulgent date variety.',
    image: 'images/Date.jpg',
  ),
  dateclasses(
      id: 2,
      title: 'Class B',
      subtitle: 'High Quality',
      description:
          'Class B comprises high-quality Medjool dates that may not be classified as premium but still offer a delightful taste and texture. These dates are likely to be slightly smaller or may have minor imperfections compared to Class A but maintain a commendable standard. Class B dates are an excellent choice for those who desire quality Medjool dates with a slightly more affordable price point.',
      image: 'images/Date.jpg'),
  dateclasses(
      id: 3,
      title: 'Class C',
      subtitle: 'Standard Quality',
      description:
          'Class C represents standard quality Medjool dates that meet the basic criteria for taste and texture. While they may have some imperfections, such as smaller sizes or irregular shapes, Class C dates still provide a satisfactory eating experience. These dates are a good option for those who prioritize value and are looking for a budget-friendly choice without compromising too much on quality.',
      image: 'images/Date.jpg'),
  dateclasses(
      id: 4,
      title: 'Class D',
      subtitle: 'Economy Grade',
      description:
          'Class D consists of economy-grade Medjool dates, which may have more noticeable imperfections in terms of size, appearance, or taste. While these dates may not meet the premium or high-quality standards, they are still suitable for various culinary purposes. Class D Medjool dates offer an economical option for those who prioritize affordability and are willing to compromise on some aspects of quality.',
      image: 'images/Date.jpg'),
];
