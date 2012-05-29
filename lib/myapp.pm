package myapp;
use Dancer ':syntax';
use JSON;

our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};

get '/campus_details' => sub {
};

get '/diststats' => sub {
};

get '/efsserver' => sub {
    send_file 'efsserver.json';
};

get '/efsserver_status' => sub {

};

get '/maintenance_mode' => sub {
    content_type 'application/json';
    if (-e '/tmp/foo'){
        return to_json {status => "Success", result => "true"};
    } else {
        return to_json {status => "Success", result => "false"};
    } 
};

get '/map' => sub {
    return "Good luck with that";
};

get '/metaprojs' => sub {
};

get '/projects' => sub {
};

get '/releases' => sub {
};


true;
