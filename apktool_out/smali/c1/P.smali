.class public final Lc1/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/J;


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableBitArray;

.field public final synthetic b:Lc1/S;


# direct methods
.method public constructor <init>(Lc1/S;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lc1/P;->b:Lc1/S;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroidx/media3/common/util/ParsableBitArray;

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    new-array v0, v0, [B

    .line 10
    .line 11
    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lc1/P;->a:Landroidx/media3/common/util/ParsableBitArray;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    and-int/lit16 v0, v0, 0x80

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_1
    const/4 v0, 0x6

    .line 18
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x4

    .line 26
    div-int/2addr v0, v1

    .line 27
    const/4 v2, 0x0

    .line 28
    move v3, v2

    .line 29
    :goto_0
    iget-object v4, p0, Lc1/P;->b:Lc1/S;

    .line 30
    .line 31
    if-ge v3, v0, :cond_4

    .line 32
    .line 33
    iget-object v5, p0, Lc1/P;->a:Landroidx/media3/common/util/ParsableBitArray;

    .line 34
    .line 35
    invoke-virtual {p1, v5, v1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(Landroidx/media3/common/util/ParsableBitArray;I)V

    .line 36
    .line 37
    .line 38
    const/16 v6, 0x10

    .line 39
    .line 40
    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    const/4 v7, 0x3

    .line 45
    invoke-virtual {v5, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 46
    .line 47
    .line 48
    const/16 v7, 0xd

    .line 49
    .line 50
    if-nez v6, :cond_2

    .line 51
    .line 52
    invoke-virtual {v5, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    invoke-virtual {v5, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    iget-object v6, v4, Lc1/S;->i:Landroid/util/SparseArray;

    .line 61
    .line 62
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    if-nez v6, :cond_3

    .line 67
    .line 68
    iget-object v6, v4, Lc1/S;->i:Landroid/util/SparseArray;

    .line 69
    .line 70
    new-instance v7, Lc1/K;

    .line 71
    .line 72
    new-instance v8, Lc1/Q;

    .line 73
    .line 74
    invoke-direct {v8, v4, v5}, Lc1/Q;-><init>(Lc1/S;I)V

    .line 75
    .line 76
    .line 77
    invoke-direct {v7, v8}, Lc1/K;-><init>(Lc1/J;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget v5, v4, Lc1/S;->o:I

    .line 84
    .line 85
    add-int/lit8 v5, v5, 0x1

    .line 86
    .line 87
    iput v5, v4, Lc1/S;->o:I

    .line 88
    .line 89
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    iget p1, v4, Lc1/S;->a:I

    .line 93
    .line 94
    const/4 v0, 0x2

    .line 95
    if-eq p1, v0, :cond_5

    .line 96
    .line 97
    iget-object p1, v4, Lc1/S;->i:Landroid/util/SparseArray;

    .line 98
    .line 99
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 100
    .line 101
    .line 102
    :cond_5
    :goto_2
    return-void
.end method

.method public init(Landroidx/media3/common/util/TimestampAdjuster;Lv0/F;Lc1/W;)V
    .locals 0

    .line 1
    return-void
.end method
