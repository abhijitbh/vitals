<?php 

namespace App\Repositories;
use App\User;

class UserRepository {
    /**
     * @param $userData
     * @return static
     */
    public function findByUsernameOrCreate($userData)
    {
        $existingUser = User::where('google_id', $userData->getId())->first();
        if($existingUser){
            return  $existingUser;
        }

        return User::firstOrCreate([
            'name' => $userData->getNickname(),
            'email'    => $userData->getEmail(),
            'google_id'    => $userData->getId(),
            'avatar'   => $userData->getAvatar(),
        ]);
    }
} 