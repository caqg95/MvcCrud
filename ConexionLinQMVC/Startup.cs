using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ConexionLinQMVC.Startup))]
namespace ConexionLinQMVC
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
