.class Lcz/msebera/android/httpclient/conn/scheme/LayeredSocketFactoryAdaptor;
.super Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/scheme/LayeredSocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final factory:Lcz/msebera/android/httpclient/conn/scheme/LayeredSchemeSocketFactory;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/LayeredSchemeSocketFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/scheme/LayeredSocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/LayeredSchemeSocketFactory;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/LayeredSocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/LayeredSchemeSocketFactory;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lcz/msebera/android/httpclient/conn/scheme/LayeredSchemeSocketFactory;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
