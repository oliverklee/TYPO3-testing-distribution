<?php

defined('TYPO3') || die();

call_user_func(
    static function (): void {
        // This makes the plugin selectable in the BE.
        \TYPO3\CMS\Extbase\Utility\ExtensionUtility::registerPlugin(
        // extension name, matching the PHP namespaces (but without the vendor)
            'structured_content',
            // arbitrary, but unique plugin name (not visible in the BE)
            'Room',
            // plugin title, as visible in the drop-down in the BE
            'LLL:EXT:slub_structured_content/Resources/Private/Language/locallang.xlf:plugin.room_index',
            // the icon visible in the drop-down in the BE
            'EXT:slub_structured_content/Resources/Public/Icons/Extension.svg'
        );

        // This removes the default controls from the plugin.
        $controlsToRemove = 'recursive,select_key,pages';
        $GLOBALS['TCA']['tt_content']['types']['list']['subtypes_excludelist']['structuredcontent_room'] = $controlsToRemove;
    }
);
