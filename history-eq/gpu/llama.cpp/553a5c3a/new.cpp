#define RPC_PROTO_MAJOR_VERSION    2
#define RPC_PROTO_MINOR_VERSION    0
struct hello_response { int major; int minor; };
extern "C" int target_major() {
    hello_response response;
    response.major = RPC_PROTO_MAJOR_VERSION;
    return response.major;
}
extern "C" int target_minor() {
    hello_response response;
    response.minor = RPC_PROTO_MINOR_VERSION;
    return response.minor;
}
