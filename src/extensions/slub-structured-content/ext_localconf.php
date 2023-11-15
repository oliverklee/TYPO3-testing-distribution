<?php

declare(strict_types=1);

use Slub\StructuredContent\Controller\RoomController;
use TYPO3\CMS\Extbase\Utility\ExtensionUtility;

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
