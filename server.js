const Hapi=require('hapi');

const server=Hapi.server({
    host: process.env.NODE_HOST || '0.0.0.0',
    port: process.env.NODE_PORT || 8000
});

// health route
server.route({
    method:'GET',
    path:'/health',
    handler:function(request,h) {
        return 'Server Responded - Healthy!';
    }
});

async function start() {
    try {
        await server.start();
    }
    catch (err) {
        console.log(err);
        process.exit(1);
    }
    console.log('Server running at:', server.info.uri);
};

start();
