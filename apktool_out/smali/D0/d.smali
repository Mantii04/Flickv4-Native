.class public final LD0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(JLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "LD0/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, LD0/d;->a:J

    .line 5
    .line 6
    iput-object p3, p0, LD0/d;->b:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getMotionPhotoMetadata(J)LE0/c;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, LD0/d;->b:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x0

    .line 11
    if-ge v2, v3, :cond_0

    .line 12
    .line 13
    return-object v4

    .line 14
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x1

    .line 19
    sub-int/2addr v2, v3

    .line 20
    const-wide/16 v5, -0x1

    .line 21
    .line 22
    move-wide/from16 v7, p1

    .line 23
    .line 24
    move-wide v10, v5

    .line 25
    move-wide v12, v10

    .line 26
    move-wide/from16 v16, v12

    .line 27
    .line 28
    move-wide/from16 v18, v16

    .line 29
    .line 30
    :goto_0
    if-ltz v2, :cond_6

    .line 31
    .line 32
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v9

    .line 36
    check-cast v9, LD0/c;

    .line 37
    .line 38
    iget-object v14, v9, LD0/c;->a:Ljava/lang/String;

    .line 39
    .line 40
    const-string v15, "video/mp4"

    .line 41
    .line 42
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v14

    .line 46
    if-nez v14, :cond_2

    .line 47
    .line 48
    iget-object v14, v9, LD0/c;->a:Ljava/lang/String;

    .line 49
    .line 50
    const-string v15, "video/quicktime"

    .line 51
    .line 52
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v14

    .line 56
    if-eqz v14, :cond_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const/4 v14, 0x0

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    :goto_1
    move v14, v3

    .line 62
    :goto_2
    if-nez v2, :cond_3

    .line 63
    .line 64
    move-object v15, v4

    .line 65
    iget-wide v3, v9, LD0/c;->c:J

    .line 66
    .line 67
    sub-long/2addr v7, v3

    .line 68
    const-wide/16 v3, 0x0

    .line 69
    .line 70
    :goto_3
    move-wide/from16 v20, v7

    .line 71
    .line 72
    move-wide v7, v3

    .line 73
    move-wide/from16 v3, v20

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_3
    move-object v15, v4

    .line 77
    iget-wide v3, v9, LD0/c;->b:J

    .line 78
    .line 79
    sub-long v3, v7, v3

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :goto_4
    if-eqz v14, :cond_4

    .line 83
    .line 84
    cmp-long v9, v7, v3

    .line 85
    .line 86
    if-eqz v9, :cond_4

    .line 87
    .line 88
    sub-long v18, v3, v7

    .line 89
    .line 90
    move-wide/from16 v16, v7

    .line 91
    .line 92
    :cond_4
    if-nez v2, :cond_5

    .line 93
    .line 94
    move-wide v12, v3

    .line 95
    move-wide v10, v7

    .line 96
    :cond_5
    add-int/lit8 v2, v2, -0x1

    .line 97
    .line 98
    move-object v4, v15

    .line 99
    const/4 v3, 0x1

    .line 100
    goto :goto_0

    .line 101
    :cond_6
    move-object v15, v4

    .line 102
    cmp-long v1, v16, v5

    .line 103
    .line 104
    if-eqz v1, :cond_8

    .line 105
    .line 106
    cmp-long v1, v18, v5

    .line 107
    .line 108
    if-eqz v1, :cond_8

    .line 109
    .line 110
    cmp-long v1, v10, v5

    .line 111
    .line 112
    if-eqz v1, :cond_8

    .line 113
    .line 114
    cmp-long v1, v12, v5

    .line 115
    .line 116
    if-nez v1, :cond_7

    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_7
    new-instance v9, LE0/c;

    .line 120
    .line 121
    iget-wide v14, v0, LD0/d;->a:J

    .line 122
    .line 123
    invoke-direct/range {v9 .. v19}, LE0/c;-><init>(JJJJJ)V

    .line 124
    .line 125
    .line 126
    return-object v9

    .line 127
    :cond_8
    :goto_5
    return-object v15
.end method
