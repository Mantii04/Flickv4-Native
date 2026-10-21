.class public final LW0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, LW0/a;->a:I

    .line 5
    .line 6
    iput p2, p0, LW0/a;->b:I

    .line 7
    .line 8
    iput p3, p0, LW0/a;->c:I

    .line 9
    .line 10
    iput p4, p0, LW0/a;->d:I

    .line 11
    .line 12
    iput p5, p0, LW0/a;->e:I

    .line 13
    .line 14
    iput p6, p0, LW0/a;->f:I

    .line 15
    .line 16
    return-void
.end method

.method public static fromFormatLine(Ljava/lang/String;)LW0/a;
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "Format:"

    .line 3
    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-static {v1}, LP3/v;->checkArgument(Z)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x7

    .line 12
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v1, ","

    .line 17
    .line 18
    invoke-static {p0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 v1, -0x1

    .line 23
    const/4 v2, 0x0

    .line 24
    move v5, v1

    .line 25
    move v6, v5

    .line 26
    move v7, v6

    .line 27
    move v8, v7

    .line 28
    move v9, v8

    .line 29
    move v3, v2

    .line 30
    :goto_0
    array-length v4, p0

    .line 31
    if-ge v3, v4, :cond_5

    .line 32
    .line 33
    aget-object v4, p0, v3

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-static {v4}, LP3/a;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    sparse-switch v10, :sswitch_data_0

    .line 51
    .line 52
    .line 53
    :goto_1
    move v4, v1

    .line 54
    goto :goto_2

    .line 55
    :sswitch_0
    const-string v10, "style"

    .line 56
    .line 57
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-nez v4, :cond_0

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_0
    const/4 v4, 0x4

    .line 65
    goto :goto_2

    .line 66
    :sswitch_1
    const-string v10, "start"

    .line 67
    .line 68
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-nez v4, :cond_1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    const/4 v4, 0x3

    .line 76
    goto :goto_2

    .line 77
    :sswitch_2
    const-string v10, "layer"

    .line 78
    .line 79
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-nez v4, :cond_2

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    const/4 v4, 0x2

    .line 87
    goto :goto_2

    .line 88
    :sswitch_3
    const-string v10, "text"

    .line 89
    .line 90
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-nez v4, :cond_3

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    move v4, v0

    .line 98
    goto :goto_2

    .line 99
    :sswitch_4
    const-string v10, "end"

    .line 100
    .line 101
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-nez v4, :cond_4

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_4
    move v4, v2

    .line 109
    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :pswitch_0
    move v8, v3

    .line 114
    goto :goto_3

    .line 115
    :pswitch_1
    move v6, v3

    .line 116
    goto :goto_3

    .line 117
    :pswitch_2
    move v5, v3

    .line 118
    goto :goto_3

    .line 119
    :pswitch_3
    move v9, v3

    .line 120
    goto :goto_3

    .line 121
    :pswitch_4
    move v7, v3

    .line 122
    :goto_3
    add-int/2addr v3, v0

    .line 123
    goto :goto_0

    .line 124
    :cond_5
    if-eq v6, v1, :cond_6

    .line 125
    .line 126
    if-eq v7, v1, :cond_6

    .line 127
    .line 128
    if-eq v9, v1, :cond_6

    .line 129
    .line 130
    new-instance v4, LW0/a;

    .line 131
    .line 132
    array-length v10, p0

    .line 133
    invoke-direct/range {v4 .. v10}, LW0/a;-><init>(IIIIII)V

    .line 134
    .line 135
    .line 136
    return-object v4

    .line 137
    :cond_6
    const/4 p0, 0x0

    .line 138
    return-object p0

    .line 139
    :sswitch_data_0
    .sparse-switch
        0x188db -> :sswitch_4
        0x36452d -> :sswitch_3
        0x61fd551 -> :sswitch_2
        0x68ac462 -> :sswitch_1
        0x68b1db1 -> :sswitch_0
    .end sparse-switch

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
