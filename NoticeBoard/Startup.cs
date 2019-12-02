using AutoMapper;
using DataModel;
using Infrastructure.Mediator;
using Infrastructure.Session;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using NoticeBoard.Utility.AutoMapper;
using NoticeBoard.Utility.DIMappers;
using System;
using System.Linq;

namespace NoticeBoard
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddDataProtection();

            services.AddControllersWithViews().AddRazorRuntimeCompilation().AddNewtonsoftJson();
            
            services.AddTransient<IMediator, Mediator>();
            new MainMapper().Setup(services);

            // DB Setup
            services.AddTransient<NoticeBoardContext>(serviceProvider =>
            {
                DbContextOptionsBuilder<NoticeBoardContext> options = new DbContextOptionsBuilder<NoticeBoardContext>();
                options.UseSqlServer(Configuration.GetConnectionString("DefaultConnection"));

                var context = new NoticeBoardContext(options.Options);

                return context;
            });

            services.AddScoped<ISessionInformation>(serviceProvider =>
            {
                DbContextOptionsBuilder<NoticeBoardContext> options = new DbContextOptionsBuilder<NoticeBoardContext>();
                options.UseSqlServer(Configuration.GetConnectionString("DefaultConnection"));

                var context = new NoticeBoardContext(options.Options);

                SessionInformation sessionInformation = new SessionInformation();

                var contextAccessor = serviceProvider.GetService<IHttpContextAccessor>();
                if (true) //contextAccessor.HttpContext != null) //TODO: Get HttpContext
                {
                    var claims = contextAccessor?.HttpContext?.User?.Claims;

                    var userid = "1"; //TODO: Replace with Id from user claim
                    //var userid = Convert.ToInt32(claims?.FirstOrDefault(n => n.Type == "objectid")?.Value);

                    var user = context.Player.SingleOrDefault(n => n.UserId == userid && n.IsEnabled);

                    if (user != null)
                    {
                        sessionInformation.Name = user.Name;
                        sessionInformation.UserId = userid;
                        sessionInformation.IsDM = user.IsDm;
                        sessionInformation.IsEnabled = user.IsEnabled;
                    }
                }
                return sessionInformation;
            });

            var mappingConfig = new MapperConfiguration(mc =>
            {
                mc.AddProfile(new MapperProfiles());
            });

            IMapper mapper = mappingConfig.CreateMapper();
            services.AddSingleton(mapper);
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }
            app.UseHttpsRedirection();
            app.UseStaticFiles();

            app.UseRouting();

            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllerRoute(
                    name: "default",
                    pattern: "{controller=Home}/{action=Index}/{id?}");
            });
        }
    }
}
