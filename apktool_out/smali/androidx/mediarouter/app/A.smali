.class public final Landroidx/mediarouter/app/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/mediarouter/app/B;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/B;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/mediarouter/app/A;->b:Landroidx/mediarouter/app/B;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/A;->b:Landroidx/mediarouter/app/B;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/mediarouter/app/B;->e:Landroidx/mediarouter/app/D;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/mediarouter/app/D;->X:Lf1/U;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Landroidx/mediarouter/app/D;->X:Lf1/U;

    .line 11
    .line 12
    iget-boolean v1, v0, Landroidx/mediarouter/app/D;->n0:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-boolean v1, v0, Landroidx/mediarouter/app/D;->o0:Z

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/D;->m(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
