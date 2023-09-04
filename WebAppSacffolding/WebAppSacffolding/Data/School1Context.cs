using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using WebAppSacffolding.Models;

namespace WebAppSacffolding.Data
{
    public class School1Context : DbContext
    {
        public School1Context (DbContextOptions<School1Context> options)
            : base(options)
        {
        }

        public DbSet<WebAppSacffolding.Models.Student> Student { get; set; } = default!;
    }
}
