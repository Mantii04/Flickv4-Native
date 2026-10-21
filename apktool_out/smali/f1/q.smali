.class public final Lf1/q;
.super Landroid/media/MediaRouter2$RouteCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lf1/t;


# direct methods
.method public constructor <init>(Lf1/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf1/q;->a:Lf1/t;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/MediaRouter2$RouteCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRoutesAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lf1/q;->a:Lf1/t;

    .line 2
    .line 3
    invoke-virtual {p1}, Lf1/t;->refreshRoutes()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRoutesChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lf1/q;->a:Lf1/t;

    .line 2
    .line 3
    invoke-virtual {p1}, Lf1/t;->refreshRoutes()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRoutesRemoved(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lf1/q;->a:Lf1/t;

    .line 2
    .line 3
    invoke-virtual {p1}, Lf1/t;->refreshRoutes()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
