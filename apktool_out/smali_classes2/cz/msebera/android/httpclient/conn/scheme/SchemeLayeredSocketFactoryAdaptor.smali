.class Lcz/msebera/android/httpclient/conn/scheme/SchemeLayeredSocketFactoryAdaptor;
.super Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/scheme/SchemeLayeredSocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final factory:Lcz/msebera/android/httpclient/conn/scheme/LayeredSocketFactory;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/LayeredSocketFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/scheme/SchemeLayeredSocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/LayeredSocketFactory;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1
    iget-object p4, p0, Lcz/msebera/android/httpclient/conn/scheme/SchemeLayeredSocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/LayeredSocketFactory;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-interface {p4, p1, p2, p3, v0}, Lcz/msebera/android/httpclient/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method
