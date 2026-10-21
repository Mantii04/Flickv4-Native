.class public final Lk/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lk/i;

.field public final synthetic e:Landroid/view/MenuItem;

.field public final synthetic f:Lk/p;

.field public final synthetic j:Lk/h;


# direct methods
.method public constructor <init>(Lk/h;Lk/i;Landroid/view/MenuItem;Lk/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk/g;->j:Lk/h;

    .line 5
    .line 6
    iput-object p2, p0, Lk/g;->b:Lk/i;

    .line 7
    .line 8
    iput-object p3, p0, Lk/g;->e:Landroid/view/MenuItem;

    .line 9
    .line 10
    iput-object p4, p0, Lk/g;->f:Lk/p;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk/g;->b:Lk/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lk/g;->j:Lk/h;

    .line 6
    .line 7
    iget-object v2, v1, Lk/h;->b:Lk/j;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    iput-boolean v3, v2, Lk/j;->J:Z

    .line 11
    .line 12
    iget-object v0, v0, Lk/i;->b:Lk/p;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v2}, Lk/p;->close(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, v1, Lk/h;->b:Lk/j;

    .line 19
    .line 20
    iput-boolean v2, v0, Lk/j;->J:Z

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lk/g;->e:Landroid/view/MenuItem;

    .line 23
    .line 24
    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lk/g;->f:Lk/p;

    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    invoke-virtual {v1, v0, v2}, Lk/p;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method
