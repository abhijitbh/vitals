<?php

namespace App\Mail;

use App\User;
use Config;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class ActivationMail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */

    public $usr;
    
    public function __construct($usr)
    {
        $this->usr= $usr;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->from('admin@gmail.com')
                ->view('auth.activation')->with([
                        'name' => $this->usr->name,
                        'email' => $this->usr->email,
                        'company_login' => $this->usr->domain_name + ".vitals.com"
                    ]);
    }
}
