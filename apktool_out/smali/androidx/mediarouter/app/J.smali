.class public final Landroidx/mediarouter/app/J;
.super Lf1/M;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/mediarouter/app/Q;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/Q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/J;->a:Landroidx/mediarouter/app/Q;

    .line 2
    .line 3
    invoke-direct {p0}, Lf1/M;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRouteAdded(Lf1/X;Lf1/U;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/J;->a:Landroidx/mediarouter/app/Q;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/mediarouter/app/Q;->refreshRoutes()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRouteChanged(Lf1/X;Lf1/U;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/J;->a:Landroidx/mediarouter/app/Q;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/mediarouter/app/Q;->refreshRoutes()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRouteRemoved(Lf1/X;Lf1/U;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/J;->a:Landroidx/mediarouter/app/Q;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/mediarouter/app/Q;->refreshRoutes()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRouteSelected(Lf1/X;Lf1/U;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/J;->a:Landroidx/mediarouter/app/Q;

    .line 2
    .line 3
    invoke-virtual {p1}, Le/c0;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
