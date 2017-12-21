class FoodFactory {
  public Food getFood(String order) {
    try {
      return (Food) Class.forName(
          order.substring(0, 1).toUpperCase() + order.substring(1)
      ).newInstance();
    } catch (Exception e) {
      return null;
    }
  }
}