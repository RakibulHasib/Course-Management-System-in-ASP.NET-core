using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Project_work.Data;

namespace Project_work.Controllers
{
    [Authorize(Roles ="Admin")]
    public class RoleController : Controller
    {
        private readonly RoleManager<IdentityRole> roleManager;
        private readonly UserManager<ApplicationUser> userManager;
        public RoleController(RoleManager<IdentityRole> roleManager, UserManager<ApplicationUser> userManager)
        {
            this.roleManager = roleManager;
            this.userManager = userManager;
        }

        public IActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> CreateRole(string userrole)
        {
            string msg = "";
            if(!string.IsNullOrEmpty(userrole))
            {
                if(await roleManager.RoleExistsAsync(userrole))
                {
                    msg = "Role " + userrole + " already exists!!!";
                }
                else
                {
                    IdentityRole r = new IdentityRole(userrole);
                    await roleManager.CreateAsync(r);
                    msg= "Role " + userrole + " has been created successfully!!!";
                }
            }
            else
            {
                msg = "Please enter a valid role name!!!";
            }
            ViewBag.msg = msg;
            return View("Index");
        }
        public IActionResult AssignRole()
        {
            ViewBag.users = userManager.Users;
            ViewBag.roles = roleManager.Roles;
            ViewBag.msg = TempData["msg"];
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> AssignRole(string userdata, string roledata)
        {
            string msg = "";
            if (!string.IsNullOrEmpty(userdata) && !string.IsNullOrEmpty(roledata))
            {
                ApplicationUser u = await userManager.FindByEmailAsync(userdata);
                if (u != null)
                {
                    if (await roleManager.RoleExistsAsync(roledata))
                    {
                        if (await userManager.IsInRoleAsync(u, roledata))
                        {
                            msg = "Role " + roledata + " already assigned to " + userdata + " !!!";
                        }
                        else
                        {
                            await userManager.AddToRoleAsync(u, roledata);
                            msg = "Role has been assign to user";
                        }
                    }
                    else
                    {
                        msg = "Role does not exist";
                    }
                }
                else
                {
                    msg = "User not found!!!";
                }
            }
            else
            {
                msg = "Please select a valid user or role";
            }
            ViewBag.users = userManager.Users;
            ViewBag.roles = roleManager.Roles;
            ViewBag.msg = msg;
            return View("AssignRole");
        }
    }
}
