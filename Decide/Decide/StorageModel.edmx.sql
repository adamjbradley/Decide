
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 10/02/2013 20:07:44
-- Generated from EDMX file: C:\Users\abradley\Documents\GitHub\Decide\Decide\Decide\StorageModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [waadjs_db];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_GroupPerson]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Entities_Person] DROP CONSTRAINT [FK_GroupPerson];
GO
IF OBJECT_ID(N'[dbo].[FK_GroupGroupDecision]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Decisions_GroupDecision] DROP CONSTRAINT [FK_GroupGroupDecision];
GO
IF OBJECT_ID(N'[dbo].[FK_EntityRole]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Roles] DROP CONSTRAINT [FK_EntityRole];
GO
IF OBJECT_ID(N'[dbo].[FK_EntityDecision_Entity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EntityDecision] DROP CONSTRAINT [FK_EntityDecision_Entity];
GO
IF OBJECT_ID(N'[dbo].[FK_EntityDecision_Decision]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EntityDecision] DROP CONSTRAINT [FK_EntityDecision_Decision];
GO
IF OBJECT_ID(N'[dbo].[FK_EntitySession]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Sessions] DROP CONSTRAINT [FK_EntitySession];
GO
IF OBJECT_ID(N'[dbo].[FK_EntitySocialIdentity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SocialIdentities] DROP CONSTRAINT [FK_EntitySocialIdentity];
GO
IF OBJECT_ID(N'[dbo].[FK_MyDecisionsDecision]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Decisions] DROP CONSTRAINT [FK_MyDecisionsDecision];
GO
IF OBJECT_ID(N'[dbo].[FK_OptionFactor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Factors] DROP CONSTRAINT [FK_OptionFactor];
GO
IF OBJECT_ID(N'[dbo].[FK_DecisionOptions]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Options1] DROP CONSTRAINT [FK_DecisionOptions];
GO
IF OBJECT_ID(N'[dbo].[FK_EntityKudos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Entities] DROP CONSTRAINT [FK_EntityKudos];
GO
IF OBJECT_ID(N'[dbo].[FK_EntityEntity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Entities] DROP CONSTRAINT [FK_EntityEntity];
GO
IF OBJECT_ID(N'[dbo].[FK_ComplexDecisionDecision]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Decisions] DROP CONSTRAINT [FK_ComplexDecisionDecision];
GO
IF OBJECT_ID(N'[dbo].[FK_EntityOptions]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Options1] DROP CONSTRAINT [FK_EntityOptions];
GO
IF OBJECT_ID(N'[dbo].[FK_ComplexDecisionEntity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Entities] DROP CONSTRAINT [FK_ComplexDecisionEntity];
GO
IF OBJECT_ID(N'[dbo].[FK_ComplexDecisionHistoryComplexDecision]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ComplexDecisions] DROP CONSTRAINT [FK_ComplexDecisionHistoryComplexDecision];
GO
IF OBJECT_ID(N'[dbo].[FK_DecisionRating]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Ratings] DROP CONSTRAINT [FK_DecisionRating];
GO
IF OBJECT_ID(N'[dbo].[FK_OptionsRating]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Ratings] DROP CONSTRAINT [FK_OptionsRating];
GO
IF OBJECT_ID(N'[dbo].[FK_EntityRating]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Ratings] DROP CONSTRAINT [FK_EntityRating];
GO
IF OBJECT_ID(N'[dbo].[FK_EntityFactor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Factors] DROP CONSTRAINT [FK_EntityFactor];
GO
IF OBJECT_ID(N'[dbo].[FK_FactorRating]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Ratings] DROP CONSTRAINT [FK_FactorRating];
GO
IF OBJECT_ID(N'[dbo].[FK_ComplexDecisionRating]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Ratings] DROP CONSTRAINT [FK_ComplexDecisionRating];
GO
IF OBJECT_ID(N'[dbo].[FK_Group_inherits_Entity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Entities_Group] DROP CONSTRAINT [FK_Group_inherits_Entity];
GO
IF OBJECT_ID(N'[dbo].[FK_Person_inherits_Entity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Entities_Person] DROP CONSTRAINT [FK_Person_inherits_Entity];
GO
IF OBJECT_ID(N'[dbo].[FK_GroupDecision_inherits_Decision]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Decisions_GroupDecision] DROP CONSTRAINT [FK_GroupDecision_inherits_Decision];
GO
IF OBJECT_ID(N'[dbo].[FK_Facebook_inherits_SocialIdentity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SocialIdentities_Facebook] DROP CONSTRAINT [FK_Facebook_inherits_SocialIdentity];
GO
IF OBJECT_ID(N'[dbo].[FK_Twitter_inherits_SocialIdentity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SocialIdentities_Twitter] DROP CONSTRAINT [FK_Twitter_inherits_SocialIdentity];
GO
IF OBJECT_ID(N'[dbo].[FK_GooglePlus_inherits_SocialIdentity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SocialIdentities_GooglePlus] DROP CONSTRAINT [FK_GooglePlus_inherits_SocialIdentity];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Factors]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Factors];
GO
IF OBJECT_ID(N'[dbo].[Decisions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Decisions];
GO
IF OBJECT_ID(N'[dbo].[Roles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Roles];
GO
IF OBJECT_ID(N'[dbo].[Entities]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Entities];
GO
IF OBJECT_ID(N'[dbo].[Sessions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Sessions];
GO
IF OBJECT_ID(N'[dbo].[SocialIdentities]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SocialIdentities];
GO
IF OBJECT_ID(N'[dbo].[Wisdoms]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Wisdoms];
GO
IF OBJECT_ID(N'[dbo].[Options1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Options1];
GO
IF OBJECT_ID(N'[dbo].[Reputations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Reputations];
GO
IF OBJECT_ID(N'[dbo].[ComplexDecisions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ComplexDecisions];
GO
IF OBJECT_ID(N'[dbo].[ComplexDecisionHistories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ComplexDecisionHistories];
GO
IF OBJECT_ID(N'[dbo].[Ratings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Ratings];
GO
IF OBJECT_ID(N'[dbo].[Entities_Group]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Entities_Group];
GO
IF OBJECT_ID(N'[dbo].[Entities_Person]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Entities_Person];
GO
IF OBJECT_ID(N'[dbo].[Decisions_GroupDecision]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Decisions_GroupDecision];
GO
IF OBJECT_ID(N'[dbo].[SocialIdentities_Facebook]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SocialIdentities_Facebook];
GO
IF OBJECT_ID(N'[dbo].[SocialIdentities_Twitter]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SocialIdentities_Twitter];
GO
IF OBJECT_ID(N'[dbo].[SocialIdentities_GooglePlus]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SocialIdentities_GooglePlus];
GO
IF OBJECT_ID(N'[dbo].[EntityDecision]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EntityDecision];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Factors'
CREATE TABLE [dbo].[Factors] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Weight] nvarchar(max)  NOT NULL,
    [DateCreated] datetime  NOT NULL,
    [DateModified] datetime  NOT NULL,
    [Version] nvarchar(max)  NOT NULL,
    [IsHeart] nvarchar(max)  NOT NULL,
    [IsHead] nvarchar(max)  NOT NULL,
    [Option_Id] int  NOT NULL,
    [Entity_Id] int  NOT NULL
);
GO

-- Creating table 'Decisions'
CREATE TABLE [dbo].[Decisions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [IsPrivate] bit  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [DateCreated] datetime  NOT NULL,
    [DateModified] datetime  NOT NULL,
    [Version] nvarchar(max)  NOT NULL,
    [IsSocial] bit  NOT NULL,
    [IsPersonal] bit  NOT NULL,
    [IsPublic] bit  NOT NULL,
    [Weight] nvarchar(max)  NOT NULL,
    [IsHeart] nvarchar(max)  NOT NULL,
    [IsHead] nvarchar(max)  NOT NULL,
    [Wisdom_Id] int  NOT NULL,
    [ComplexDecision_Id] int  NOT NULL,
    [DecisionHistory_Id] int  NOT NULL
);
GO

-- Creating table 'Roles'
CREATE TABLE [dbo].[Roles] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [IsGlobalAdmin] bit  NOT NULL,
    [IsAuthenticated] bit  NOT NULL,
    [IsTrusted] bit  NOT NULL,
    [Entity_Id] int  NOT NULL
);
GO

-- Creating table 'Entities'
CREATE TABLE [dbo].[Entities] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Reputation_Id] int  NOT NULL,
    [EntityEntity_Entity1_Id] int  NOT NULL,
    [ComplexDecisions_Id] int  NOT NULL
);
GO

-- Creating table 'Sessions'
CREATE TABLE [dbo].[Sessions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Entity_Id] int  NOT NULL
);
GO

-- Creating table 'SocialIdentities'
CREATE TABLE [dbo].[SocialIdentities] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [IsTwitter] nvarchar(max)  NOT NULL,
    [IsFacebook] nvarchar(max)  NOT NULL,
    [IsGooglePlus] nvarchar(max)  NOT NULL,
    [Entity_Id] int  NOT NULL
);
GO

-- Creating table 'Wisdom'
CREATE TABLE [dbo].[Wisdom] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'Options1'
CREATE TABLE [dbo].[Options1] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [DateCreated] datetime  NOT NULL,
    [DateModified] datetime  NOT NULL,
    [IsMostPopular] bit  NOT NULL,
    [IsLeastPopular] bit  NOT NULL,
    [Version] nvarchar(max)  NOT NULL,
    [Chosen] bit  NOT NULL,
    [TimeSelected] datetime  NOT NULL,
    [IsHeart] nvarchar(max)  NOT NULL,
    [IsHead] nvarchar(max)  NOT NULL,
    [Decision_Id] int  NOT NULL,
    [Entity_Id] int  NOT NULL
);
GO

-- Creating table 'Reputations'
CREATE TABLE [dbo].[Reputations] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Score] bigint  NOT NULL
);
GO

-- Creating table 'ComplexDecisions'
CREATE TABLE [dbo].[ComplexDecisions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ComplexDecisionHistory_Id] int  NOT NULL
);
GO

-- Creating table 'ComplexDecisionHistories'
CREATE TABLE [dbo].[ComplexDecisionHistories] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Version] bigint  NOT NULL,
    [DateTime] datetime  NOT NULL
);
GO

-- Creating table 'Ratings'
CREATE TABLE [dbo].[Ratings] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Summary] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Value] bigint  NOT NULL,
    [Decision_Id] int  NOT NULL,
    [Option_Id] int  NOT NULL,
    [Entity_Id] int  NOT NULL,
    [Factor_Id] int  NOT NULL,
    [ComplexDecision_Id] int  NOT NULL
);
GO

-- Creating table 'DecisionHistories'
CREATE TABLE [dbo].[DecisionHistories] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Version] nvarchar(max)  NOT NULL,
    [DateTime] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Entities_Group'
CREATE TABLE [dbo].[Entities_Group] (
    [Id] int  NOT NULL
);
GO

-- Creating table 'Entities_Person'
CREATE TABLE [dbo].[Entities_Person] (
    [Id] int  NOT NULL,
    [Group_Id] int  NOT NULL
);
GO

-- Creating table 'Decisions_GroupDecision'
CREATE TABLE [dbo].[Decisions_GroupDecision] (
    [Id] int  NOT NULL,
    [Group_Id] int  NOT NULL
);
GO

-- Creating table 'SocialIdentities_Facebook'
CREATE TABLE [dbo].[SocialIdentities_Facebook] (
    [Identity] nvarchar(max)  NOT NULL,
    [Publish] nvarchar(max)  NOT NULL,
    [PublishAlways] nvarchar(max)  NOT NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'SocialIdentities_Twitter'
CREATE TABLE [dbo].[SocialIdentities_Twitter] (
    [Identity] nvarchar(max)  NOT NULL,
    [Publish] nvarchar(max)  NOT NULL,
    [PublishAlways] nvarchar(max)  NOT NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'SocialIdentities_GooglePlus'
CREATE TABLE [dbo].[SocialIdentities_GooglePlus] (
    [Identity] nvarchar(max)  NOT NULL,
    [Publish] nvarchar(max)  NOT NULL,
    [PublishAlways] nvarchar(max)  NOT NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'EntityDecision'
CREATE TABLE [dbo].[EntityDecision] (
    [Entity_Id] int  NOT NULL,
    [Decisions_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Factors'
ALTER TABLE [dbo].[Factors]
ADD CONSTRAINT [PK_Factors]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Decisions'
ALTER TABLE [dbo].[Decisions]
ADD CONSTRAINT [PK_Decisions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Roles'
ALTER TABLE [dbo].[Roles]
ADD CONSTRAINT [PK_Roles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Entities'
ALTER TABLE [dbo].[Entities]
ADD CONSTRAINT [PK_Entities]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Sessions'
ALTER TABLE [dbo].[Sessions]
ADD CONSTRAINT [PK_Sessions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SocialIdentities'
ALTER TABLE [dbo].[SocialIdentities]
ADD CONSTRAINT [PK_SocialIdentities]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Wisdom'
ALTER TABLE [dbo].[Wisdom]
ADD CONSTRAINT [PK_Wisdom]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Options1'
ALTER TABLE [dbo].[Options1]
ADD CONSTRAINT [PK_Options1]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Reputations'
ALTER TABLE [dbo].[Reputations]
ADD CONSTRAINT [PK_Reputations]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ComplexDecisions'
ALTER TABLE [dbo].[ComplexDecisions]
ADD CONSTRAINT [PK_ComplexDecisions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ComplexDecisionHistories'
ALTER TABLE [dbo].[ComplexDecisionHistories]
ADD CONSTRAINT [PK_ComplexDecisionHistories]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Ratings'
ALTER TABLE [dbo].[Ratings]
ADD CONSTRAINT [PK_Ratings]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DecisionHistories'
ALTER TABLE [dbo].[DecisionHistories]
ADD CONSTRAINT [PK_DecisionHistories]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Entities_Group'
ALTER TABLE [dbo].[Entities_Group]
ADD CONSTRAINT [PK_Entities_Group]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Entities_Person'
ALTER TABLE [dbo].[Entities_Person]
ADD CONSTRAINT [PK_Entities_Person]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Decisions_GroupDecision'
ALTER TABLE [dbo].[Decisions_GroupDecision]
ADD CONSTRAINT [PK_Decisions_GroupDecision]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SocialIdentities_Facebook'
ALTER TABLE [dbo].[SocialIdentities_Facebook]
ADD CONSTRAINT [PK_SocialIdentities_Facebook]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SocialIdentities_Twitter'
ALTER TABLE [dbo].[SocialIdentities_Twitter]
ADD CONSTRAINT [PK_SocialIdentities_Twitter]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SocialIdentities_GooglePlus'
ALTER TABLE [dbo].[SocialIdentities_GooglePlus]
ADD CONSTRAINT [PK_SocialIdentities_GooglePlus]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Entity_Id], [Decisions_Id] in table 'EntityDecision'
ALTER TABLE [dbo].[EntityDecision]
ADD CONSTRAINT [PK_EntityDecision]
    PRIMARY KEY NONCLUSTERED ([Entity_Id], [Decisions_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Group_Id] in table 'Entities_Person'
ALTER TABLE [dbo].[Entities_Person]
ADD CONSTRAINT [FK_GroupPerson]
    FOREIGN KEY ([Group_Id])
    REFERENCES [dbo].[Entities_Group]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_GroupPerson'
CREATE INDEX [IX_FK_GroupPerson]
ON [dbo].[Entities_Person]
    ([Group_Id]);
GO

-- Creating foreign key on [Group_Id] in table 'Decisions_GroupDecision'
ALTER TABLE [dbo].[Decisions_GroupDecision]
ADD CONSTRAINT [FK_GroupGroupDecision]
    FOREIGN KEY ([Group_Id])
    REFERENCES [dbo].[Entities_Group]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_GroupGroupDecision'
CREATE INDEX [IX_FK_GroupGroupDecision]
ON [dbo].[Decisions_GroupDecision]
    ([Group_Id]);
GO

-- Creating foreign key on [Entity_Id] in table 'Roles'
ALTER TABLE [dbo].[Roles]
ADD CONSTRAINT [FK_EntityRole]
    FOREIGN KEY ([Entity_Id])
    REFERENCES [dbo].[Entities]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EntityRole'
CREATE INDEX [IX_FK_EntityRole]
ON [dbo].[Roles]
    ([Entity_Id]);
GO

-- Creating foreign key on [Entity_Id] in table 'EntityDecision'
ALTER TABLE [dbo].[EntityDecision]
ADD CONSTRAINT [FK_EntityDecision_Entity]
    FOREIGN KEY ([Entity_Id])
    REFERENCES [dbo].[Entities]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Decisions_Id] in table 'EntityDecision'
ALTER TABLE [dbo].[EntityDecision]
ADD CONSTRAINT [FK_EntityDecision_Decision]
    FOREIGN KEY ([Decisions_Id])
    REFERENCES [dbo].[Decisions]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EntityDecision_Decision'
CREATE INDEX [IX_FK_EntityDecision_Decision]
ON [dbo].[EntityDecision]
    ([Decisions_Id]);
GO

-- Creating foreign key on [Entity_Id] in table 'Sessions'
ALTER TABLE [dbo].[Sessions]
ADD CONSTRAINT [FK_EntitySession]
    FOREIGN KEY ([Entity_Id])
    REFERENCES [dbo].[Entities]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EntitySession'
CREATE INDEX [IX_FK_EntitySession]
ON [dbo].[Sessions]
    ([Entity_Id]);
GO

-- Creating foreign key on [Entity_Id] in table 'SocialIdentities'
ALTER TABLE [dbo].[SocialIdentities]
ADD CONSTRAINT [FK_EntitySocialIdentity]
    FOREIGN KEY ([Entity_Id])
    REFERENCES [dbo].[Entities]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EntitySocialIdentity'
CREATE INDEX [IX_FK_EntitySocialIdentity]
ON [dbo].[SocialIdentities]
    ([Entity_Id]);
GO

-- Creating foreign key on [Wisdom_Id] in table 'Decisions'
ALTER TABLE [dbo].[Decisions]
ADD CONSTRAINT [FK_MyDecisionsDecision]
    FOREIGN KEY ([Wisdom_Id])
    REFERENCES [dbo].[Wisdom]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_MyDecisionsDecision'
CREATE INDEX [IX_FK_MyDecisionsDecision]
ON [dbo].[Decisions]
    ([Wisdom_Id]);
GO

-- Creating foreign key on [Option_Id] in table 'Factors'
ALTER TABLE [dbo].[Factors]
ADD CONSTRAINT [FK_OptionFactor]
    FOREIGN KEY ([Option_Id])
    REFERENCES [dbo].[Options1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_OptionFactor'
CREATE INDEX [IX_FK_OptionFactor]
ON [dbo].[Factors]
    ([Option_Id]);
GO

-- Creating foreign key on [Decision_Id] in table 'Options1'
ALTER TABLE [dbo].[Options1]
ADD CONSTRAINT [FK_DecisionOptions]
    FOREIGN KEY ([Decision_Id])
    REFERENCES [dbo].[Decisions]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DecisionOptions'
CREATE INDEX [IX_FK_DecisionOptions]
ON [dbo].[Options1]
    ([Decision_Id]);
GO

-- Creating foreign key on [Reputation_Id] in table 'Entities'
ALTER TABLE [dbo].[Entities]
ADD CONSTRAINT [FK_EntityKudos]
    FOREIGN KEY ([Reputation_Id])
    REFERENCES [dbo].[Reputations]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EntityKudos'
CREATE INDEX [IX_FK_EntityKudos]
ON [dbo].[Entities]
    ([Reputation_Id]);
GO

-- Creating foreign key on [EntityEntity_Entity1_Id] in table 'Entities'
ALTER TABLE [dbo].[Entities]
ADD CONSTRAINT [FK_EntityEntity]
    FOREIGN KEY ([EntityEntity_Entity1_Id])
    REFERENCES [dbo].[Entities]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EntityEntity'
CREATE INDEX [IX_FK_EntityEntity]
ON [dbo].[Entities]
    ([EntityEntity_Entity1_Id]);
GO

-- Creating foreign key on [ComplexDecision_Id] in table 'Decisions'
ALTER TABLE [dbo].[Decisions]
ADD CONSTRAINT [FK_ComplexDecisionDecision]
    FOREIGN KEY ([ComplexDecision_Id])
    REFERENCES [dbo].[ComplexDecisions]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ComplexDecisionDecision'
CREATE INDEX [IX_FK_ComplexDecisionDecision]
ON [dbo].[Decisions]
    ([ComplexDecision_Id]);
GO

-- Creating foreign key on [Entity_Id] in table 'Options1'
ALTER TABLE [dbo].[Options1]
ADD CONSTRAINT [FK_EntityOptions]
    FOREIGN KEY ([Entity_Id])
    REFERENCES [dbo].[Entities]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EntityOptions'
CREATE INDEX [IX_FK_EntityOptions]
ON [dbo].[Options1]
    ([Entity_Id]);
GO

-- Creating foreign key on [ComplexDecisions_Id] in table 'Entities'
ALTER TABLE [dbo].[Entities]
ADD CONSTRAINT [FK_ComplexDecisionEntity]
    FOREIGN KEY ([ComplexDecisions_Id])
    REFERENCES [dbo].[ComplexDecisions]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ComplexDecisionEntity'
CREATE INDEX [IX_FK_ComplexDecisionEntity]
ON [dbo].[Entities]
    ([ComplexDecisions_Id]);
GO

-- Creating foreign key on [ComplexDecisionHistory_Id] in table 'ComplexDecisions'
ALTER TABLE [dbo].[ComplexDecisions]
ADD CONSTRAINT [FK_ComplexDecisionHistoryComplexDecision]
    FOREIGN KEY ([ComplexDecisionHistory_Id])
    REFERENCES [dbo].[ComplexDecisionHistories]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ComplexDecisionHistoryComplexDecision'
CREATE INDEX [IX_FK_ComplexDecisionHistoryComplexDecision]
ON [dbo].[ComplexDecisions]
    ([ComplexDecisionHistory_Id]);
GO

-- Creating foreign key on [Decision_Id] in table 'Ratings'
ALTER TABLE [dbo].[Ratings]
ADD CONSTRAINT [FK_DecisionRating]
    FOREIGN KEY ([Decision_Id])
    REFERENCES [dbo].[Decisions]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DecisionRating'
CREATE INDEX [IX_FK_DecisionRating]
ON [dbo].[Ratings]
    ([Decision_Id]);
GO

-- Creating foreign key on [Option_Id] in table 'Ratings'
ALTER TABLE [dbo].[Ratings]
ADD CONSTRAINT [FK_OptionsRating]
    FOREIGN KEY ([Option_Id])
    REFERENCES [dbo].[Options1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_OptionsRating'
CREATE INDEX [IX_FK_OptionsRating]
ON [dbo].[Ratings]
    ([Option_Id]);
GO

-- Creating foreign key on [Entity_Id] in table 'Ratings'
ALTER TABLE [dbo].[Ratings]
ADD CONSTRAINT [FK_EntityRating]
    FOREIGN KEY ([Entity_Id])
    REFERENCES [dbo].[Entities]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EntityRating'
CREATE INDEX [IX_FK_EntityRating]
ON [dbo].[Ratings]
    ([Entity_Id]);
GO

-- Creating foreign key on [Entity_Id] in table 'Factors'
ALTER TABLE [dbo].[Factors]
ADD CONSTRAINT [FK_EntityFactor]
    FOREIGN KEY ([Entity_Id])
    REFERENCES [dbo].[Entities]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EntityFactor'
CREATE INDEX [IX_FK_EntityFactor]
ON [dbo].[Factors]
    ([Entity_Id]);
GO

-- Creating foreign key on [Factor_Id] in table 'Ratings'
ALTER TABLE [dbo].[Ratings]
ADD CONSTRAINT [FK_FactorRating]
    FOREIGN KEY ([Factor_Id])
    REFERENCES [dbo].[Factors]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_FactorRating'
CREATE INDEX [IX_FK_FactorRating]
ON [dbo].[Ratings]
    ([Factor_Id]);
GO

-- Creating foreign key on [ComplexDecision_Id] in table 'Ratings'
ALTER TABLE [dbo].[Ratings]
ADD CONSTRAINT [FK_ComplexDecisionRating]
    FOREIGN KEY ([ComplexDecision_Id])
    REFERENCES [dbo].[ComplexDecisions]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ComplexDecisionRating'
CREATE INDEX [IX_FK_ComplexDecisionRating]
ON [dbo].[Ratings]
    ([ComplexDecision_Id]);
GO

-- Creating foreign key on [DecisionHistory_Id] in table 'Decisions'
ALTER TABLE [dbo].[Decisions]
ADD CONSTRAINT [FK_DecisionHistoryDecision]
    FOREIGN KEY ([DecisionHistory_Id])
    REFERENCES [dbo].[DecisionHistories]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DecisionHistoryDecision'
CREATE INDEX [IX_FK_DecisionHistoryDecision]
ON [dbo].[Decisions]
    ([DecisionHistory_Id]);
GO

-- Creating foreign key on [Id] in table 'Entities_Group'
ALTER TABLE [dbo].[Entities_Group]
ADD CONSTRAINT [FK_Group_inherits_Entity]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Entities]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'Entities_Person'
ALTER TABLE [dbo].[Entities_Person]
ADD CONSTRAINT [FK_Person_inherits_Entity]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Entities]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'Decisions_GroupDecision'
ALTER TABLE [dbo].[Decisions_GroupDecision]
ADD CONSTRAINT [FK_GroupDecision_inherits_Decision]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Decisions]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'SocialIdentities_Facebook'
ALTER TABLE [dbo].[SocialIdentities_Facebook]
ADD CONSTRAINT [FK_Facebook_inherits_SocialIdentity]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[SocialIdentities]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'SocialIdentities_Twitter'
ALTER TABLE [dbo].[SocialIdentities_Twitter]
ADD CONSTRAINT [FK_Twitter_inherits_SocialIdentity]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[SocialIdentities]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'SocialIdentities_GooglePlus'
ALTER TABLE [dbo].[SocialIdentities_GooglePlus]
ADD CONSTRAINT [FK_GooglePlus_inherits_SocialIdentity]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[SocialIdentities]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------