.class public final Lp5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lcom/android/volley/RequestQueue;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp5/b;->a:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {p0}, Lp5/b;->getRequestQueue()Lcom/android/volley/RequestQueue;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lp5/b;->b:Lcom/android/volley/RequestQueue;

    .line 11
    .line 12
    new-instance v0, Lh2/o;

    .line 13
    .line 14
    new-instance v1, LJ3/b;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v2, Landroid/util/LruCache;

    .line 20
    .line 21
    const/16 v3, 0x14

    .line 22
    .line 23
    invoke-direct {v2, v3}, Landroid/util/LruCache;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p1, v1}, Lh2/o;-><init>(Lcom/android/volley/RequestQueue;Lh2/n;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 1

    .line 1
    iget-object v0, p0, Lp5/b;->b:Lcom/android/volley/RequestQueue;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lp5/b;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lh2/v;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lp5/b;->b:Lcom/android/volley/RequestQueue;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lp5/b;->b:Lcom/android/volley/RequestQueue;

    .line 18
    .line 19
    return-object v0
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp5/b;->b:Lcom/android/volley/RequestQueue;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->start()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp5/b;->b:Lcom/android/volley/RequestQueue;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lp5/a;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Lcom/android/volley/RequestQueue$RequestFilter;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lp5/b;->b:Lcom/android/volley/RequestQueue;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
