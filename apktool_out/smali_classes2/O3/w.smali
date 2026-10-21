.class public final LO3/w;
.super LO3/e;
.source "SourceFile"


# instance fields
.field public final synthetic a:LO3/y;


# direct methods
.method public constructor <init>(LO3/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, LO3/w;->a:LO3/y;

    .line 2
    .line 3
    invoke-direct {p0}, LO3/e;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object v0, p0, LO3/w;->a:LO3/y;

    .line 2
    .line 3
    iget-object v1, v0, LO3/y;->b:LO3/t;

    .line 4
    .line 5
    new-instance v2, LO3/v;

    .line 6
    .line 7
    invoke-direct {v2, v0, p1, p2}, LO3/v;-><init>(LO3/y;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-virtual {v1, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method
