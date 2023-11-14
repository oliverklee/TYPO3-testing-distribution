<?php

declare(strict_types=1);

use Slub\StructuredContent\Domain\Model\Room;
use Slub\StructuredContent\Domain\Repository\RoomRepository;
use TYPO3\CMS\Extbase\Persistence\PersistenceManagerInterface;
use TYPO3\TestingFramework\Core\Functional\FunctionalTestCase;

/**
 * @covers \Slub\StructuredContent\Domain\Repository\RoomRepository
 * @covers \Slub\StructuredContent\Domain\Model\Room
 */
final class RoomRepositoryTest extends FunctionalTestCase
{
    protected array $testExtensionsToLoad = ['slub_structured_content'];

    private RoomRepository $subject;

    private PersistenceManagerInterface $persistenceManager;

    protected function setUp(): void
    {
        parent::setUp();

        $this->persistenceManager = $this->get(PersistenceManagerInterface::class);

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
        $this->importCSVDataSet(__DIR__ . '/Fixtures/Room.csv');

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
}
