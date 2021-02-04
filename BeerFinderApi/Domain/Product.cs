
namespace BeerFinderApi.Domain
{
    public class Product
    {
        public int Id { get; set; }
        public string ImageUrl { get; set; }
        public string Category { get; set; }
        public string Type { get; set; }
        public string Name { get; set; }
        public string Volume { get; set; }
        public string Producer { get; set; }
        public string Country { get; set; }
        public bool IsEco { get; set; }
        public decimal AlcoholPercentage { get; set; }
        public string Description { get; set; }
        public string EAN { get; set; }
        public string ExternalProductId  { get; set; }
        public string StockStatus  { get; set; }
        public string Shelf  { get; set; }
        
        // + GTIN 
        // + Rating
    }
}
