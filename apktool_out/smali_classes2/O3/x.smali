.class public final LO3/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:LO3/y;


# direct methods
.method public constructor <init>(LO3/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LO3/x;->a:LO3/y;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iget-object p1, p0, LO3/x;->a:LO3/y;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, LO3/y;->b(Landroid/os/IBinder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, LO3/x;->a:LO3/y;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, LO3/y;->c:Landroid/os/IInterface;

    .line 5
    .line 6
    invoke-virtual {p1}, LO3/y;->h()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
