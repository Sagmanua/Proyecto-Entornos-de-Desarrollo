<?php
use PHPUnit\Framework\TestCase;

class DatabaseTest extends TestCase
{
    public function testDatabaseConnection()
    {
        $conn = mysqli_connect("localhost", "admin_recipe_app", "Login_system123$", "recipe_app");

        $this->assertNotFalse($conn);
    }

    public function testDatabaseConnectionFailsWithWrongPassword()
    {
        $conn = @mysqli_connect("localhost", "admin_recipe_app", "wrong", "recipe_app");

        $this->assertFalse($conn);
    }
}