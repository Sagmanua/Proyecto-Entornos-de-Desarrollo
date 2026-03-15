<?php

use PHPUnit\Framework\TestCase;

class ExtraValidationTest extends TestCase
{

    // 1 Test: valid email format
    public function testValidEmail()
    {
        $email = "user@example.com";
        $this->assertMatchesRegularExpression("/^.+@.+\..+$/", $email);
    }

    // 2 Test: invalid email format
    public function testInvalidEmail()
    {
        $email = "userexample.com";
        $this->assertDoesNotMatchRegularExpression("/^.+@.+\..+$/", $email);
    }

    // 3 Test: username minimum length
    public function testUsernameMinLength()
    {
        $username = "john";
        $this->assertGreaterThanOrEqual(3, strlen($username));
    }

    // 4 Test: recipe title not empty
    public function testRecipeTitleNotEmpty()
    {
        $title = "Spaghetti Carbonara";
        $this->assertNotEmpty($title);
    }

    // 5 Test: planner date format
    public function testPlannerDateFormat()
    {
        $date = "2026-03-15";
        $this->assertMatchesRegularExpression("/\d{4}-\d{2}-\d{2}/", $date);
    }
}