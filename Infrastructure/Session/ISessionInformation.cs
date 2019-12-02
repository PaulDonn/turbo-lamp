using System;
using System.Collections.Generic;

namespace Infrastructure.Session
{
    public interface ISessionInformation
    {
        string UserId { get; set; }

        string Name { get; set; }

        bool IsEnabled { get; set; }

        bool IsDM { get; set; }
    }
}
