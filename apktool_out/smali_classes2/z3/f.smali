.class public final Lz3/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lz3/c;

.field public final b:Lz3/b;

.field public final c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Lz3/b;",
            ">(TT;)V"
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lz3/b;

    invoke-direct {p0, v0, p1}, Lz3/f;-><init>(Lz3/b;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lz3/b;Landroid/view/View;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 4
    new-instance v0, Lz3/e;

    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    .line 6
    new-instance v0, Lz3/c;

    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 8
    :goto_0
    iput-object v0, p0, Lz3/f;->a:Lz3/c;

    .line 9
    iput-object p1, p0, Lz3/f;->b:Lz3/b;

    .line 10
    iput-object p2, p0, Lz3/f;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public shouldListenForBackCallbacks()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lz3/f;->a:Lz3/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public startListeningForBackCallbacksWithPriorityOverlay()V
    .locals 4

    .line 1
    iget-object v0, p0, Lz3/f;->a:Lz3/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lz3/f;->c:Landroid/view/View;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    iget-object v3, p0, Lz3/f;->b:Lz3/b;

    .line 9
    .line 10
    invoke-virtual {v0, v3, v1, v2}, Lz3/c;->startListeningForBackCallbacks(Lz3/b;Landroid/view/View;Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public stopListeningForBackCallbacks()V
    .locals 2

    .line 1
    iget-object v0, p0, Lz3/f;->a:Lz3/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lz3/f;->c:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lz3/c;->stopListeningForBackCallbacks(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
