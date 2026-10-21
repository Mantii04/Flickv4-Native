.class public final Ll/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Ll/q;

.field public final synthetic e:Ll/u;


# direct methods
.method public constructor <init>(Ll/u;Ll/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/n;->e:Ll/u;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Ll/n;->b:Ll/q;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ll/n;->e:Ll/u;

    .line 2
    .line 3
    iget-object v1, v0, Lk/d;->f:Lk/p;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lk/p;->changeMenuMode()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v1, v0, Lk/d;->q:Lk/G;

    .line 11
    .line 12
    check-cast v1, Landroid/view/View;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Ll/n;->b:Ll/q;

    .line 23
    .line 24
    invoke-virtual {v1}, Lk/C;->tryShow()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    iput-object v1, v0, Ll/u;->C:Ll/q;

    .line 31
    .line 32
    :cond_1
    const/4 v1, 0x0

    .line 33
    iput-object v1, v0, Ll/u;->E:Ll/n;

    .line 34
    .line 35
    return-void
.end method
