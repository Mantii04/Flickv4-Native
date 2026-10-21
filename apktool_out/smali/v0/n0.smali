.class public final Lv0/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/F;


# instance fields
.field public final b:J

.field public final e:Lv0/F;


# direct methods
.method public constructor <init>(JLv0/F;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lv0/n0;->b:J

    .line 5
    .line 6
    iput-object p3, p0, Lv0/n0;->e:Lv0/F;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public endTracks()V
    .locals 1

    .line 1
    iget-object v0, p0, Lv0/n0;->e:Lv0/F;

    .line 2
    .line 3
    invoke-interface {v0}, Lv0/F;->endTracks()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public seekMap(Lv0/g0;)V
    .locals 1

    .line 1
    new-instance v0, Lv0/m0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p1}, Lv0/m0;-><init>(Lv0/n0;Lv0/g0;Lv0/g0;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lv0/n0;->e:Lv0/F;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public track(II)Lv0/r0;
    .locals 1

    .line 1
    iget-object v0, p0, Lv0/n0;->e:Lv0/F;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lv0/F;->track(II)Lv0/r0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
