-- AlterTable
ALTER TABLE "OrganisationGlobalSettings" ALTER COLUMN "documentLanguage" SET DEFAULT 'pt-BR';

-- Update existing records that still have 'en'
UPDATE "OrganisationGlobalSettings" SET "documentLanguage" = 'pt-BR' WHERE "documentLanguage" = 'en';
UPDATE "DocumentMeta" SET "language" = 'pt-BR' WHERE "language" = 'en';
