using DangKhanhDuy_Lab3.Models;

namespace DangKhanhDuy_Lab3.ViewModels
{
    public class ProductViewModel
    {
        public List<Menu> Menus { get; set; }
        public List<Blog> Blogs { get; set; }
        public List<Product> Prods { get; set; }
        public string cateName { get; set; }
    }
}
