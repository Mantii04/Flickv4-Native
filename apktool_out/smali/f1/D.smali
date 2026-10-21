.class public final Lf1/D;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lf1/G;


# direct methods
.method public constructor <init>(Lf1/G;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf1/D;->a:Lf1/G;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lf1/D;->a:Lf1/G;

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-boolean v1, v2, Lf1/G;->f:Z

    .line 14
    .line 15
    iget-object p1, v2, Lf1/G;->e:Lf1/w;

    .line 16
    .line 17
    invoke-virtual {v2, p1}, Lf1/G;->onDiscoveryRequestChanged(Lf1/w;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iput-boolean v1, v2, Lf1/G;->h:Z

    .line 22
    .line 23
    iget-object p1, v2, Lf1/G;->d:Lf1/x;

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    iget-object v0, v2, Lf1/G;->g:Lf1/I;

    .line 28
    .line 29
    invoke-virtual {p1, v2, v0}, Lf1/x;->onDescriptorChanged(Lf1/G;Lf1/I;)V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    return-void
.end method
