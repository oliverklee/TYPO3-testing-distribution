<?php

use TYPO3\CMS\Core\Cache\Backend\Typo3DatabaseBackend;
use TYPO3\CMS\Core\Crypto\PasswordHashing\Argon2idPasswordHash;
use TYPO3\CMS\Core\Log\LogLevel;
use TYPO3\CMS\Core\Log\Writer\FileWriter;

return [
    'BE' => [
        'debug' => true,
        'installToolPassword' => '$argon2i$v=19$m=65536,t=16,p=1$LllPa2ZNY29LU2RRcGpUdQ$SgfBdtrn3pBh7s7NeGipTaTd0K3F67iAJCmSQB9RbI8',
        'passwordHashing' => [
            'className' => Argon2idPasswordHash::class,
            'options' => [],
        ],
    ],
    'DB' => [
        'Connections' => [
            'Default' => [
                'charset' => 'utf8mb4',
                'driver' => 'pdo_mysql',
                'tableoptions' => [
                    'charset' => 'utf8mb4',
                    'collate' => 'utf8mb4_unicode_ci',
                ],
            ],
        ],
    ],
    'EXT' => [],
    'EXTCONF' => [
        'helhum-typo3-console' => [
            'initialUpgradeDone' => '11.5',
        ],
        'lang' => [
            'availableLanguages' => [
                'de',
            ],
        ],
    ],
    'EXTENSIONS' => [
        'backend' => [
            'backendFavicon' => '',
            'backendLogo' => '',
            'loginBackgroundImage' => '',
            'loginFootnote' => '',
            'loginHighlightColor' => '',
            'loginLogo' => '',
            'loginLogoAlt' => '',
        ],
        'extensionmanager' => [
            'automaticInstallation' => '1',
            'offlineMode' => '0',
        ],
        'indexed_search' => [
            'catdoc' => '/usr/bin/',
            'debugMode' => '0',
            'deleteFromIndexAfterEditing' => '1',
            'disableFrontendIndexing' => '0',
            'enableMetaphoneSearch' => '1',
            'flagBitMask' => '192',
            'fullTextDataLength' => '0',
            'ignoreExtensions' => '',
            'indexExternalURLs' => '0',
            'maxAge' => '0',
            'maxExternalFiles' => '5',
            'minAge' => '24',
            'pdf_mode' => '20',
            'pdftools' => '/usr/bin/',
            'ppthtml' => '/usr/bin/',
            'unrtf' => '/usr/bin/',
            'unzip' => '/usr/bin/',
            'useCrawlerForExternalFiles' => '0',
            'useMysqlFulltext' => '0',
            'xlhtml' => '/usr/bin/',
        ],
        'onetimeaccount' => [
            'enableConfigCheck' => '1',
        ],
        'scheduler' => [
            'maxLifetime' => '1440',
        ],
        'seminars' => [
            'enableConfigCheck' => '1',
        ],
        'static_info_tables' => [
            'enableManager' => '0',
        ],
    ],
    'FE' => [
        'debug' => true,
        'passwordHashing' => [
            'className' => Argon2idPasswordHash::class,
            'options' => [],
        ],
    ],
    'GFX' => [
        'processor' => 'GraphicsMagick',
        'processor_allowTemporaryMasksAsPng' => false,
        'processor_colorspace' => 'RGB',
        'processor_effects' => false,
        'processor_enabled' => true,
        'processor_path' => '/usr/bin/',
    ],
    'LOG' => [
        'writerConfiguration' => [
            LogLevel::DEBUG => [
                FileWriter::class => [
                    'disabled' => false,
                    'logFileInfix' => 'debug',
                ],
            ],
            LogLevel::INFO => [
                FileWriter::class => [
                    'disabled' => false,
                    'logFileInfix' => 'info',
                ],
            ],
            LogLevel::NOTICE => [
                FileWriter::class => [
                    'disabled' => false,
                    'logFileInfix' => 'notice',
                ],
            ],
            LogLevel::WARNING => [
                FileWriter::class => [
                    'disabled' => false,
                    'logFileInfix' => 'warning',
                ],
            ],
        ],
        'TYPO3' => [
            'HtmlSanitizer' => [
                'writerConfiguration' => [
                    LogLevel::DEBUG => [
                        FileWriter::class => [
                            'disabled' => false,
                            'logFileInfix' => 'html',
                        ],
                    ],
                ],
            ],
            'CMS' => [
                'deprecations' => [
                    'writerConfiguration' => [
                        LogLevel::NOTICE => [
                            FileWriter::class => [
                                'disabled' => false,
                            ],
                        ],
                    ],
                ],
            ],
        ],
    ],
    'MAIL' => [
        'transport' => 'sendmail',
        'transport_sendmail_command' => '/usr/local/bin/mailpit sendmail --smtp-addr 127.0.0.1:1025',
        'transport_smtp_encrypt' => '',
        'transport_smtp_password' => '',
        'transport_smtp_server' => '',
        'transport_smtp_username' => '',
    ],
    'SYS' => [
        'caching' => [
            'cacheConfigurations' => [
                'hash' => [
                    'backend' => Typo3DatabaseBackend::class,
                ],
                'imagesizes' => [
                    'backend' => Typo3DatabaseBackend::class,
                    'options' => [
                        'compression' => true,
                    ],
                ],
                'pages' => [
                    'backend' => Typo3DatabaseBackend::class,
                    'options' => [
                        'compression' => true,
                    ],
                ],
                'rootline' => [
                    'backend' => Typo3DatabaseBackend::class,
                    'options' => [
                        'compression' => true,
                    ],
                ],
            ],
        ],
        'devIPmask' => '*',
        'displayErrors' => 1,
        'encryptionKey' => '52a4aa6dfdd2da877dc765d4651d3b161e91b26cc543eb8ce62e53fe5cc0bcfb304f43edb8d898cb8340a6310d7dbade',
        'exceptionalErrors' => 12290,
        'features' => [
            'newTranslationServer' => true,
            'security.usePasswordPolicyForFrontendUsers' => true,
            'unifiedPageTranslationHandling' => true,
        ],
        'sitename' => 'TYPO3 testing site',
        'systemLocale' => 'de_DE.UTF-8',
        'systemMaintainers' => [
            1,
        ],
    ],
];
