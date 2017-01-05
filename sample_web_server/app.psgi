use Mojolicious::Lite;
use JSON::PP;
use Moment;

sub _serve {
    my ($c) = @_;

    warn sprintf "%s %s %s\n",
        Moment->now()->get_iso_string(),
        $c->req->method,
        $c->req->url,
        ;

    $c->render(
        json => { success => JSON::PP::true },
    );
}

any '/' => sub {
    _serve($_[0]);
};

any '/*' => sub {
    _serve($_[0]);
};

app->start;
