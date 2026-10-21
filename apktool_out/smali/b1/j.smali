.class public final Lb1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS0/s;


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public final b:Lb1/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lb1/j;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 10
    .line 11
    new-instance v0, Lb1/b;

    .line 12
    .line 13
    invoke-direct {v0}, Lb1/b;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lb1/j;->b:Lb1/b;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public getCueReplacementBehavior()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public parse([BIILS0/r;Landroidx/media3/common/util/Consumer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "LS0/r;",
            "Landroidx/media3/common/util/Consumer<",
            "LS0/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    add-int/2addr p3, p2

    .line 2
    iget-object v0, p0, Lb1/j;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 3
    .line 4
    invoke-virtual {v0, p1, p3}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-static {v0}, Lb1/k;->validateWebvttHeaderLine(Landroidx/media3/common/util/ParsableByteArray;)V
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_1
    const/4 p3, -0x1

    .line 35
    const/4 v1, 0x0

    .line 36
    move v2, p3

    .line 37
    move v3, v1

    .line 38
    :goto_2
    const/4 v4, 0x3

    .line 39
    const/4 v5, 0x1

    .line 40
    const/4 v6, 0x2

    .line 41
    if-ne v2, p3, :cond_5

    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-nez v2, :cond_2

    .line 52
    .line 53
    move v2, v1

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const-string v7, "STYLE"

    .line 56
    .line 57
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_3

    .line 62
    .line 63
    move v2, v6

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    const-string v6, "NOTE"

    .line 66
    .line 67
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_4

    .line 72
    .line 73
    move v2, v5

    .line 74
    goto :goto_2

    .line 75
    :cond_4
    move v2, v4

    .line 76
    goto :goto_2

    .line 77
    :cond_5
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 78
    .line 79
    .line 80
    if-eqz v2, :cond_9

    .line 81
    .line 82
    if-ne v2, v5, :cond_6

    .line 83
    .line 84
    :goto_3
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    if-nez p3, :cond_1

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_6
    if-ne v2, v6, :cond_8

    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 98
    .line 99
    .line 100
    move-result p3

    .line 101
    if-eqz p3, :cond_7

    .line 102
    .line 103
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    iget-object p3, p0, Lb1/j;->b:Lb1/b;

    .line 107
    .line 108
    invoke-virtual {p3, v0}, Lb1/b;->parseBlock(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 117
    .line 118
    const-string p2, "A style block was found after the first cue."

    .line 119
    .line 120
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p1

    .line 124
    :cond_8
    if-ne v2, v4, :cond_1

    .line 125
    .line 126
    invoke-static {v0, p1}, Lb1/i;->parseCue(Landroidx/media3/common/util/ParsableByteArray;Ljava/util/List;)Lb1/d;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    if-eqz p3, :cond_1

    .line 131
    .line 132
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_9
    new-instance p1, Lb1/l;

    .line 137
    .line 138
    invoke-direct {p1, p2}, Lb1/l;-><init>(Ljava/util/List;)V

    .line 139
    .line 140
    .line 141
    invoke-static {p1, p4, p5}, LS0/f;->toCuesWithTiming(LS0/i;LS0/r;Landroidx/media3/common/util/Consumer;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :catch_0
    move-exception p1

    .line 146
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 147
    .line 148
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    throw p2
.end method

.method public final synthetic parseToLegacySubtitle([BII)LS0/i;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, LS0/o;->a(LS0/s;[BII)LS0/i;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic reset()V
    .locals 0

    .line 1
    invoke-static {p0}, LS0/o;->b(LS0/s;)V

    return-void
.end method
