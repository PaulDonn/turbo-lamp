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
        public virtual DbSet<ArmorType> ArmorType { get; set; }
        public virtual DbSet<Background> Background { get; set; }
        public virtual DbSet<BgSkill> BgSkill { get; set; }
        public virtual DbSet<Campaign> Campaign { get; set; }
        public virtual DbSet<CampaignSource> CampaignSource { get; set; }
        public virtual DbSet<CharacterGenerationMethod> CharacterGenerationMethod { get; set; }
        public virtual DbSet<Class> Class { get; set; }
        public virtual DbSet<ClassFeature> ClassFeature { get; set; }
        public virtual DbSet<ClassSkill> ClassSkill { get; set; }
        public virtual DbSet<DamageType> DamageType { get; set; }
        public virtual DbSet<Equipment> Equipment { get; set; }
        public virtual DbSet<EquipmentType> EquipmentType { get; set; }
        public virtual DbSet<Feature> Feature { get; set; }
        public virtual DbSet<Language> Language { get; set; }
        public virtual DbSet<PcAbilityScore> PcAbilityScore { get; set; }
        public virtual DbSet<PcEquipment> PcEquipment { get; set; }
        public virtual DbSet<PcFeature> PcFeature { get; set; }
        public virtual DbSet<PcLanguage> PcLanguage { get; set; }
        public virtual DbSet<PcSavingThrow> PcSavingThrow { get; set; }
        public virtual DbSet<PcSkill> PcSkill { get; set; }
        public virtual DbSet<PcSpell> PcSpell { get; set; }
        public virtual DbSet<PcSpellLevel> PcSpellLevel { get; set; }
        public virtual DbSet<PcTrait> PcTrait { get; set; }
        public virtual DbSet<PcTreasure> PcTreasure { get; set; }
        public virtual DbSet<Player> Player { get; set; }
        public virtual DbSet<PlayerCampaign> PlayerCampaign { get; set; }
        public virtual DbSet<PlayerCharacter> PlayerCharacter { get; set; }
        public virtual DbSet<Race> Race { get; set; }
        public virtual DbSet<RaceFeature> RaceFeature { get; set; }
        public virtual DbSet<RaceLanguage> RaceLanguage { get; set; }
        public virtual DbSet<Skill> Skill { get; set; }
        public virtual DbSet<Source> Source { get; set; }
        public virtual DbSet<Spell> Spell { get; set; }
        public virtual DbSet<SpellList> SpellList { get; set; }
        public virtual DbSet<SpellListSpell> SpellListSpell { get; set; }
        public virtual DbSet<SpellSchool> SpellSchool { get; set; }
        public virtual DbSet<SubFeature> SubFeature { get; set; }
        public virtual DbSet<SubRace> SubRace { get; set; }
        public virtual DbSet<TraitType> TraitType { get; set; }
        public virtual DbSet<Treasure> Treasure { get; set; }
        public virtual DbSet<WeaponType> WeaponType { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                optionsBuilder.UseSqlServer("Server=.;Database=NoticeBoard;Trusted_Connection=True;");
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

                entity.Property(e => e.SourceId).HasDefaultValueSql("((1))");

                entity.HasOne(d => d.Class)
                    .WithMany(p => p.Archetype)
                    .HasForeignKey(d => d.ClassId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Archetype_Class");

                entity.HasOne(d => d.Source)
                    .WithMany(p => p.Archetype)
                    .HasForeignKey(d => d.SourceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Archetype_Source");
            });

            modelBuilder.Entity<ArmorType>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();
            });

            modelBuilder.Entity<Background>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.SourceId).HasDefaultValueSql("((1))");

                entity.HasOne(d => d.Source)
                    .WithMany(p => p.Background)
                    .HasForeignKey(d => d.SourceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Background_Source");
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

            modelBuilder.Entity<Campaign>(entity =>
            {
                entity.HasOne(d => d.CharacterGenerationMethod)
                    .WithMany(p => p.Campaign)
                    .HasForeignKey(d => d.CharacterGenerationMethodId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Campaign_CharacterGenerationMethod");
            });

            modelBuilder.Entity<CampaignSource>(entity =>
            {
                entity.HasOne(d => d.Campaign)
                    .WithMany(p => p.CampaignSource)
                    .HasForeignKey(d => d.CampaignId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_CampaignSource_Campaign");

                entity.HasOne(d => d.Source)
                    .WithMany(p => p.CampaignSource)
                    .HasForeignKey(d => d.SourceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_CampaignSource_Source");
            });

            modelBuilder.Entity<CharacterGenerationMethod>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();
            });

            modelBuilder.Entity<Class>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.SourceId).HasDefaultValueSql("((1))");

                entity.HasOne(d => d.Source)
                    .WithMany(p => p.Class)
                    .HasForeignKey(d => d.SourceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Class_Source");

                entity.HasOne(d => d.SpellcastingAbility)
                    .WithMany(p => p.Class)
                    .HasForeignKey(d => d.SpellcastingAbilityId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Class_Ability");
            });

            modelBuilder.Entity<ClassFeature>(entity =>
            {
                entity.Property(e => e.Level).HasDefaultValueSql("((1))");

                entity.HasOne(d => d.Archetype)
                    .WithMany(p => p.ClassFeature)
                    .HasForeignKey(d => d.ArchetypeId)
                    .HasConstraintName("FK_ClassFeature_Archetype");

                entity.HasOne(d => d.Class)
                    .WithMany(p => p.ClassFeature)
                    .HasForeignKey(d => d.ClassId)
                    .HasConstraintName("FK_ClassFeature_Class");

                entity.HasOne(d => d.Feature)
                    .WithMany(p => p.ClassFeature)
                    .HasForeignKey(d => d.FeatureId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ClassFeature_Feature");
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

            modelBuilder.Entity<DamageType>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();
            });

            modelBuilder.Entity<Equipment>(entity =>
            {
                entity.Property(e => e.SourceId).HasDefaultValueSql("((1))");

                entity.HasOne(d => d.ArmorType)
                    .WithMany(p => p.Equipment)
                    .HasForeignKey(d => d.ArmorTypeId)
                    .HasConstraintName("FK_Equipment_ArmorType");

                entity.HasOne(d => d.EquipmentType)
                    .WithMany(p => p.Equipment)
                    .HasForeignKey(d => d.EquipmentTypeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Equipment_EquipmentType");

                entity.HasOne(d => d.PreRequisiteAbility)
                    .WithMany(p => p.Equipment)
                    .HasForeignKey(d => d.PreRequisiteAbilityId)
                    .HasConstraintName("FK_Equipment_Ability");

                entity.HasOne(d => d.Source)
                    .WithMany(p => p.Equipment)
                    .HasForeignKey(d => d.SourceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Equipment_Source");

                entity.HasOne(d => d.WeaponType)
                    .WithMany(p => p.Equipment)
                    .HasForeignKey(d => d.WeaponTypeId)
                    .HasConstraintName("FK_Equipment_WeaponType");
            });

            modelBuilder.Entity<EquipmentType>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();
            });

            modelBuilder.Entity<Feature>(entity =>
            {
                entity.HasIndex(e => e.Code)
                    .HasName("UQ__Feature__A25C5AA71B153855")
                    .IsUnique();

                entity.Property(e => e.SourceId).HasDefaultValueSql("((1))");

                entity.HasOne(d => d.Source)
                    .WithMany(p => p.Feature)
                    .HasForeignKey(d => d.SourceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Feature_Source");
            });

            modelBuilder.Entity<Language>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.SourceId).HasDefaultValueSql("((1))");

                entity.HasOne(d => d.Source)
                    .WithMany(p => p.Language)
                    .HasForeignKey(d => d.SourceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Language_Source");
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

            modelBuilder.Entity<PcEquipment>(entity =>
            {
                entity.HasOne(d => d.Equipment)
                    .WithMany(p => p.PcEquipment)
                    .HasForeignKey(d => d.EquipmentId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PcEquipment_Equipment");

                entity.HasOne(d => d.Pc)
                    .WithMany(p => p.PcEquipment)
                    .HasForeignKey(d => d.PcId)
                    .HasConstraintName("FK_PcEquipment_PlayerCharacter");
            });

            modelBuilder.Entity<PcFeature>(entity =>
            {
                entity.HasOne(d => d.ClassFeature)
                    .WithMany(p => p.PcFeature)
                    .HasForeignKey(d => d.ClassFeatureId)
                    .HasConstraintName("FK_PcFeature_ClassFeature");

                entity.HasOne(d => d.Feature)
                    .WithMany(p => p.PcFeature)
                    .HasForeignKey(d => d.FeatureId)
                    .HasConstraintName("FK_PcFeature_Feature");

                entity.HasOne(d => d.Pc)
                    .WithMany(p => p.PcFeature)
                    .HasForeignKey(d => d.PcId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PcFeature_PlayerCharacter");

                entity.HasOne(d => d.RaceFeature)
                    .WithMany(p => p.PcFeature)
                    .HasForeignKey(d => d.RaceFeatureId)
                    .HasConstraintName("FK_PcFeature_RaceFeature");
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

            modelBuilder.Entity<PcSpell>(entity =>
            {
                entity.HasOne(d => d.Pc)
                    .WithMany(p => p.PcSpell)
                    .HasForeignKey(d => d.PcId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PcSpell_PlayerCharacter");

                entity.HasOne(d => d.Spell)
                    .WithMany(p => p.PcSpell)
                    .HasForeignKey(d => d.SpellId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PcSpell_Spell");
            });

            modelBuilder.Entity<PcSpellLevel>(entity =>
            {
                entity.HasIndex(e => new { e.PcId, e.SpellLevel })
                    .HasName("UQ_PcSpellLevel_PcId_SpellLevel")
                    .IsUnique();

                entity.HasOne(d => d.Pc)
                    .WithMany(p => p.PcSpellLevel)
                    .HasForeignKey(d => d.PcId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PcSpellLevel_PlayerCharacter");
            });

            modelBuilder.Entity<PcTrait>(entity =>
            {
                entity.HasOne(d => d.Pc)
                    .WithMany(p => p.PcTrait)
                    .HasForeignKey(d => d.PcId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PcTrait_PlayerCharacter");

                entity.HasOne(d => d.TraitType)
                    .WithMany(p => p.PcTrait)
                    .HasForeignKey(d => d.TraitTypeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PcTrait_TraitType");
            });

            modelBuilder.Entity<PcTreasure>(entity =>
            {
                entity.HasOne(d => d.Pc)
                    .WithMany(p => p.PcTreasure)
                    .HasForeignKey(d => d.PcId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PcTreasure_PlayerCharacter");

                entity.HasOne(d => d.Treasure)
                    .WithMany(p => p.PcTreasure)
                    .HasForeignKey(d => d.TreasureId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PcTreasure_Treasure");
            });

            modelBuilder.Entity<Player>(entity =>
            {
                entity.HasIndex(e => e.UserId)
                    .HasName("UQ__Player__1788CC4D61525139")
                    .IsUnique();
            });

            modelBuilder.Entity<PlayerCampaign>(entity =>
            {
                entity.HasOne(d => d.Campaign)
                    .WithMany(p => p.PlayerCampaign)
                    .HasForeignKey(d => d.CampaignId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PlayerCampaign_Campaign");

                entity.HasOne(d => d.Player)
                    .WithMany(p => p.PlayerCampaign)
                    .HasForeignKey(d => d.PlayerId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PlayerCampaign_Player");
            });

            modelBuilder.Entity<PlayerCharacter>(entity =>
            {
                entity.Property(e => e.HitDiceCurrent).HasDefaultValueSql("((1))");

                entity.Property(e => e.HitDiceMaximum).HasDefaultValueSql("((1))");

                entity.Property(e => e.Level).HasDefaultValueSql("((1))");

                entity.Property(e => e.ProficiencyBonus).HasDefaultValueSql("((2))");

                entity.HasOne(d => d.Alignment)
                    .WithMany(p => p.PlayerCharacter)
                    .HasForeignKey(d => d.AlignmentId)
                    .HasConstraintName("FK_PlayerCharacter_Alignment");

                entity.HasOne(d => d.Archetype)
                    .WithMany(p => p.PlayerCharacter)
                    .HasForeignKey(d => d.ArchetypeId)
                    .HasConstraintName("FK_PlayerCharacter_Archetype");

                entity.HasOne(d => d.Background)
                    .WithMany(p => p.PlayerCharacter)
                    .HasForeignKey(d => d.BackgroundId)
                    .HasConstraintName("FK_PlayerCharacter_Background");

                entity.HasOne(d => d.Campaign)
                    .WithMany(p => p.PlayerCharacter)
                    .HasForeignKey(d => d.CampaignId)
                    .HasConstraintName("FK_PlayerCharacter_Campaign");

                entity.HasOne(d => d.Class)
                    .WithMany(p => p.PlayerCharacter)
                    .HasForeignKey(d => d.ClassId)
                    .HasConstraintName("FK_PlayerCharacter_Class");

                entity.HasOne(d => d.Player)
                    .WithMany(p => p.PlayerCharacter)
                    .HasForeignKey(d => d.PlayerId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PlayerCharacter_Player");

                entity.HasOne(d => d.Race)
                    .WithMany(p => p.PlayerCharacter)
                    .HasForeignKey(d => d.RaceId)
                    .HasConstraintName("FK_PlayerCharacter_Race");

                entity.HasOne(d => d.SubRace)
                    .WithMany(p => p.PlayerCharacter)
                    .HasForeignKey(d => d.SubRaceId)
                    .HasConstraintName("FK_PlayerCharacter_SubRace");
            });

            modelBuilder.Entity<Race>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.SourceId).HasDefaultValueSql("((1))");

                entity.HasOne(d => d.Source)
                    .WithMany(p => p.Race)
                    .HasForeignKey(d => d.SourceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Race_Source");
            });

            modelBuilder.Entity<RaceFeature>(entity =>
            {
                entity.Property(e => e.Level).HasDefaultValueSql("((1))");

                entity.HasOne(d => d.Feature)
                    .WithMany(p => p.RaceFeature)
                    .HasForeignKey(d => d.FeatureId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_RaceFeature_Feature");

                entity.HasOne(d => d.Race)
                    .WithMany(p => p.RaceFeature)
                    .HasForeignKey(d => d.RaceId)
                    .HasConstraintName("FK_RaceFeature_Race");

                entity.HasOne(d => d.SubRace)
                    .WithMany(p => p.RaceFeature)
                    .HasForeignKey(d => d.SubRaceId)
                    .HasConstraintName("FK_RaceFeature_SubRace");
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

            modelBuilder.Entity<Source>(entity =>
            {
                entity.HasIndex(e => e.Code)
                    .HasName("UQ__Source__A25C5AA76C26A286")
                    .IsUnique();

                entity.Property(e => e.Id).ValueGeneratedNever();
            });

            modelBuilder.Entity<Spell>(entity =>
            {
                entity.Property(e => e.SourceId).HasDefaultValueSql("((1))");

                entity.HasOne(d => d.DamageType)
                    .WithMany(p => p.Spell)
                    .HasForeignKey(d => d.DamageTypeId)
                    .HasConstraintName("FK_Spell_DamageType");

                entity.HasOne(d => d.SavingThrowAbility)
                    .WithMany(p => p.Spell)
                    .HasForeignKey(d => d.SavingThrowAbilityId)
                    .HasConstraintName("FK_Spell_Ability");

                entity.HasOne(d => d.Source)
                    .WithMany(p => p.Spell)
                    .HasForeignKey(d => d.SourceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Spell_Source");

                entity.HasOne(d => d.SpellSchool)
                    .WithMany(p => p.Spell)
                    .HasForeignKey(d => d.SpellSchoolId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Spell_SpellSchool");
            });

            modelBuilder.Entity<SpellList>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();
            });

            modelBuilder.Entity<SpellListSpell>(entity =>
            {
                entity.HasOne(d => d.Spell)
                    .WithMany(p => p.SpellListSpell)
                    .HasForeignKey(d => d.SpellId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_SpellListSpell_Spell");

                entity.HasOne(d => d.SpellList)
                    .WithMany(p => p.SpellListSpell)
                    .HasForeignKey(d => d.SpellListId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_SpellListSpell_SpellList");
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

                entity.Property(e => e.SourceId).HasDefaultValueSql("((1))");

                entity.HasOne(d => d.Race)
                    .WithMany(p => p.SubRace)
                    .HasForeignKey(d => d.RaceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_SubRace_Race");

                entity.HasOne(d => d.Source)
                    .WithMany(p => p.SubRace)
                    .HasForeignKey(d => d.SourceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_SubRace_Source");
            });

            modelBuilder.Entity<TraitType>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();
            });

            modelBuilder.Entity<Treasure>(entity =>
            {
                entity.Property(e => e.SourceId).HasDefaultValueSql("((1))");

                entity.HasOne(d => d.Source)
                    .WithMany(p => p.Treasure)
                    .HasForeignKey(d => d.SourceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Treasure_Source");
            });

            modelBuilder.Entity<WeaponType>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.HasOne(d => d.DamageType)
                    .WithMany(p => p.WeaponType)
                    .HasForeignKey(d => d.DamageTypeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_WeaponType_DamageType");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
