<?php
return [
    'BE' => [
        'debug' => true,
        'explicitADmode' => 'explicitAllow',
        'installToolPassword' => '$argon2i$v=19$m=65536,t=16,p=1$YU5FTVJBdExRaUFJNnhvbw$wSZvR/qYmk/cD4xUdxsR4HFQYSkybvbL8CdRvGSa1sA',
        'loginSecurityLevel' => 'normal',
        'passwordHashing' => [
            'className' => 'TYPO3\\CMS\\Core\\Crypto\\PasswordHashing\\Argon2iPasswordHash',
            'options' => [],
        ],
    ],
    'DB' => [
        'Connections' => [
            'Default' => [
                'charset' => 'utf8mb4',
                'dbname' => 'db',
                'driver' => 'mysqli',
                'host' => 'db',
                'password' => 'db',
                'port' => 3306,
                'tableoptions' => [
                    'charset' => 'utf8mb4',
                    'collate' => 'utf8mb4_unicode_ci',
                ],
                'user' => 'db',
            ],
        ],
    ],
    'EXT' => [
        'extConf' => [
            'backend' => 'a:6:{s:9:"loginLogo";s:0:"";s:19:"loginHighlightColor";s:0:"";s:20:"loginBackgroundImage";s:0:"";s:13:"loginFootnote";s:0:"";s:11:"backendLogo";s:0:"";s:14:"backendFavicon";s:0:"";}',
            'extensionmanager' => 'a:2:{s:21:"automaticInstallation";s:1:"1";s:11:"offlineMode";s:1:"0";}',
            'mkforms' => 'a:2:{s:13:"activateCache";s:1:"0";s:12:"listerNameId";s:1:"0";}',
            'onetimeaccount' => 'a:1:{s:17:"enableConfigCheck";s:1:"1";}',
            'rn_base' => 'a:11:{s:13:"verboseMayday";s:1:"0";s:11:"dieOnMayday";s:1:"1";s:21:"forceException4Mayday";s:1:"1";s:16:"exceptionHandler";s:0:"";s:20:"sendEmailOnException";s:0:"";s:9:"fromEmail";s:0:"";s:24:"send503HeaderOnException";s:1:"1";s:17:"loadHiddenObjects";s:1:"0";s:13:"activateCache";s:1:"0";s:18:"activateSubstCache";s:1:"0";s:8:"debugKey";s:0:"";}',
            'scheduler' => 'a:2:{s:11:"maxLifetime";s:4:"1440";s:15:"showSampleTasks";s:1:"1";}',
            'seminars' => 'a:2:{s:17:"enableConfigCheck";s:1:"1";s:23:"eMailFormatForAttendees";s:1:"0";}',
            'static_info_tables' => 'a:1:{s:13:"enableManager";s:1:"0";}',
        ],
    ],
    'EXTCONF' => [
        'helhum-typo3-console' => [
            'initialUpgradeDone' => '9.5',
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
        ],
        'extensionmanager' => [
            'automaticInstallation' => '1',
            'offlineMode' => '0',
        ],
        'mkforms' => [
            'activateCache' => '0',
            'listerNameId' => '0',
        ],
        'onetimeaccount' => [
            'enableConfigCheck' => '1',
        ],
        'rn_base' => [
            'activateCache' => '0',
            'activateSubstCache' => '0',
            'debugKey' => '',
            'dieOnMayday' => '1',
            'exceptionHandler' => '',
            'forceException4Mayday' => '1',
            'fromEmail' => '',
            'loadHiddenObjects' => '0',
            'send503HeaderOnException' => '1',
            'sendEmailOnException' => '',
            'verboseMayday' => '0',
        ],
        'scheduler' => [
            'maxLifetime' => '1440',
            'showSampleTasks' => '1',
        ],
        'seminars' => [
            'eMailFormatForAttendees' => '0',
            'enableConfigCheck' => '1',
        ],
        'static_info_tables' => [
            'enableManager' => '0',
        ],
    ],
    'FE' => [
        'debug' => true,
        'loginSecurityLevel' => 'normal',
        'passwordHashing' => [
            'className' => 'TYPO3\\CMS\\Core\\Crypto\\PasswordHashing\\Argon2iPasswordHash',
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
        'processor_path_lzw' => '/usr/bin/',
    ],
    'LOG' => [
        'TYPO3' => [
            'CMS' => [
                'deprecations' => [
                    'writerConfiguration' => [
                        5 => [
                            'TYPO3\CMS\Core\Log\Writer\FileWriter' => [
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
        'devIPmask' => '*',
        'displayErrors' => 1,
        'encryptionKey' => '52a4aa6dfdd2da877dc765d4651d3b161e91b26cc543eb8ce62e53fe5cc0bcfb304f43edb8d898cb8340a6310d7dbade',
        'exceptionalErrors' => 12290,
        'features' => [
            'newTranslationServer' => true,
            'unifiedPageTranslationHandling' => true,
        ],
        'sitename' => 'TYPO3 testing site',
        'systemLocale' => 'de_DE.UTF-8',
        'systemLogLevel' => 0,
        'systemMaintainers' => [
            1,
        ],
    ],
];
