﻿using DangKhanhDuy_Lab3.Models;

namespace DangKhanhDuy_Lab3.ViewModels
{
    public class HomeViewModel
    {
        public List<Menu> Menus { get; set; }
        public List<Blog> Blogs { get; set; }
        public List<Slider> Sliders { get; set; }
        public List<Product> CatProds { get; set; }
        public List<Product> DogProds { get; set; }
        public Catology CatCateProds { get; set; }
        public Catology DogCateProds { get; set; }
    }
}
