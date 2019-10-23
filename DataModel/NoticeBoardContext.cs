﻿using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace DataModel
{
    public partial class NoticeBoardContext : DbContext
    {
        public NoticeBoardContext()
        {
        }

        public NoticeBoardContext(DbContextOptions<NoticeBoardContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Ability> Ability { get; set; }
        public virtual DbSet<Alignment> Alignment { get; set; }
        public virtual DbSet<Archetype> Archetype { get; set; }
        public virtual DbSet<Background> Background { get; set; }
        public virtual DbSet<BgSkill> BgSkill { get; set; }
        public virtual DbSet<Class> Class { get; set; }
        public virtual DbSet<ClassSkill> ClassSkill { get; set; }
        public virtual DbSet<Feature> Feature { get; set; }
        public virtual DbSet<Language> Language { get; set; }
        public virtual DbSet<Party> Party { get; set; }
        public virtual DbSet<PcAbilityScore> PcAbilityScore { get; set; }
        public virtual DbSet<PcFeature> PcFeature { get; set; }
        public virtual DbSet<PcLanguage> PcLanguage { get; set; }
        public virtual DbSet<PcSavingThrow> PcSavingThrow { get; set; }
        public virtual DbSet<PcSkill> PcSkill { get; set; }
        public virtual DbSet<Player> Player { get; set; }
        public virtual DbSet<PlayerCharacter> PlayerCharacter { get; set; }
        public virtual DbSet<Race> Race { get; set; }
        public virtual DbSet<RaceLanguage> RaceLanguage { get; set; }
        public virtual DbSet<Skill> Skill { get; set; }
        public virtual DbSet<SubFeature> SubFeature { get; set; }
        public virtual DbSet<SubRace> SubRace { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                optionsBuilder.UseSqlServer("Server=localhost\\mssqlserver01;Database=NoticeBoard;Trusted_Connection=True;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Ability>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();
            });

            modelBuilder.Entity<Alignment>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();
            });

            modelBuilder.Entity<Archetype>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.HasOne(d => d.Class)
                    .WithMany(p => p.Archetype)
                    .HasForeignKey(d => d.ClassId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Archetype_Class");
            });

            modelBuilder.Entity<Background>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();
            });

            modelBuilder.Entity<BgSkill>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.HasOne(d => d.Background)
                    .WithMany(p => p.BgSkill)
                    .HasForeignKey(d => d.BackgroundId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_BgSkill_Background");

                entity.HasOne(d => d.Skill)
                    .WithMany(p => p.BgSkill)
                    .HasForeignKey(d => d.SkillId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_BgSkill_Skill");
            });

            modelBuilder.Entity<Class>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();
            });

            modelBuilder.Entity<ClassSkill>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.HasOne(d => d.Class)
                    .WithMany(p => p.ClassSkill)
                    .HasForeignKey(d => d.ClassId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ClassSkill_Class");

                entity.HasOne(d => d.Skill)
                    .WithMany(p => p.ClassSkill)
                    .HasForeignKey(d => d.SkillId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ClassSkill_Skill");
            });

            modelBuilder.Entity<Feature>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();
            });

            modelBuilder.Entity<Language>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();
            });

            modelBuilder.Entity<PcAbilityScore>(entity =>
            {
                entity.HasOne(d => d.Ability)
                    .WithMany(p => p.PcAbilityScore)
                    .HasForeignKey(d => d.AbilityId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PcAbilityScore_Ability");

                entity.HasOne(d => d.Pc)
                    .WithMany(p => p.PcAbilityScore)
                    .HasForeignKey(d => d.PcId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PcAbilityScore_PlayerCharacter");
            });

            modelBuilder.Entity<PcFeature>(entity =>
            {
                entity.HasOne(d => d.Feature)
                    .WithMany(p => p.PcFeature)
                    .HasForeignKey(d => d.FeatureId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PcFeature_Feature");

                entity.HasOne(d => d.Pc)
                    .WithMany(p => p.PcFeature)
                    .HasForeignKey(d => d.PcId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PcFeature_PlayerCharacter");
            });

            modelBuilder.Entity<PcLanguage>(entity =>
            {
                entity.HasOne(d => d.Language)
                    .WithMany(p => p.PcLanguage)
                    .HasForeignKey(d => d.LanguageId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PcLanguage_Language");

                entity.HasOne(d => d.Pc)
                    .WithMany(p => p.PcLanguage)
                    .HasForeignKey(d => d.PcId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PcLanguage_PlayerCharacter");
            });

            modelBuilder.Entity<PcSavingThrow>(entity =>
            {
                entity.HasOne(d => d.Ability)
                    .WithMany(p => p.PcSavingThrow)
                    .HasForeignKey(d => d.AbilityId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PcSavingThrow_Ability");

                entity.HasOne(d => d.Pc)
                    .WithMany(p => p.PcSavingThrow)
                    .HasForeignKey(d => d.PcId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PcSavingThrow_PlayerCharacter");
            });

            modelBuilder.Entity<PcSkill>(entity =>
            {
                entity.HasOne(d => d.Pc)
                    .WithMany(p => p.PcSkill)
                    .HasForeignKey(d => d.PcId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PcSkill_PlayerCharacter");

                entity.HasOne(d => d.Skill)
                    .WithMany(p => p.PcSkill)
                    .HasForeignKey(d => d.SkillId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PcSkill_Skill");
            });

            modelBuilder.Entity<PlayerCharacter>(entity =>
            {
                entity.HasOne(d => d.Alignment)
                    .WithMany(p => p.PlayerCharacter)
                    .HasForeignKey(d => d.AlignmentId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PlayerCharacter_Alignment");

                entity.HasOne(d => d.Archetype)
                    .WithMany(p => p.PlayerCharacter)
                    .HasForeignKey(d => d.ArchetypeId)
                    .HasConstraintName("FK_PlayerCharacter_Archetype");

                entity.HasOne(d => d.Background)
                    .WithMany(p => p.PlayerCharacter)
                    .HasForeignKey(d => d.BackgroundId)
                    .HasConstraintName("FK_PlayerCharacter_Background");

                entity.HasOne(d => d.Class)
                    .WithMany(p => p.PlayerCharacter)
                    .HasForeignKey(d => d.ClassId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PlayerCharacter_Class");

                entity.HasOne(d => d.Party)
                    .WithMany(p => p.PlayerCharacter)
                    .HasForeignKey(d => d.PartyId)
                    .HasConstraintName("FK_PlayerCharacter_Party");

                entity.HasOne(d => d.Player)
                    .WithMany(p => p.PlayerCharacter)
                    .HasForeignKey(d => d.PlayerId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PlayerCharacter_Player");

                entity.HasOne(d => d.Race)
                    .WithMany(p => p.PlayerCharacter)
                    .HasForeignKey(d => d.RaceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PlayerCharacter_Race");

                entity.HasOne(d => d.SubRace)
                    .WithMany(p => p.PlayerCharacter)
                    .HasForeignKey(d => d.SubRaceId)
                    .HasConstraintName("FK_PlayerCharacter_SubRace");
            });

            modelBuilder.Entity<Race>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();
            });

            modelBuilder.Entity<RaceLanguage>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.HasOne(d => d.Language)
                    .WithMany(p => p.RaceLanguage)
                    .HasForeignKey(d => d.LanguageId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_RaceLanguage_Language");

                entity.HasOne(d => d.Race)
                    .WithMany(p => p.RaceLanguage)
                    .HasForeignKey(d => d.RaceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_RaceLanguage_Race");
            });

            modelBuilder.Entity<Skill>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.HasOne(d => d.Ability)
                    .WithMany(p => p.Skill)
                    .HasForeignKey(d => d.AbilityId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Skill_Ability");
            });

            modelBuilder.Entity<SubFeature>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.HasOne(d => d.Feature)
                    .WithMany(p => p.SubFeature)
                    .HasForeignKey(d => d.FeatureId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_SubFeature_Feature");
            });

            modelBuilder.Entity<SubRace>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.HasOne(d => d.Race)
                    .WithMany(p => p.SubRace)
                    .HasForeignKey(d => d.RaceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_SubRace_Race");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
