<?php

declare(strict_types=1);

namespace Slub\StructuredContent\Controller;

use Psr\Http\Message\ResponseInterface;
use TYPO3\CMS\Extbase\Mvc\Controller\ActionController;
use Slub\StructuredContent\Domain\Repository\RoomRepository;
use Slub\StructuredContent\Domain\Model\Room;

/**
 * Controller for the main "Room" FE plugin.
 */
class RoomController extends ActionController
{
    private RoomRepository $roomRepository;

    public function __construct(RoomRepository $roomRepository)
    {
        $this->roomRepository = $roomRepository;
    }

    public function indexAction(): ResponseInterface
    {
        $this->view->assign('rooms', $this->roomRepository->findAll());
        return $this->htmlResponse();
    }

    public function searchAction(): ResponseInterface
    {
        $this->view->assign('rooms', $this->roomRepository->findAll());
        return $this->htmlResponse();
    }

    public function showAction(Room $room): ResponseInterface
    {
        $this->view->assign('room', $room);
        return $this->htmlResponse();
    }
}
