<?php

defined('TYPO3') or die();

\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addToInsertRecords('tx_slubstructuredcontent_domain_model_room');

$tca = [
    'ctrl' => [
        'title' => 'LLL:EXT:slub_structured_content/Resources/Private/Language/locallang_db.xlf:tx_slubstructuredcontent_domain_model_room',
        'label' => 'title',
        'tstamp' => 'tstamp',
        'crdate' => 'crdate',
        'cruser_id' => 'cruser_id',
        'default_sortby' => 'ORDER BY title ASC',
        'delete' => 'deleted',
        'enablecolumns' => [
            'disabled' => 'hidden',
            'starttime' => 'starttime',
            'endtime' => 'endtime',
        ],
        'iconfile' => 'EXT:slub_structured_content/Resources/Public/Icons/Record.svg',
        'hideAtCopy' => true,
        'searchFields' => 'title',
    ],
    'columns' => [
        'title' => [
            'exclude' => 0,
            'label' => 'LLL:EXT:slub_structured_content/Resources/Private/Language/locallang_db.xlf:tx_slubstructuredcontent_domain_model_room.title',
            'config' => [
                'type' => 'input',
                'size' => 30,
                'max' => 255,
                'eval' => 'required,trim',
            ],
        ],
        'description' => [
            'label' => 'LLL:EXT:slub_structured_content/Resources/Private/Language/locallang_db.xlf:tx_slubstructuredcontent_domain_model_room.description',
            'config' => [
                'type' => 'text',
                'enableRichtext' => true,
                'rows' => 8,
                'cols' => 40,
                'max' => 65535,
                'eval' => 'trim',
            ],
        ],
        'link' => [
            'label' => 'LLL:EXT:slub_structured_content/Resources/Private/Language/locallang_db.xlf:tx_slubstructuredcontent_domain_model_room.link',
            'config' => [
                'type' => 'link',
                'size' => 20,
                'nullable' => 'true',
                'allowedTypes' => ['page', 'url', 'record'],
                'appearance' => [
                    'enableBrowser' => true,
                    'browserTitle' => 'Browser title',
                    'allowedFileExtensions' => ['jpg', 'png'],
                    'allowedOptions' => ['params', 'rel'],
                ],
            ]
        ],
        'noise' => [
            'label' => 'LLL:EXT:slub_structured_content/Resources/Private/Language/locallang_db.xlf:tx_slubstructuredcontent_domain_model_room.noise',
            'config' => [
                'type' => 'check',
                'renderType' => 'checkboxToggle',
                'items' => [
                    [
                        'label' => 'LLL:EXT:slub_structured_content/Resources/Private/Language/locallang_db.xlf:tx_slubstructuredcontent_domain_model_room.noise.checked',
                    ],
                ],
            ],
        ],
        'daylight' => [
            'label' => 'LLL:EXT:slub_structured_content/Resources/Private/Language/locallang_db.xlf:tx_slubstructuredcontent_domain_model_room.daylight',
            'config' => [
                'type' => 'check',
                'renderType' => 'checkboxToggle',
                'items' => [
                    [
                        'label' => 'LLL:EXT:slub_structured_content/Resources/Private/Language/locallang_db.xlf:tx_slubstructuredcontent_domain_model_room.daylight.checked',
                    ],
                ],
            ],
        ],
    ],
    'types' => [
        [
            'showitem' =>
                'title,description,link,noise,daylight'
        ],
    ],
];

$typo3Version = new \TYPO3\CMS\Core\Information\Typo3Version();
if ($typo3Version->getMajorVersion() < 12) {
    $tca['columns']['link']['config'] = [
        'type' => 'input',
        'renderType' => 'inputLink',
        'size' => 20,
        'max' => 1024,
        'eval' => 'trim,null',
        'fieldControl' => [
            'linkPopup' => [
                'disabled' => false,
                'options' => [
                    'title' => 'Browser title',
                    'allowedExtensions' => 'jpg,png',
                    'blindLinkFields' => 'class,target,title',
                    'blindLinkOptions' => 'mail,folder,file,telephone',
                ],
            ],
        ],
        'softref' => 'typolink'
    ];
}

return $tca;


