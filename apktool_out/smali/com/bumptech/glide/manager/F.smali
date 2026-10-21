.class public final Lcom/bumptech/glide/manager/F;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile d:Lcom/bumptech/glide/manager/F;


# instance fields
.field public final a:Lcom/bumptech/glide/manager/v;

.field public final b:Ljava/util/HashSet;

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/manager/F;->b:Ljava/util/HashSet;

    .line 10
    .line 11
    new-instance v0, Lcom/bumptech/glide/manager/t;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lcom/bumptech/glide/manager/t;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, LG2/l;->memorize(LG2/k;)LG2/k;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lcom/bumptech/glide/manager/u;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/bumptech/glide/manager/u;-><init>(Lcom/bumptech/glide/manager/F;)V

    .line 23
    .line 24
    .line 25
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    .line 27
    const/16 v3, 0x18

    .line 28
    .line 29
    if-lt v2, v3, :cond_0

    .line 30
    .line 31
    new-instance p1, Lcom/bumptech/glide/manager/y;

    .line 32
    .line 33
    invoke-direct {p1, v0, v1}, Lcom/bumptech/glide/manager/y;-><init>(LG2/k;Lcom/bumptech/glide/manager/u;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v2, Lcom/bumptech/glide/manager/E;

    .line 38
    .line 39
    invoke-direct {v2, p1, v0, v1}, Lcom/bumptech/glide/manager/E;-><init>(Landroid/content/Context;LG2/k;Lcom/bumptech/glide/manager/u;)V

    .line 40
    .line 41
    .line 42
    move-object p1, v2

    .line 43
    :goto_0
    iput-object p1, p0, Lcom/bumptech/glide/manager/F;->a:Lcom/bumptech/glide/manager/v;

    .line 44
    .line 45
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bumptech/glide/manager/F;
    .locals 2

    .line 1
    sget-object v0, Lcom/bumptech/glide/manager/F;->d:Lcom/bumptech/glide/manager/F;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/bumptech/glide/manager/F;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/manager/F;->d:Lcom/bumptech/glide/manager/F;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/bumptech/glide/manager/F;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v1, p0}, Lcom/bumptech/glide/manager/F;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/bumptech/glide/manager/F;->d:Lcom/bumptech/glide/manager/F;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit v0

    .line 27
    goto :goto_2

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0

    .line 30
    :cond_1
    :goto_2
    sget-object p0, Lcom/bumptech/glide/manager/F;->d:Lcom/bumptech/glide/manager/F;

    .line 31
    .line 32
    return-object p0
.end method
