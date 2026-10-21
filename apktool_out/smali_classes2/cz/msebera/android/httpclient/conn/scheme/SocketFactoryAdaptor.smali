.class Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;,
            Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;
        }
    .end annotation

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    if-lez p5, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p4, 0x0

    .line 7
    goto :goto_2

    .line 8
    :cond_1
    :goto_0
    new-instance v0, Ljava/net/InetSocketAddress;

    .line 9
    .line 10
    if-lez p5, :cond_2

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_2
    const/4 p5, 0x0

    .line 14
    :goto_1
    invoke-direct {v0, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 15
    .line 16
    .line 17
    move-object p4, v0

    .line 18
    :goto_2
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    new-instance p5, Ljava/net/InetSocketAddress;

    .line 23
    .line 24
    invoke-direct {p5, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    .line 28
    .line 29
    invoke-interface {p2, p1, p5, p4, p6}, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcz/msebera/android/httpclient/params/BasicHttpParams;

    .line 2
    .line 3
    invoke-direct {v0}, Lcz/msebera/android/httpclient/params/BasicHttpParams;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    .line 7
    .line 8
    invoke-interface {v1, v0}, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;->createSocket(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    if-ne p0, p1, :cond_1

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_1
    instance-of v0, p1, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    .line 14
    .line 15
    check-cast p1, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;

    .line 16
    .line 17
    iget-object p1, p1, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_2
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public getFactory()Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;->isSecure(Ljava/net/Socket;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
