.class public final Lx0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx0/a;


# instance fields
.field public final a:Lcom/google/common/collect/ImmutableList;

.field public final b:I


# direct methods
.method public constructor <init>(ILcom/google/common/collect/ImmutableList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lx0/h;->b:I

    .line 5
    .line 6
    iput-object p2, p0, Lx0/h;->a:Lcom/google/common/collect/ImmutableList;

    .line 7
    .line 8
    return-void
.end method

.method public static parseFrom(ILandroidx/media3/common/util/ParsableByteArray;)Lx0/h;
    .locals 7

    .line 1
    new-instance v0, LQ3/s;

    .line 2
    .line 3
    invoke-direct {v0}, LQ3/s;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, -0x2

    .line 11
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/16 v4, 0x8

    .line 16
    .line 17
    if-le v3, v4, :cond_3

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    add-int/2addr v5, v4

    .line 32
    invoke-virtual {p1, v5}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 33
    .line 34
    .line 35
    const v4, 0x5453494c

    .line 36
    .line 37
    .line 38
    if-ne v3, v4, :cond_0

    .line 39
    .line 40
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-static {v3, p1}, Lx0/h;->parseFrom(ILandroidx/media3/common/util/ParsableByteArray;)Lx0/h;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    sparse-switch v3, :sswitch_data_0

    .line 50
    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    goto :goto_1

    .line 54
    :sswitch_0
    invoke-static {p1}, Lx0/j;->parseFrom(Landroidx/media3/common/util/ParsableByteArray;)Lx0/j;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    goto :goto_1

    .line 59
    :sswitch_1
    invoke-static {p1}, Lx0/f;->parseFrom(Landroidx/media3/common/util/ParsableByteArray;)Lx0/f;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    goto :goto_1

    .line 64
    :sswitch_2
    invoke-static {p1}, Lx0/e;->parseFrom(Landroidx/media3/common/util/ParsableByteArray;)Lx0/e;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    goto :goto_1

    .line 69
    :sswitch_3
    invoke-static {v2, p1}, Lx0/i;->parseFrom(ILandroidx/media3/common/util/ParsableByteArray;)Lx0/a;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    :goto_1
    if-eqz v3, :cond_2

    .line 74
    .line 75
    invoke-interface {v3}, Lx0/a;->getType()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    const v6, 0x68727473

    .line 80
    .line 81
    .line 82
    if-ne v4, v6, :cond_1

    .line 83
    .line 84
    move-object v2, v3

    .line 85
    check-cast v2, Lx0/f;

    .line 86
    .line 87
    invoke-virtual {v2}, Lx0/f;->getTrackType()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    :cond_1
    invoke-virtual {v0, v3}, LQ3/s;->add(Ljava/lang/Object;)LQ3/s;

    .line 92
    .line 93
    .line 94
    :cond_2
    invoke-virtual {p1, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    new-instance p1, Lx0/h;

    .line 102
    .line 103
    invoke-virtual {v0}, LQ3/s;->build()Lcom/google/common/collect/ImmutableList;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-direct {p1, p0, v0}, Lx0/h;-><init>(ILcom/google/common/collect/ImmutableList;)V

    .line 108
    .line 109
    .line 110
    return-object p1

    .line 111
    :sswitch_data_0
    .sparse-switch
        0x66727473 -> :sswitch_3
        0x68697661 -> :sswitch_2
        0x68727473 -> :sswitch_1
        0x6e727473 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getChild(Ljava/lang/Class;)Lx0/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lx0/a;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lx0/h;->a:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()LQ3/x0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lx0/a;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-ne v2, p1, :cond_0

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_1
    const/4 p1, 0x0

    .line 27
    return-object p1
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lx0/h;->b:I

    .line 2
    .line 3
    return v0
.end method
