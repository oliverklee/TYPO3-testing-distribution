<?php

declare(strict_types=1);

namespace OliverKlee\SiteDev\Tests\Unit;

use PHPUnit\Framework\Attributes\CoversNothing;
use PHPUnit\Framework\Attributes\Test;
use TYPO3\TestingFramework\Core\Unit\UnitTestCase;

#[CoversNothing]
final class UniverseTest extends UnitTestCase
{
    #[Test]
    public function theTruthIsOutThere(): void
    {
        self::assertTrue(true);
    }
}
