### nginx-php7fpm-redis-for-magento2-envplate

Based on donamkhanh/nginx-php7fpm-redis-for-magento2:v4

 * Adds envplate to template nginx config with env vars
 * enables opcache
 * sets PHP variable order to EGPCS
 * sets nginx clear_env to no
 
Available env vars:

 * MAGE_MODE
 * MAGENTO2_BACKEND_FRONTNAME
 * MAGENTO2_DB_HOST
 * MAGENTO2_DB_DBNAME
 * MAGENTO2_DB_TABLE_PREFIX
 * MAGENTO2_DB_USERNAME
 * MAGENTO2_DB_PASSWORD
 * MAGENTO2_REDIS_HOST
 * MAGE_RUN_CODE
 * MAGE_RUN_TYPE
