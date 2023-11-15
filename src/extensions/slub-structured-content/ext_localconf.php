<?php

declare(strict_types=1);

use Slub\StructuredContent\Controller\RoomController;
use TYPO3\CMS\Core\Utility\GeneralUtility;
use TYPO3\CMS\Extbase\Utility\ExtensionUtility;
use TYPO3\CMS\Core\Information\Typo3Version;
use TYPO3\CMS\Core\Utility\ExtensionManagementUtility;

defined('TYPO3') or die('Access denied.');

ExtensionUtility::configurePlugin(
    // extension name, matching the PHP namespaces (but without the vendor)
    'structured_content',
    // arbitrary, but unique plugin name (not visible in the BE)
    'Room',
    // all actions
    [
    RoomController::class => 'index,search,show',
    ],
    // non-cacheable actions
    [
    RoomController::class => 'search',
    ]
);

$versionInformation = GeneralUtility::makeInstance(Typo3Version::class);
// Only include page.tsconfig if TYPO3 version is below 12 so that it is not imported twice.
if ($versionInformation->getMajorVersion() < 12) {
    ExtensionManagementUtility::addPageTSConfig(
        '@import "EXT:structured_content/Configuration/page.tsconfig"'
    );
}
