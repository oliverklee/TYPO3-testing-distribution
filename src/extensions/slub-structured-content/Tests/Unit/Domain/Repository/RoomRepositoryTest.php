<?php

declare(strict_types=1);

namespace Slub\StructuredContent\Tests\Unit\Domain\Repository;

use Slub\StructuredContent\Domain\Repository\RoomRepository;
use TYPO3\CMS\Extbase\Object\ObjectManagerInterface;
use TYPO3\CMS\Extbase\Persistence\Repository;
use TYPO3\TestingFramework\Core\Unit\UnitTestCase;

/**
 * @covers \Slub\StructuredContent\Domain\Repository\RoomRepository
 */
final class RoomRepositoryTest extends UnitTestCase
{
    private RoomRepository $subject;

    protected function setUp(): void
    {
        parent::setUp();

        if (\interface_exists(ObjectManagerInterface::class)) {
            $objectManagerStub = self::createStub(ObjectManagerInterface::class);
            // @phpstan-ignore-next-line This line is 11LTS-specific, but we're running PHPStan on TYPO3 12.
            $this->subject = new RoomRepository($objectManagerStub);
        } else {
            $this->subject = new RoomRepository();
        }
    }

    /**
     * @test
     */
    public function isRepository(): void
    {
        self::assertInstanceOf(Repository::class, $this->subject);
    }
}
