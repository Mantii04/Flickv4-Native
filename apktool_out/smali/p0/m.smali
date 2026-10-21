.class public abstract Lp0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public d:I

.field public e:Lp0/l;

.field public f:Landroid/media/VolumeProvider;


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lp0/m;->a:I

    .line 5
    .line 6
    iput p2, p0, Lp0/m;->b:I

    .line 7
    .line 8
    iput p3, p0, Lp0/m;->d:I

    .line 9
    .line 10
    iput-object p4, p0, Lp0/m;->c:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getCurrentVolume()I
    .locals 1

    .line 1
    iget v0, p0, Lp0/m;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMaxVolume()I
    .locals 1

    .line 1
    iget v0, p0, Lp0/m;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final getVolumeControl()I
    .locals 1

    .line 1
    iget v0, p0, Lp0/m;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public getVolumeProvider()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lp0/m;->f:Landroid/media/VolumeProvider;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v1, 0x1e

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    new-instance v2, Lp0/i;

    .line 12
    .line 13
    iget v6, p0, Lp0/m;->d:I

    .line 14
    .line 15
    iget v4, p0, Lp0/m;->a:I

    .line 16
    .line 17
    iget v5, p0, Lp0/m;->b:I

    .line 18
    .line 19
    iget-object v7, p0, Lp0/m;->c:Ljava/lang/String;

    .line 20
    .line 21
    move-object v3, p0

    .line 22
    invoke-direct/range {v2 .. v7}, Lp0/i;-><init>(Lp0/m;IIILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput-object v2, v3, Lp0/m;->f:Landroid/media/VolumeProvider;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v3, p0

    .line 29
    new-instance v0, Lp0/j;

    .line 30
    .line 31
    iget v1, v3, Lp0/m;->d:I

    .line 32
    .line 33
    iget v2, v3, Lp0/m;->a:I

    .line 34
    .line 35
    iget v4, v3, Lp0/m;->b:I

    .line 36
    .line 37
    invoke-direct {v0, p0, v2, v4, v1}, Lp0/j;-><init>(Lp0/m;III)V

    .line 38
    .line 39
    .line 40
    iput-object v0, v3, Lp0/m;->f:Landroid/media/VolumeProvider;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move-object v3, p0

    .line 44
    :goto_0
    iget-object v0, v3, Lp0/m;->f:Landroid/media/VolumeProvider;

    .line 45
    .line 46
    return-object v0
.end method

.method public abstract onAdjustVolume(I)V
.end method

.method public abstract onSetVolumeTo(I)V
.end method

.method public setCallback(Lp0/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp0/m;->e:Lp0/l;

    .line 2
    .line 3
    return-void
.end method

.method public final setCurrentVolume(I)V
    .locals 1

    .line 1
    iput p1, p0, Lp0/m;->d:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lp0/m;->getVolumeProvider()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/media/VolumeProvider;

    .line 8
    .line 9
    invoke-static {v0, p1}, Lp0/k;->a(Landroid/media/VolumeProvider;I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lp0/m;->e:Lp0/l;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Lp0/l;->onVolumeChanged(Lp0/m;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
