.class public final LT1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Ljava/lang/ref/WeakReference;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LT1/n;->b:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    iput-object p2, p0, LT1/n;->e:Landroid/content/Context;

    .line 7
    .line 8
    iput p3, p0, LT1/n;->f:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public call()LT1/L;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LT1/L;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LT1/n;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, LT1/n;->e:Landroid/content/Context;

    .line 4
    :goto_0
    iget v1, p0, LT1/n;->f:I

    invoke-static {v0, v1}, LT1/q;->fromRawResSync(Landroid/content/Context;I)LT1/L;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, LT1/n;->call()LT1/L;

    move-result-object v0

    return-object v0
.end method
