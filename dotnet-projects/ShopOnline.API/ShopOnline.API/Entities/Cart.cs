namespace ShopOnline.API.Entities
{
    public class Cart
    {
        public int Id { get; set; }
        public int UserId { get; set; }

        public int ProductId { get; set; }

        public int Qty { get; set; }

    }
}
