.class public final Lc1/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:[B


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:I

.field public e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lc1/m;->f:[B

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-array p1, p1, [B

    .line 5
    .line 6
    iput-object p1, p0, Lc1/m;->e:[B

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onData([BII)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lc1/m;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sub-int/2addr p3, p2

    .line 7
    iget-object v0, p0, Lc1/m;->e:[B

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    iget v2, p0, Lc1/m;->c:I

    .line 11
    .line 12
    add-int/2addr v2, p3

    .line 13
    if-ge v1, v2, :cond_1

    .line 14
    .line 15
    mul-int/lit8 v2, v2, 0x2

    .line 16
    .line 17
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lc1/m;->e:[B

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lc1/m;->e:[B

    .line 24
    .line 25
    iget v1, p0, Lc1/m;->c:I

    .line 26
    .line 27
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    .line 29
    .line 30
    iget p1, p0, Lc1/m;->c:I

    .line 31
    .line 32
    add-int/2addr p1, p3

    .line 33
    iput p1, p0, Lc1/m;->c:I

    .line 34
    .line 35
    return-void
.end method

.method public onStartCode(II)Z
    .locals 8

    .line 1
    iget v0, p0, Lc1/m;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    const/16 v4, 0xb5

    .line 9
    .line 10
    const/4 v5, 0x2

    .line 11
    const-string v6, "Unexpected start code value"

    .line 12
    .line 13
    const-string v7, "H263Reader"

    .line 14
    .line 15
    if-eq v0, v3, :cond_6

    .line 16
    .line 17
    if-eq v0, v5, :cond_4

    .line 18
    .line 19
    const/4 v5, 0x4

    .line 20
    if-eq v0, v2, :cond_2

    .line 21
    .line 22
    if-ne v0, v5, :cond_1

    .line 23
    .line 24
    const/16 v0, 0xb3

    .line 25
    .line 26
    if-eq p1, v0, :cond_0

    .line 27
    .line 28
    if-ne p1, v4, :cond_9

    .line 29
    .line 30
    :cond_0
    iget p1, p0, Lc1/m;->c:I

    .line 31
    .line 32
    sub-int/2addr p1, p2

    .line 33
    iput p1, p0, Lc1/m;->c:I

    .line 34
    .line 35
    iput-boolean v1, p0, Lc1/m;->a:Z

    .line 36
    .line 37
    return v3

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_2
    and-int/lit16 p1, p1, 0xf0

    .line 45
    .line 46
    const/16 p2, 0x20

    .line 47
    .line 48
    if-eq p1, p2, :cond_3

    .line 49
    .line 50
    invoke-static {v7, v6}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lc1/m;->reset()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    iget p1, p0, Lc1/m;->c:I

    .line 58
    .line 59
    iput p1, p0, Lc1/m;->d:I

    .line 60
    .line 61
    iput v5, p0, Lc1/m;->b:I

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    const/16 p2, 0x1f

    .line 65
    .line 66
    if-le p1, p2, :cond_5

    .line 67
    .line 68
    invoke-static {v7, v6}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lc1/m;->reset()V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_5
    iput v2, p0, Lc1/m;->b:I

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_6
    if-eq p1, v4, :cond_7

    .line 79
    .line 80
    invoke-static {v7, v6}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lc1/m;->reset()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_7
    iput v5, p0, Lc1/m;->b:I

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_8
    const/16 p2, 0xb0

    .line 91
    .line 92
    if-ne p1, p2, :cond_9

    .line 93
    .line 94
    iput v3, p0, Lc1/m;->b:I

    .line 95
    .line 96
    iput-boolean v3, p0, Lc1/m;->a:Z

    .line 97
    .line 98
    :cond_9
    :goto_0
    sget-object p1, Lc1/m;->f:[B

    .line 99
    .line 100
    invoke-virtual {p0, p1, v1, v2}, Lc1/m;->onData([BII)V

    .line 101
    .line 102
    .line 103
    return v1
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc1/m;->a:Z

    .line 3
    .line 4
    iput v0, p0, Lc1/m;->c:I

    .line 5
    .line 6
    iput v0, p0, Lc1/m;->b:I

    .line 7
    .line 8
    return-void
.end method
