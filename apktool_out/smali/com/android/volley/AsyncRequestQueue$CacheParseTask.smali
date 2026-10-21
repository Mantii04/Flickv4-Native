.class Lcom/android/volley/AsyncRequestQueue$CacheParseTask;
.super Lcom/android/volley/RequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/AsyncRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CacheParseTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/RequestTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field entry:Lcom/android/volley/Cache$Entry;

.field startTimeMillis:J

.field final synthetic this$0:Lcom/android/volley/AsyncRequestQueue;


# direct methods
.method public constructor <init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/Cache$Entry;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "TT;>;",
            "Lcom/android/volley/Cache$Entry;",
            "J)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/android/volley/RequestTask;-><init>(Lcom/android/volley/Request;)V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->entry:Lcom/android/volley/Cache$Entry;

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->startTimeMillis:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 2
    .line 3
    const-string v1, "cache-hit"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 9
    .line 10
    new-instance v1, Lcom/android/volley/NetworkResponse;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->entry:Lcom/android/volley/Cache$Entry;

    .line 13
    .line 14
    iget-object v3, v2, Lcom/android/volley/Cache$Entry;->data:[B

    .line 15
    .line 16
    const-wide/16 v5, 0x0

    .line 17
    .line 18
    iget-object v7, v2, Lcom/android/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    .line 19
    .line 20
    const/16 v2, 0xc8

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-direct/range {v1 .. v7}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 31
    .line 32
    const-string v2, "cache-hit-parsed"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->entry:Lcom/android/volley/Cache$Entry;

    .line 38
    .line 39
    iget-wide v2, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->startTimeMillis:J

    .line 40
    .line 41
    invoke-virtual {v1, v2, v3}, Lcom/android/volley/Cache$Entry;->refreshNeeded(J)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/android/volley/RequestQueue;->getResponseDelivery()Lcom/android/volley/ResponseDelivery;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v2, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 54
    .line 55
    invoke-interface {v1, v2, v0}, Lcom/android/volley/ResponseDelivery;->postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 60
    .line 61
    const-string v2, "cache-hit-refresh-needed"

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 67
    .line 68
    iget-object v2, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->entry:Lcom/android/volley/Cache$Entry;

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->setCacheEntry(Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Request;

    .line 71
    .line 72
    .line 73
    const/4 v1, 0x1

    .line 74
    iput-boolean v1, v0, Lcom/android/volley/Response;->intermediate:Z

    .line 75
    .line 76
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    .line 77
    .line 78
    invoke-static {v1}, Lcom/android/volley/AsyncRequestQueue;->access$400(Lcom/android/volley/AsyncRequestQueue;)Lcom/android/volley/WaitingRequestManager;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iget-object v2, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Lcom/android/volley/WaitingRequestManager;->maybeAddToWaitingRequests(Lcom/android/volley/Request;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_1

    .line 89
    .line 90
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/android/volley/RequestQueue;->getResponseDelivery()Lcom/android/volley/ResponseDelivery;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 97
    .line 98
    new-instance v3, Lcom/android/volley/AsyncRequestQueue$CacheParseTask$1;

    .line 99
    .line 100
    invoke-direct {v3, p0}, Lcom/android/volley/AsyncRequestQueue$CacheParseTask$1;-><init>(Lcom/android/volley/AsyncRequestQueue$CacheParseTask;)V

    .line 101
    .line 102
    .line 103
    invoke-interface {v1, v2, v0, v3}, Lcom/android/volley/ResponseDelivery;->postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;Ljava/lang/Runnable;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/android/volley/RequestQueue;->getResponseDelivery()Lcom/android/volley/ResponseDelivery;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iget-object v2, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 114
    .line 115
    invoke-interface {v1, v2, v0}, Lcom/android/volley/ResponseDelivery;->postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;)V

    .line 116
    .line 117
    .line 118
    return-void
.end method
