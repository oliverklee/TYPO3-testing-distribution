<?php

declare(strict_types=1);

namespace Slub\StructuredContent\Domain\Repository;

use Slub\StructuredContent\Domain\Model\Room;
use TYPO3\CMS\Core\Database\ConnectionPool;
use TYPO3\CMS\Core\Utility\GeneralUtility;
use TYPO3\CMS\Extbase\Persistence\QueryInterface;
use TYPO3\CMS\Extbase\Persistence\QueryResultInterface;
use TYPO3\CMS\Extbase\Persistence\Repository;

/**
 * @extends Repository<Room>
 */
class RoomRepository extends Repository
{
    protected $defaultOrderings = ['title' => QueryInterface::ORDER_ASCENDING];

    /**
     * @return QueryResultInterface<Room>
     */
    public function findBySearchTerm(string $searchTerm): QueryResultInterface
    {
        $query = $this->createQuery();

        $queryBuilder = GeneralUtility::makeInstance(ConnectionPool::class)->getQueryBuilderForTable('tx_structuredcontent_domain_model_room');

        $query->matching(
            $query->like(
                'title',
                '%' . $queryBuilder->escapeLikeWildcards($searchTerm) . '%'
            ),
        );

        return $query->execute();
    }
}
