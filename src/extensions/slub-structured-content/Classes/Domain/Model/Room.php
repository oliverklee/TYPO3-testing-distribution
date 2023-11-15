<?php

declare(strict_types=1);

namespace Slub\StructuredContent\Domain\Model;

use TYPO3\CMS\Extbase\Annotation as Extbase;
use TYPO3\CMS\Extbase\DomainObject\AbstractEntity;

/**
 * This class represents a tea (flavor), e.g., "Earl Grey".
 */
class Room extends AbstractEntity
{
    /**
     * @Extbase\Validate("StringLength", options={"maximum": 255})
     * @Extbase\Validate("NotEmpty")
     */
    protected string $title = '';

    /**
     * @Extbase\Validate("StringLength", options={"maximum": 65535})
     */
    protected string $description = '';

    /**
     * @Extbase\Validate("StringLength", options={"maximum": 1024})
     */
    protected string $link = '';
    protected bool $noise = false;

    public function getTitle(): string
    {
        return $this->title;
    }

    public function setTitle(string $title): void
    {
        $this->title = $title;
    }

    public function getDescription(): string
    {
        return $this->description;
    }

    public function setDescription(string $description): void
    {
        $this->description = $description;
    }

    public function getLink(): string
    {
        return $this->link;
    }

    public function setLink(string $link): void
    {
        $this->link = $link;
    }

    public function getNoise(): bool
    {
        return $this->noise;
    }

    public function setNoise(bool $noise): void
    {
        $this->noise = $noise;
    }

    protected bool $daylight = false;

    public function getDaylight(): bool
    {
        return $this->daylight;
    }

    public function setDaylight(bool $daylight): void
    {
        $this->daylight = $daylight;
    }
}
