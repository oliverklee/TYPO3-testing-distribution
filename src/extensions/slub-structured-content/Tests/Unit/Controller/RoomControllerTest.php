<?php

declare(strict_types=1);

namespace Slub\StructuredContent\Tests\Unit\Controller;

use PHPUnit\Framework\MockObject\MockObject;
use Slub\StructuredContent\Controller\RoomController;
use Slub\StructuredContent\Domain\Model\Room;
use Slub\StructuredContent\Domain\Repository\RoomRepository;
use TYPO3\CMS\Core\Http\HtmlResponse;
use TYPO3\CMS\Core\Information\Typo3Version;
use TYPO3\CMS\Extbase\Mvc\Controller\ActionController;
use TYPO3\CMS\Extbase\Persistence\QueryResultInterface;
use TYPO3\CMS\Fluid\View\TemplateView;
use TYPO3\TestingFramework\Core\AccessibleObjectInterface;
use TYPO3\TestingFramework\Core\Unit\UnitTestCase;

/**
 * @covers \Slub\StructuredContent\Controller\RoomController
 */
final class RoomControllerTest extends UnitTestCase
{
    /**
     * @var RoomController&MockObject&AccessibleObjectInterface
     */
    private RoomController $subject;

    /**
     * @var TemplateView&MockObject
     */
    private TemplateView $viewMock;

    /**
     * @var RoomRepository&MockObject
     */
    private RoomRepository $roomRepositoryMock;

    protected function setUp(): void
    {
        parent::setUp();

        $this->roomRepositoryMock = $this->createMock(RoomRepository::class);
        // We need to create an accessible mock in order to be able to set the protected `view`.
        $methodsToMock = ['htmlResponse', 'redirect', 'redirectToUri'];
        if ((new Typo3Version())->getMajorVersion() < 12) {
            $methodsToMock[] = 'forward';
        }
        $this->subject = $this->getAccessibleMock(RoomController::class, $methodsToMock, [$this->roomRepositoryMock]);

        $this->viewMock = $this->createMock(TemplateView::class);
        $this->subject->_set('view', $this->viewMock);

        $responseStub = self::createStub(HtmlResponse::class);
        $this->subject->method('htmlResponse')->willReturn($responseStub);
    }

    /**
     * @test
     */
    public function isActionController(): void
    {
        self::assertInstanceOf(ActionController::class, $this->subject);
    }

    /**
     * @test
     */
    public function indexActionAssignsAllRoomAsRoomsToView(): void
    {
        $rooms = $this->createMock(QueryResultInterface::class);
        $this->roomRepositoryMock->method('findAll')->willReturn($rooms);
        $this->viewMock->expects(self::once())->method('assign')->with('rooms', $rooms);

        $this->subject->indexAction();
    }

    /**
     * @test
     */
    public function indexActionReturnsHtmlResponse(): void
    {
        $result = $this->subject->indexAction();

        self::assertInstanceOf(HtmlResponse::class, $result);
    }

    /**
     * @test
     */
    public function showActionAssignsPassedRoomAsRoomToView(): void
    {
        $room = new Room();
        $this->viewMock->expects(self::once())->method('assign')->with('room', $room);

        $this->subject->showAction($room);
    }

    /**
     * @test
     */
    public function showActionAssignsReturnsHtmlResponse(): void
    {
        $result = $this->subject->showAction(new Room());

        self::assertInstanceOf(HtmlResponse::class, $result);
    }

    /**
     * @test
     */
    public function searchActionReturnsHtmlResponse(): void
    {
        $result = $this->subject->searchAction('OSL 666');

        self::assertInstanceOf(HtmlResponse::class, $result);
    }

    /**
     * @test
     */
    public function searchActionAssignsResultingRoomsToView(): void
    {
        $searchTerm = 'OSL 666';
        $rooms = $this->createMock(QueryResultInterface::class);
        $this->roomRepositoryMock->method('findBySearchTerm')->with($searchTerm)->willReturn($rooms);
        $this->viewMock->expects(self::once())->method('assign')->with('rooms', $rooms);

        $this->subject->searchAction($searchTerm);
    }
}
