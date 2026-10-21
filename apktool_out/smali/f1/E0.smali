.class public final Lf1/E0;
.super Lf1/F;
.source "SourceFile"


# instance fields
.field public final a:Landroid/media/MediaRouter$RouteInfo;


# direct methods
.method public constructor <init>(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf1/F;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf1/E0;->a:Landroid/media/MediaRouter$RouteInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSetVolume(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/E0;->a:Landroid/media/MediaRouter$RouteInfo;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lf1/b0;->requestSetVolume(Landroid/media/MediaRouter$RouteInfo;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onUpdateVolume(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/E0;->a:Landroid/media/MediaRouter$RouteInfo;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lf1/b0;->requestUpdateVolume(Landroid/media/MediaRouter$RouteInfo;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
