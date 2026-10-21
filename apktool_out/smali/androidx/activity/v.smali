.class public final Landroidx/activity/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# instance fields
.field public final synthetic a:LH5/l;

.field public final synthetic b:LH5/l;

.field public final synthetic c:LH5/a;

.field public final synthetic d:LH5/a;


# direct methods
.method public constructor <init>(LH5/l;LH5/l;LH5/a;LH5/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/activity/v;->a:LH5/l;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/activity/v;->b:LH5/l;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/activity/v;->c:LH5/a;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/activity/v;->d:LH5/a;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onBackCancelled()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/v;->d:LH5/a;

    .line 2
    .line 3
    invoke-interface {v0}, LH5/a;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onBackInvoked()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/v;->c:LH5/a;

    .line 2
    .line 3
    invoke-interface {v0}, LH5/a;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onBackProgressed(Landroid/window/BackEvent;)V
    .locals 2

    .line 1
    const-string v0, "backEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/activity/v;->b:LH5/l;

    .line 7
    .line 8
    new-instance v1, Landroidx/activity/c;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Landroidx/activity/c;-><init>(Landroid/window/BackEvent;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, LH5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onBackStarted(Landroid/window/BackEvent;)V
    .locals 2

    .line 1
    const-string v0, "backEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/activity/v;->a:LH5/l;

    .line 7
    .line 8
    new-instance v1, Landroidx/activity/c;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Landroidx/activity/c;-><init>(Landroid/window/BackEvent;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, LH5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method
