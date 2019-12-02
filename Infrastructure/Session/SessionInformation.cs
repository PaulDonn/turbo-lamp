using System;
using System.Collections.Generic;
using System.Text;

namespace Infrastructure.Session
{
    public class SessionInformation : ISessionInformation
    {
        public string UserId { get; set; }
        public string Name { get; set; }
        public bool IsEnabled { get; set; }
        public bool IsDM { get; set; }
    }
}
