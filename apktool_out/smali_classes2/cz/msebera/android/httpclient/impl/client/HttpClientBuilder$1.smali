.class Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->build()Lcz/msebera/android/httpclient/impl/client/CloseableHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;

.field final synthetic val$connectionEvictor:Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder$1;->this$0:Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;

    .line 2
    .line 3
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder$1;->val$connectionEvictor:Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder$1;->val$connectionEvictor:Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;->shutdown()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder$1;->val$connectionEvictor:Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;

    .line 7
    .line 8
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    .line 10
    const-wide/16 v2, 0x1

    .line 11
    .line 12
    invoke-virtual {v0, v2, v3, v1}, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
