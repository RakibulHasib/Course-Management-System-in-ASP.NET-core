// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using Project_work.Models;

#nullable disable

namespace Project_work.Migrations
{
    [DbContext(typeof(DbModels.CourseDbContext))]
    [Migration("20230118102938_ScriptR")]
    partial class ScriptR
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "6.0.13")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder, 1L, 1);

            modelBuilder.Entity("Project_work.Models.DbModels+Course", b =>
                {
                    b.Property<int>("CourseId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("CourseId"), 1L, 1);

                    b.Property<bool>("Available")
                        .HasColumnType("bit");

                    b.Property<string>("CourseName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("CourseTitleId")
                        .HasColumnType("int");

                    b.Property<decimal>("Fee")
                        .HasColumnType("decimal(18,2)");

                    b.HasKey("CourseId");

                    b.HasIndex("CourseTitleId");

                    b.ToTable("Courses");
                });

            modelBuilder.Entity("Project_work.Models.DbModels+CourseTitle", b =>
                {
                    b.Property<int>("CourseTitleId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("CourseTitleId"), 1L, 1);

                    b.Property<string>("CourseTitleName")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("CourseTitleId");

                    b.ToTable("CourseTitles");
                });

            modelBuilder.Entity("Project_work.Models.DbModels+EntryCourse", b =>
                {
                    b.Property<int>("EntryCourseId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("EntryCourseId"), 1L, 1);

                    b.Property<int>("CourseId")
                        .HasColumnType("int");

                    b.Property<int>("StudentId")
                        .HasColumnType("int");

                    b.HasKey("EntryCourseId");

                    b.HasIndex("CourseId");

                    b.HasIndex("StudentId");

                    b.ToTable("EntryCourses");
                });

            modelBuilder.Entity("Project_work.Models.DbModels+Student", b =>
                {
                    b.Property<int>("StudentId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("StudentId"), 1L, 1);

                    b.Property<int>("Age")
                        .HasColumnType("int");

                    b.Property<DateTime>("BirthDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("Picture")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("StudentName")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("StudentId");

                    b.ToTable("Students");
                });

            modelBuilder.Entity("Project_work.Models.DbModels+Course", b =>
                {
                    b.HasOne("Project_work.Models.DbModels+CourseTitle", "CourseTitle")
                        .WithMany("Courses")
                        .HasForeignKey("CourseTitleId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("CourseTitle");
                });

            modelBuilder.Entity("Project_work.Models.DbModels+EntryCourse", b =>
                {
                    b.HasOne("Project_work.Models.DbModels+Course", "Course")
                        .WithMany("EntryCourses")
                        .HasForeignKey("CourseId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("Project_work.Models.DbModels+Student", "Student")
                        .WithMany("EntryCourses")
                        .HasForeignKey("StudentId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Course");

                    b.Navigation("Student");
                });

            modelBuilder.Entity("Project_work.Models.DbModels+Course", b =>
                {
                    b.Navigation("EntryCourses");
                });

            modelBuilder.Entity("Project_work.Models.DbModels+CourseTitle", b =>
                {
                    b.Navigation("Courses");
                });

            modelBuilder.Entity("Project_work.Models.DbModels+Student", b =>
                {
                    b.Navigation("EntryCourses");
                });
#pragma warning restore 612, 618
        }
    }
}
