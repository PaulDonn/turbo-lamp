using System;
using System.Collections.Generic;
using System.Text;

namespace Infrastructure.CQRS
{
    public class ExecutionResult
    {
        public bool Success { get; set; }
        public List<string> ErrorMessages { get; set; }
        public int NewRecordId { get; set; }

        public ExecutionResult()
        {
            Success = false;
            ErrorMessages = new List<string>();
        }
    }

    public class ExecutionResult<T>
    {
        public bool Success { get; set; }
        public List<string> ErrorMessages { get; set; }
        public T ResultObject { get; set; }

        public ExecutionResult()
        {
            Success = false;
            ErrorMessages = new List<string>();
        }
    }
}
