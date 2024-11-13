using DangKhanhDuy_Lab3.Models;
using DangKhanhDuy_Lab3.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace DangKhanhDuy_Lab3.Controllers
{
    public class BlogController : Controller
    {
        private readonly WebsiteBanHangContext _context;
        public BlogController(WebsiteBanHangContext context)
        {
            _context = context;
        }
        public async Task<IActionResult> Index()
        {
            var menus = await _context.Menus.Where(m => m.Hide == 0).OrderBy(m =>
            m.Order).ToListAsync();
            var blogs = await _context.Blogs.Where(m => m.Hide == 0).OrderBy(m =>
            m.Order).ToListAsync();
            var viewModel = new BlogViewModel
            {
                Menus = menus,
                Blogs = blogs,
               
            };
            return View(viewModel);
        }
        public async Task<IActionResult> _MenuPartial()
        {
            return PartialView();
        }
        public async Task<IActionResult> _BlogPartial()
        {
            return PartialView();
        }
        public async Task<IActionResult> BlogDetail(string slug, long id)
        {
            var menus = await _context.Menus.Where(m => m.Hide == 0).OrderBy(m =>
            m.Order).ToListAsync();
           // var blogs = await _context.Blogs.Where(m => m.Hide == 0).OrderBy(m => m.Order).Take(2).ToListAsync();
            var blogdetail = await _context.Blogs.Where(m => m.Link == slug && m.IdBlog ==
            id).ToListAsync();
            if (blogdetail == null)
            {
                var errorViewModel = new ErrorViewModel
                {
                    RequestId = "Product Error",
                };
                return View("Error", errorViewModel);
            }
            var viewModel = new BlogViewModel
            {
                Menus = menus,
                Blogs = blogdetail,
                BlogDetai = blogdetail,
            };
            return View(viewModel);
        }


    }
}
