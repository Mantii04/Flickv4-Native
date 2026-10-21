.class public final Lp0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lp0/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroidx/media/AudioAttributesCompat;->b:I

    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1a

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    new-instance v0, Lp0/d;

    .line 13
    .line 14
    invoke-direct {v0}, Lp0/c;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lp0/a;->a:Lp0/c;

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Lp0/c;

    .line 21
    .line 22
    invoke-direct {v0}, Lp0/c;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lp0/a;->a:Lp0/c;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public build()Landroidx/media/AudioAttributesCompat;
    .locals 2

    .line 1
    new-instance v0, Landroidx/media/AudioAttributesCompat;

    .line 2
    .line 3
    iget-object v1, p0, Lp0/a;->a:Lp0/c;

    .line 4
    .line 5
    invoke-interface {v1}, Lp0/b;->build()Landroidx/media/AudioAttributesImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Landroidx/media/AudioAttributesCompat;-><init>(Landroidx/media/AudioAttributesImpl;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public setLegacyStreamType(I)Lp0/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lp0/a;->a:Lp0/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lp0/c;->setLegacyStreamType(I)Lp0/b;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
