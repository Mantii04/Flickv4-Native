.class public Lcz/msebera/android/httpclient/impl/io/HttpRequestParser;
.super Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser<",
        "Lcz/msebera/android/httpclient/HttpMessage;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

.field private final requestFactory:Lcz/msebera/android/httpclient/HttpRequestFactory;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/HttpRequestFactory;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "Request factory"

    .line 5
    .line 6
    invoke-static {p3, p1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcz/msebera/android/httpclient/HttpRequestFactory;

    .line 11
    .line 12
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/HttpRequestParser;->requestFactory:Lcz/msebera/android/httpclient/HttpRequestFactory;

    .line 13
    .line 14
    new-instance p1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 15
    .line 16
    const/16 p2, 0x80

    .line 17
    .line 18
    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/HttpRequestParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public parseHead(Lcz/msebera/android/httpclient/io/SessionInputBuffer;)Lcz/msebera/android/httpclient/HttpMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;,
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/HttpRequestParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/HttpRequestParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->readLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v0, -0x1

    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    new-instance p1, Lcz/msebera/android/httpclient/message/ParserCursor;

    .line 16
    .line 17
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/HttpRequestParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-direct {p1, v1, v0}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->lineParser:Lcz/msebera/android/httpclient/message/LineParser;

    .line 28
    .line 29
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/HttpRequestParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 30
    .line 31
    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/message/LineParser;->parseRequestLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/RequestLine;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/HttpRequestParser;->requestFactory:Lcz/msebera/android/httpclient/HttpRequestFactory;

    .line 36
    .line 37
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/HttpRequestFactory;->newHttpRequest(Lcz/msebera/android/httpclient/RequestLine;)Lcz/msebera/android/httpclient/HttpRequest;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :cond_0
    new-instance p1, Lcz/msebera/android/httpclient/ConnectionClosedException;

    .line 43
    .line 44
    const-string v0, "Client closed connection"

    .line 45
    .line 46
    invoke-direct {p1, v0}, Lcz/msebera/android/httpclient/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1
.end method
