.class public final LP0/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LP0/J;

.field public final b:LP0/M;

.field public final c:Lv0/r0;

.field public final d:Lv0/s0;

.field public e:I

.field public f:Landroidx/media3/common/Format;


# direct methods
.method public constructor <init>(LP0/J;LP0/M;Lv0/r0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LP0/A;->a:LP0/J;

    .line 5
    .line 6
    iput-object p2, p0, LP0/A;->b:LP0/M;

    .line 7
    .line 8
    iput-object p3, p0, LP0/A;->c:Lv0/r0;

    .line 9
    .line 10
    iget-object p1, p1, LP0/J;->g:Landroidx/media3/common/Format;

    .line 11
    .line 12
    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 13
    .line 14
    const-string p2, "audio/true-hd"

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    new-instance p1, Lv0/s0;

    .line 23
    .line 24
    invoke-direct {p1}, Lv0/s0;-><init>()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    iput-object p1, p0, LP0/A;->d:Lv0/s0;

    .line 30
    .line 31
    return-void
.end method
