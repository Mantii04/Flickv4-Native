.class public final LO2/u;
.super LN2/c;
.source "SourceFile"


# instance fields
.field public final N:I


# direct methods
.method public constructor <init>(LO2/v;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, LN2/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LO2/u;->N:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCreateAnimation()Landroid/animation/ValueAnimator;
    .locals 15

    .line 1
    const/high16 v0, 0x3f400000    # 0.75f

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/high16 v3, 0x3f000000    # 0.5f

    .line 7
    .line 8
    const/4 v4, 0x6

    .line 9
    new-array v5, v4, [F

    .line 10
    .line 11
    fill-array-data v5, :array_0

    .line 12
    .line 13
    .line 14
    new-instance v6, LL2/g;

    .line 15
    .line 16
    invoke-direct {v6, p0}, LL2/g;-><init>(LN2/q;)V

    .line 17
    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v8

    .line 24
    const/16 v9, -0x5a

    .line 25
    .line 26
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v9

    .line 30
    const/16 v10, -0xb3

    .line 31
    .line 32
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v10

    .line 36
    const/16 v11, -0xb4

    .line 37
    .line 38
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v11

    .line 42
    const/16 v12, -0x10e

    .line 43
    .line 44
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v12

    .line 48
    const/16 v13, -0x168

    .line 49
    .line 50
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v13

    .line 54
    new-array v14, v4, [Ljava/lang/Integer;

    .line 55
    .line 56
    aput-object v8, v14, v7

    .line 57
    .line 58
    const/4 v8, 0x1

    .line 59
    aput-object v9, v14, v8

    .line 60
    .line 61
    const/4 v9, 0x2

    .line 62
    aput-object v10, v14, v9

    .line 63
    .line 64
    const/4 v10, 0x3

    .line 65
    aput-object v11, v14, v10

    .line 66
    .line 67
    const/4 v11, 0x4

    .line 68
    aput-object v12, v14, v11

    .line 69
    .line 70
    const/4 v12, 0x5

    .line 71
    aput-object v13, v14, v12

    .line 72
    .line 73
    invoke-virtual {v6, v5, v14}, LL2/g;->rotate([F[Ljava/lang/Integer;)LL2/g;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-array v13, v4, [Ljava/lang/Float;

    .line 86
    .line 87
    aput-object v2, v13, v7

    .line 88
    .line 89
    aput-object v0, v13, v8

    .line 90
    .line 91
    aput-object v0, v13, v9

    .line 92
    .line 93
    aput-object v0, v13, v10

    .line 94
    .line 95
    aput-object v2, v13, v11

    .line 96
    .line 97
    aput-object v2, v13, v12

    .line 98
    .line 99
    invoke-virtual {v6, v5, v13}, LL2/g;->translateXPercentage([F[Ljava/lang/Float;)LL2/g;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    new-array v13, v4, [Ljava/lang/Float;

    .line 104
    .line 105
    aput-object v2, v13, v7

    .line 106
    .line 107
    aput-object v2, v13, v8

    .line 108
    .line 109
    aput-object v0, v13, v9

    .line 110
    .line 111
    aput-object v0, v13, v10

    .line 112
    .line 113
    aput-object v0, v13, v11

    .line 114
    .line 115
    aput-object v2, v13, v12

    .line 116
    .line 117
    invoke-virtual {v6, v5, v13}, LL2/g;->translateYPercentage([F[Ljava/lang/Float;)LL2/g;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    new-array v3, v4, [Ljava/lang/Float;

    .line 130
    .line 131
    aput-object v1, v3, v7

    .line 132
    .line 133
    aput-object v2, v3, v8

    .line 134
    .line 135
    aput-object v1, v3, v9

    .line 136
    .line 137
    aput-object v1, v3, v10

    .line 138
    .line 139
    aput-object v2, v3, v11

    .line 140
    .line 141
    aput-object v1, v3, v12

    .line 142
    .line 143
    invoke-virtual {v0, v5, v3}, LL2/g;->scale([F[Ljava/lang/Float;)LL2/g;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    const-wide/16 v1, 0x708

    .line 148
    .line 149
    invoke-virtual {v0, v1, v2}, LL2/g;->duration(J)LL2/g;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v0, v5}, LL2/g;->easeInOut([F)LL2/g;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 158
    .line 159
    const/16 v2, 0x18

    .line 160
    .line 161
    if-lt v1, v2, :cond_0

    .line 162
    .line 163
    iget v1, p0, LO2/u;->N:I

    .line 164
    .line 165
    invoke-virtual {v0, v1}, LL2/g;->startFrame(I)LL2/g;

    .line 166
    .line 167
    .line 168
    :cond_0
    invoke-virtual {v0}, LL2/g;->build()Landroid/animation/ObjectAnimator;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    return-object v0

    .line 173
    :array_0
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f028f5c    # 0.51f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data
.end method
