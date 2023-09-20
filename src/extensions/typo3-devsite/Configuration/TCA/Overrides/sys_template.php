<?php
defined('TYPO3') or die('Access denied.');

\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addStaticFile(
  'typo3_devsite',
  'Configuration/TypoScript',
  'TYPO3 development site'
);
