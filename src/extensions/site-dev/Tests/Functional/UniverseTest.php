<?php

declare(strict_types=1);

namespace OliverKlee\SiteDev\Tests\Functional;

use TYPO3\CMS\Core\Domain\Repository\PageRepository;
use TYPO3\TestingFramework\Core\Functional\FunctionalTestCase;

/**
 * @coversNothing
 */
final class UniverseTest extends FunctionalTestCase
{
    protected array $coreExtensionsToLoad = ['extbase', 'fluid'];

    protected array $testExtensionsToLoad = [
        'site_dev',
    ];

    /**
     * @test
     */
    public function canQueryTheDatabaseForPages(): void
    {
        $pageRepository = $this->get(PageRepository::class);

        $pageData = $pageRepository->getPage(1);

        self::assertSame([], $pageData);
    }
}
