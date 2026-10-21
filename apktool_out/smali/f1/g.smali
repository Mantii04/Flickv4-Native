.class public final Lf1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/support/v4/media/session/MediaSessionCompat;

.field public b:Lf1/f;

.field public final synthetic c:Lf1/k;


# direct methods
.method public constructor <init>(Lf1/k;Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf1/g;->c:Lf1/k;

    .line 5
    .line 6
    iput-object p2, p0, Lf1/g;->a:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/g;->a:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 2
    .line 3
    iget-object v1, p0, Lf1/g;->c:Lf1/k;

    .line 4
    .line 5
    iget-object v1, v1, Lf1/k;->k:Lf1/C0;

    .line 6
    .line 7
    iget v1, v1, Lf1/C0;->d:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackToLocal(I)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lf1/g;->b:Lf1/f;

    .line 14
    .line 15
    return-void
.end method
