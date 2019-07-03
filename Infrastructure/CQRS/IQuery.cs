using System;
using System.Collections.Generic;
using System.Text;

namespace Infrastructure.CQRS
{
    public interface IQuery<out TResponse>
    {
    }
}
