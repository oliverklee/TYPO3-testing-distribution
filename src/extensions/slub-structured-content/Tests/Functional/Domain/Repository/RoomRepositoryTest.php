<?php

declare(strict_types=1);

use Slub\StructuredContent\Domain\Model\Room;
use Slub\StructuredContent\Domain\Repository\RoomRepository;
use TYPO3\TestingFramework\Core\Functional\FunctionalTestCase;

/**
 * @covers \Slub\StructuredContent\Domain\Repository\RoomRepository
 * @covers \Slub\StructuredContent\Domain\Model\Room
 */
final class RoomRepositoryTest extends FunctionalTestCase
{
    protected array $testExtensionsToLoad = ['structured_content'];

    private RoomRepository $subject;

    protected function setUp(): void
    {
        parent::setUp();

        $this->subject = $this->get(RoomRepository::class);
    }

    /**
     * @test
     */
    public function findAllForNoRecordsReturnsEmptyContainer(): void
    {
        $result = $this->subject->findAll();

        self::assertCount(0, $result);
    }

    /**
     * @test
     */
    public function findByUidForExistingRecordReturnsModel(): void
    {
        $this->importCSVDataSet(__DIR__ . '/Fixtures/RoomWithMinimalData.csv');

        $uid = 1;
        $model = $this->subject->findByUid($uid);

        self::assertInstanceOf(Room::class, $model);
    }

    /**
     * @test
     */
    public function findByUidForExistingRecordMapsAllScalarData(): void
    {
        $this->importCSVDataSet(__DIR__ . '/Fixtures/RoomWithAllScalarData.csv');

        $uid = 1;
        $model = $this->subject->findByUid($uid);
        self::assertInstanceOf(Room::class, $model);

        self::assertSame('OSL 122', $model->getTitle());
        self::assertSame('Wunderbarer Service', $model->getDescription());
        self::assertSame('https://www.slub-dresden.de', $model->getLink());
        self::assertTrue($model->getNoise());
        self::assertTrue($model->getDaylight());
    }

    /**
     * @test
     */
    public function findAllSortsByTitleInAscendingOrder(): void
    {
        $this->importCSVDataSet(__DIR__ . '/Fixtures/RoomsSortedByUIDAsc.csv');

        $result = $this->subject->findAll();

        $result->rewind();
        self::assertSame(2, $result->current()->getUid());
    }

    /**
     * @test
     */
    public function findBySearchTermWithEmptyStringReturnsAllRooms(): void
    {
        $this->importCSVDataSet(__DIR__ . '/Fixtures/RoomsFindBySearchTerm.csv');

        $result = $this->subject->findBySearchTerm('');

        self::assertCount(2, $result);
    }
    // searchterm passt exakt

    /**
     * @test
     */
    public function findBySearchTermWithMatchingTermReturnsMatchingResult(): void
    {
        $this->importCSVDataSet(__DIR__ . '/Fixtures/RoomsFindBySearchTerm.csv');

        $result = $this->subject->findBySearchTerm('OSL 122');
        self::assertCount(1, $result);

        self::assertInstanceOf(Room::class, $result->getFirst());
        self::assertSame('OSL 122', $result->getFirst()->getTitle());
    }

    // searchterm passt nicht
    /**
     * @test
     */
    public function findBySearchTermWithNoneMatchingTermReturnsEmptyResult(): void
    {
        $this->importCSVDataSet(__DIR__ . '/Fixtures/RoomsFindBySearchTerm.csv');

        $result = $this->subject->findBySearchTerm('%OSL 1223');

        self::assertCount(0, $result);
    }

    /**
     * @return array<string,array<string>>
     */
    public static function subStringDataProvider(): array
    {
        return [
            'prefix' => ['OSL 1'],
            'infix' => ['SL 12'],
            'suffix' => ['L 122'],
        ];
    }

    /**
     * @test
     *
     * @dataProvider subStringDataProvider
     */
    public function findBySearchTermWithMatchingSubStringReturnsResult(string $room): void
    {
        $this->importCSVDataSet(__DIR__ . '/Fixtures/RoomsFindBySearchTerm.csv');

        $result = $this->subject->findBySearchTerm($room);

        self::assertCount(1, $result);
        self::assertInstanceOf(Room::class, $result->getFirst());
        self::assertSame('OSL 122', $result->getFirst()->getTitle());
    }

    /**
     * @test
     */
    public function findBySearchTermWithMatchingTermButLowerCaseReturnsMatchingResult(): void
    {
        $this->importCSVDataSet(__DIR__ . '/Fixtures/RoomsFindBySearchTerm.csv');

        $result = $this->subject->findBySearchTerm('osl 122');

        self::assertCount(1, $result);
        self::assertInstanceOf(Room::class, $result->getFirst());
        self::assertSame('OSL 122', $result->getFirst()->getTitle());
    }

    /**
     * @test
     */
    public function findBySearchTermReturnsRoomsInAscendingAlphabeticalOrderByTitle(): void
    {
        $this->importCSVDataSet(__DIR__ . '/Fixtures/RoomsFindBySearchTerm.csv');

        $result = $this->subject->findBySearchTerm('');

        self::assertCount(2, $result);

        self::assertInstanceOf(Room::class, $result->getFirst());
        self::assertSame('C+4.03', $result->getFirst()->getTitle());

        self::assertInstanceOf(Room::class, $result->offsetGet('1'));
        self::assertSame('OSL 122', $result->offsetGet('1')->getTitle());
    }
}
