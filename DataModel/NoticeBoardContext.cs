using System;
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
        public virtual DbSet<Class> Class { get; set; }
        public virtual DbSet<ClassFeature> ClassFeature { get; set; }
        public virtual DbSet<ClassSkill> ClassSkill { get; set; }
        public virtual DbSet<DamageType> DamageType { get; set; }
        public virtual DbSet<Equipment> Equipment { get; set; }
        public virtual DbSet<EquipmentType> EquipmentType { get; set; }
        public virtual DbSet<Feature> Feature { get; set; }
        public virtual DbSet<Language> Language { get; set; }
        public virtual DbSet<Party> Party { get; set; }
        public virtual DbSet<PcAbilityScore> PcAbilityScore { get; set; }
        public virtual DbSet<PcEquipment> PcEquipment { get; set; }
        public virtual DbSet<PcFeature> PcFeature { get; set; }
        public virtual DbSet<PcLanguage> PcLanguage { get; set; }
        public virtual DbSet<PcSavingThrow> PcSavingThrow { get; set; }
        public virtual DbSet<PcSkill> PcSkill { get; set; }
        public virtual DbSet<PcSpell> PcSpell { get; set; }
        public virtual DbSet<PcTrait> PcTrait { get; set; }
        public virtual DbSet<PcTreasure> PcTreasure { get; set; }
        public virtual DbSet<Player> Player { get; set; }
        public virtual DbSet<PlayerCharacter> PlayerCharacter { get; set; }
        public virtual DbSet<Race> Race { get; set; }
        public virtual DbSet<RaceFeature> RaceFeature { get; set; }
        public virtual DbSet<RaceLanguage> RaceLanguage { get; set; }
        public virtual DbSet<Skill> Skill { get; set; }
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

            modelBuilder.Entity<ArmorType>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();
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

                entity.HasOne(d => d.SpellcastingAbility)
                    .WithMany(p => p.Class)
                    .HasForeignKey(d => d.SpellcastingAbilityId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Class_Ability");
            });

            modelBuilder.Entity<ClassFeature>(entity =>
            {
                entity.HasOne(d => d.Archetype)
                    .WithMany(p => p.ClassFeature)
                    .HasForeignKey(d => d.ArchetypeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
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

            modelBuilder.Entity<RaceFeature>(entity =>
            {
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

            modelBuilder.Entity<Spell>(entity =>
            {
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

                entity.HasOne(d => d.Race)
                    .WithMany(p => p.SubRace)
                    .HasForeignKey(d => d.RaceId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_SubRace_Race");
            });

            modelBuilder.Entity<TraitType>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();
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
