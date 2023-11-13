<?php

declare(strict_types=1);

namespace Slub\StructuredContent\Tests\Unit\Domain\Model;

use Slub\StructuredContent\Domain\Model\Room;
use TYPO3\CMS\Extbase\DomainObject\AbstractEntity;
use TYPO3\TestingFramework\Core\Unit\UnitTestCase;

/**
 * @covers \Slub\StructuredContent\Domain\Model\Room
 */
final class RoomTest extends UnitTestCase
{
    private Room $subject;

    protected function setUp(): void
    {
        parent::setUp();

        $this->subject = new Room();
    }

    /**
     * @test
     */
    public function isAbstractEntity(): void
    {
        self::assertInstanceOf(AbstractEntity::class, $this->subject);
    }

    /**
     * @test
     */
    public function getTitleInitiallyReturnsEmptyString(): void
    {
        self::assertSame('', $this->subject->getTitle());
    }

    /**
     * @test
     */
    public function setTitleSetsTitle(): void
    {
        $value = 'Room Test';
        $this->subject->setTitle($value);

        self::assertSame($value, $this->subject->getTitle());
    }

    /**
     * @test
     */
    public function getDescriptionInitiallyReturnsEmptyString(): void
    {
        self::assertSame('', $this->subject->getDescription());
    }

    /**
     * @test
     */
    public function setDescriptionSetsDescription(): void
    {
        $value = 'Club-Mate';
        $this->subject->setDescription($value);

        self::assertSame($value, $this->subject->getDescription());
    }

    /**
     * @test
     */
    public function getNoiseInitiallyReturnsFalse(): void
    {
        self::assertFalse($this->subject->getNoise());
    }

    /**
     * @test
     */
    public function getLinkInitiallyReturnsEmptyString(): void
    {
        self::assertSame('', $this->subject->getLink());
    }

    /**
     * @test
     */
    public function setLinkSetsLink(): void
    {
        $value = 'Club-Mate';
        $this->subject->setLink($value);

        self::assertSame($value, $this->subject->getLink());
    }
    /**
     * @test
     */
    public function getDaylightInitiallyReturnsFalse(): void
    {
        self::assertFalse($this->subject->getDaylight());
    }

    /**
     * @test
     */
    public function setDaylightSetsDaylight(): void
    {
        $this->subject->setDaylight(true);

        self::assertTrue($this->subject->getDaylight());
    }

    /**
     * @test
     */
    public function setNoiseSetsNoise(): void
    {
        $this->subject->setNoise(true);

        self::assertTrue($this->subject->getNoise());
    }
}
