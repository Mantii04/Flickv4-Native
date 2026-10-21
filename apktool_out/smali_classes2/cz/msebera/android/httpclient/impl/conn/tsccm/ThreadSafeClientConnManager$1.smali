.class Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->requestConnection(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;

.field final synthetic val$poolRequest:Lcz/msebera/android/httpclient/impl/conn/tsccm/PoolEntryRequest;

.field final synthetic val$route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;Lcz/msebera/android/httpclient/impl/conn/tsccm/PoolEntryRequest;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager$1;->this$0:Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager$1;->val$poolRequest:Lcz/msebera/android/httpclient/impl/conn/tsccm/PoolEntryRequest;

    .line 4
    .line 5
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager$1;->val$route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public abortRequest()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager$1;->val$poolRequest:Lcz/msebera/android/httpclient/impl/conn/tsccm/PoolEntryRequest;

    .line 2
    .line 3
    invoke-interface {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/PoolEntryRequest;->abortRequest()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getConnection(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/conn/ManagedClientConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcz/msebera/android/httpclient/conn/ConnectionPoolTimeoutException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager$1;->val$route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    .line 2
    .line 3
    const-string v1, "Route"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager$1;->this$0:Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;

    .line 9
    .line 10
    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->access$000(Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;)Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager$1;->this$0:Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;

    .line 21
    .line 22
    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->access$000(Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;)Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "Get connection: "

    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager$1;->val$route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, ", timeout = "

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager$1;->val$poolRequest:Lcz/msebera/android/httpclient/impl/conn/tsccm/PoolEntryRequest;

    .line 54
    .line 55
    invoke-interface {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/conn/tsccm/PoolEntryRequest;->getPoolEntry(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-instance p2, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;

    .line 60
    .line 61
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager$1;->this$0:Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;

    .line 62
    .line 63
    invoke-direct {p2, p3, p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;-><init>(Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;)V

    .line 64
    .line 65
    .line 66
    return-object p2
.end method
