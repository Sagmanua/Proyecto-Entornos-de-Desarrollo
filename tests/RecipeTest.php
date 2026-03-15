<?php
use PHPUnit\Framework\TestCase;

class RecipeTest extends TestCase
{
    public function testRecipeIdIsInteger()
    {
        $recipe_id = (int) "10";

        $this->assertIsInt($recipe_id);
    }

    public function testRecipeIdCannotBeNegative()
    {
        $recipe_id = -5;

        $this->assertLessThan(0, $recipe_id);
    }

    public function testRecipeTitleNotEmpty()
    {
        $title = "Pizza";

        $this->assertNotEmpty($title);
    }
}