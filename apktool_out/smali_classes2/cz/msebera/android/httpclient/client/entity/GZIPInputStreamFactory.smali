.class public Lcz/msebera/android/httpclient/client/entity/GZIPInputStreamFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Contract;
    threading = .enum Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->IMMUTABLE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final INSTANCE:Lcz/msebera/android/httpclient/client/entity/GZIPInputStreamFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcz/msebera/android/httpclient/client/entity/GZIPInputStreamFactory;

    .line 2
    .line 3
    invoke-direct {v0}, Lcz/msebera/android/httpclient/client/entity/GZIPInputStreamFactory;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcz/msebera/android/httpclient/client/entity/GZIPInputStreamFactory;->INSTANCE:Lcz/msebera/android/httpclient/client/entity/GZIPInputStreamFactory;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getInstance()Lcz/msebera/android/httpclient/client/entity/GZIPInputStreamFactory;
    .locals 1

    .line 1
    sget-object v0, Lcz/msebera/android/httpclient/client/entity/GZIPInputStreamFactory;->INSTANCE:Lcz/msebera/android/httpclient/client/entity/GZIPInputStreamFactory;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public create(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
