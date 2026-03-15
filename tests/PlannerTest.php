<?php
use PHPUnit\Framework\TestCase;

class PlannerTest extends TestCase
{
    public function testValidMealType()
    {
        $meal = "Lunch";

        $allowed = ["Breakfast","Lunch","Dinner","Snack"];

        $this->assertContains($meal, $allowed);
    }

    public function testInvalidMealType()
    {
        $meal = "Midnight";

        $allowed = ["Breakfast","Lunch","Dinner","Snack"];

        $this->assertNotContains($meal, $allowed);
    }

    public function testDateFormat()
    {
        $date = "2026-03-10";

        $this->assertMatchesRegularExpression("/\d{4}-\d{2}-\d{2}/", $date);
    }
}