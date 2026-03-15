<?php
use PHPUnit\Framework\TestCase;

class ValidationTest extends TestCase
{
    public function testPasswordMinLength()
    {
        $password = "12345678";

        $this->assertGreaterThanOrEqual(8, strlen($password));
    }

    public function testPasswordHasNumber()
    {
        $password = "Password1";

        $this->assertMatchesRegularExpression('/[0-9]/', $password);
    }

    public function testUsernameTooShort()
    {
        $username = "ab";

        $this->assertLessThan(3, strlen($username));
    }
}