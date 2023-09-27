<?php
defined('TYPO3') or die('Access denied.');

\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addStaticFile(
  'site_dev',
  'Configuration/TypoScript',
  'TYPO3 development site'
);
