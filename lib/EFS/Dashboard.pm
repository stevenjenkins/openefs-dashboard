package EFS::Dashboard;
use Dancer ':syntax';
use Dancer::Plugin::Ajax;
use Unix::Uptime; # for testing purposes
use JSON;
use EFS;

our $VERSION = '0.1';
our $API_KEY = 'AIzaSyDj5mre4qsuZLywHgae82Opqd08dyzf-W8';

get '/' => sub {
    redirect '/dashboard';
}

get '/map' => sub { # a sample google map api to verify this works
    template 'map';
};
get '/dashboard' => sub {
    template 'dashboard';
};

get '/highcharts' => sub {
    template 'highcharts';
};

any '/getloadavg' => sub {
    {
        timestamp => time,
        loadavg => ( Unix::Uptime->load )[0]
    };
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
    my $result = EFS::check_maintenance_mode() ? q{true} : q{false};
    return to_json {status => "Success", result => $result};
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
