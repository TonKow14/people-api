-- CreateTable
CREATE TABLE `Person` (
    `id_person` INTEGER NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(191) NOT NULL,
    `last_name` VARCHAR(191) NOT NULL,
    `created_id` INTEGER NOT NULL,
    `created_date` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `modified_id` INTEGER NOT NULL,
    `modified_date` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id_person`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Wallet` (
    `id_wallet` INTEGER NOT NULL AUTO_INCREMENT,
    `money` DOUBLE NOT NULL,
    `created_id` INTEGER NOT NULL,
    `created_date` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `modified_id` INTEGER NOT NULL,
    `modified_date` DATETIME(3) NOT NULL,
    `person_id` INTEGER NOT NULL,

    PRIMARY KEY (`id_wallet`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Wallet` ADD CONSTRAINT `Wallet_person_id_fkey` FOREIGN KEY (`person_id`) REFERENCES `Person`(`id_person`) ON DELETE RESTRICT ON UPDATE CASCADE;
