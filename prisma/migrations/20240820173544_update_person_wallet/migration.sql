-- AlterTable
ALTER TABLE `Person` MODIFY `first_name` VARCHAR(191) NULL,
    MODIFY `last_name` VARCHAR(191) NULL,
    MODIFY `created_id` INTEGER NULL,
    MODIFY `created_date` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    MODIFY `modified_id` INTEGER NULL,
    MODIFY `modified_date` DATETIME(3) NULL;

-- AlterTable
ALTER TABLE `Wallet` MODIFY `money` DOUBLE NULL,
    MODIFY `created_id` INTEGER NULL,
    MODIFY `created_date` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    MODIFY `modified_id` INTEGER NULL,
    MODIFY `modified_date` DATETIME(3) NULL;
