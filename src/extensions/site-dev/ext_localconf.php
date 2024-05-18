<?php

use TYPO3\CMS\Core\Utility\ExtensionManagementUtility;

ExtensionManagementUtility::addPageTSConfig(
    '@import "EXT:site_dev/Configuration/TsConfig/Page/"'
);
ExtensionManagementUtility::addUserTSConfig(
    '@import "EXT:site_dev/Configuration/TsConfig/User/"'
);
