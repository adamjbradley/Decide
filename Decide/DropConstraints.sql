
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 10/04/2013 12:00:21
-- Generated from EDMX file: C:\Users\abradley\Documents\GitHub\Decide\Decide\Decide\StorageModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [waadjs_db];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

    ALTER TABLE [dbo].[Factors] NOCHECK CONSTRAINT all;
    ALTER TABLE [dbo].[Decisions] NOCHECK CONSTRAINT all;
    ALTER TABLE [dbo].[Roles] NOCHECK CONSTRAINT all;
    ALTER TABLE [dbo].[Entities] NOCHECK CONSTRAINT all;
    ALTER TABLE [dbo].[Sessions] NOCHECK CONSTRAINT all;
    ALTER TABLE [dbo].[Wisdom] NOCHECK CONSTRAINT all;
    ALTER TABLE [dbo].[Options] NOCHECK CONSTRAINT all;
    ALTER TABLE [dbo].[Reputations] NOCHECK CONSTRAINT all;
    ALTER TABLE [dbo].[ComplexDecisions] NOCHECK CONSTRAINT all;
    ALTER TABLE [dbo].[ComplexDecisionHistories] NOCHECK CONSTRAINT all;
    ALTER TABLE [dbo].[Ratings] NOCHECK CONSTRAINT all;
    ALTER TABLE [dbo].[DecisionHistories] NOCHECK CONSTRAINT all;
    ALTER TABLE [dbo].[DecusionHistories] NOCHECK CONSTRAINT all;
    ALTER TABLE [dbo].[Entities_Group] NOCHECK CONSTRAINT all;
    ALTER TABLE [dbo].[Entities_Person] NOCHECK CONSTRAINT all;
    ALTER TABLE [dbo].[Decisions_GroupDecision] NOCHECK CONSTRAINT all;
    ALTER TABLE [dbo].[EntityDecision] NOCHECK CONSTRAINT all;
GO

