<?php


namespace App\Forum\Filters;


class ThreadFilters extends Filters
{
	
	protected $filters = ['by', 'popular', 'unanswered'];


	protected function popular()
    {
        $this->builder->getQuery()->orders = [];

        return $this->builder->orderBy('replies_count', 'desc');
    }
}