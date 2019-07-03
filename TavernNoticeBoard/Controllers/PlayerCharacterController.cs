using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using TavernNoticeBoard.Models.Player;

namespace TavernNoticeBoard.Controllers
{
    public class PlayerCharacterController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Create(CreatePlayerModel model)
        {
            return RedirectToAction(nameof(Details), new { });
        }

        public IActionResult Details(int id)
        {
            return View();
        }
    }
}