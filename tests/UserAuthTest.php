<?php
use PHPUnit\Framework\TestCase;

class UserAuthTest extends TestCase
{
    public function testPasswordIsHashed()
    {
        $password = "Password123";
        $hash = password_hash($password, PASSWORD_DEFAULT);

        $this->assertNotEquals($password, $hash);
    }

    public function testPasswordVerification()
    {
        $password = "Password123";
        $hash = password_hash($password, PASSWORD_DEFAULT);

        $this->assertTrue(password_verify($password, $hash));
    }

    public function testInvalidPasswordFails()
    {
        $hash = password_hash("Password123", PASSWORD_DEFAULT);

        $this->assertFalse(password_verify("wrongpass", $hash));
    }
}