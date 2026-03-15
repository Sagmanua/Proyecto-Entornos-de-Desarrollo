<?php
use PHPUnit\Framework\TestCase;

class ProfileTest extends TestCase
{
    public function testUsernameNotEmpty()
    {
        $username = "user1";

        $this->assertNotEmpty($username);
    }

    public function testEmailFormat()
    {
        $email = "test@email.com";

        $this->assertMatchesRegularExpression("/^.+@.+\..+$/", $email);
    }

    public function testPhoneNotNull()
    {
        $phone = "123456789";

        $this->assertNotNull($phone);
    }
}