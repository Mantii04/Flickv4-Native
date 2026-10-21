.class public abstract LD/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LD/q;

.field public static final b:Lp/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, LD/n;

    .line 8
    .line 9
    invoke-direct {v0}, LD/n;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v0, LD/i;->a:LD/q;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 v1, 0x1c

    .line 16
    .line 17
    if-lt v0, v1, :cond_1

    .line 18
    .line 19
    new-instance v0, LD/m;

    .line 20
    .line 21
    invoke-direct {v0}, LD/m;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, LD/i;->a:LD/q;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/16 v1, 0x1a

    .line 28
    .line 29
    if-lt v0, v1, :cond_2

    .line 30
    .line 31
    new-instance v0, LD/l;

    .line 32
    .line 33
    invoke-direct {v0}, LD/l;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v0, LD/i;->a:LD/q;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/16 v1, 0x18

    .line 40
    .line 41
    if-lt v0, v1, :cond_3

    .line 42
    .line 43
    invoke-static {}, LD/k;->isUsable()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    new-instance v0, LD/k;

    .line 50
    .line 51
    invoke-direct {v0}, LD/q;-><init>()V

    .line 52
    .line 53
    .line 54
    sput-object v0, LD/i;->a:LD/q;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    new-instance v0, LD/j;

    .line 58
    .line 59
    invoke-direct {v0}, LD/q;-><init>()V

    .line 60
    .line 61
    .line 62
    sput-object v0, LD/i;->a:LD/q;

    .line 63
    .line 64
    :goto_0
    new-instance v0, Lp/p;

    .line 65
    .line 66
    const/16 v1, 0x10

    .line 67
    .line 68
    invoke-direct {v0, v1}, Lp/p;-><init>(I)V

    .line 69
    .line 70
    .line 71
    sput-object v0, LD/i;->b:Lp/p;

    .line 72
    .line 73
    return-void
.end method

.method public static a(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 p0, 0x2d

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static create(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string p1, "Context cannot be null"

    .line 11
    .line 12
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0
.end method

.method public static createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[LJ/q;I)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    sget-object v0, LD/i;->a:LD/q;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, LD/q;->createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[LJ/q;I)Landroid/graphics/Typeface;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static createFromResourcesFamilyXml(Landroid/content/Context;LC/f;Landroid/content/res/Resources;ILjava/lang/String;IILC/r;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    .locals 12

    .line 1
    move-object/from16 v0, p7

    .line 2
    .line 3
    move-object/from16 v1, p8

    .line 4
    .line 5
    instance-of v2, p1, LC/i;

    .line 6
    .line 7
    if-eqz v2, :cond_7

    .line 8
    .line 9
    check-cast p1, LC/i;

    .line 10
    .line 11
    invoke-virtual {p1}, LC/i;->getSystemFontFamilyName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 31
    .line 32
    invoke-static {v5, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {v2, v5}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-nez v5, :cond_1

    .line 43
    .line 44
    move-object v4, v2

    .line 45
    :cond_1
    :goto_0
    if-eqz v4, :cond_3

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0, v4, v1}, LC/r;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-object v4

    .line 53
    :cond_3
    const/4 v2, 0x1

    .line 54
    if-eqz p9, :cond_5

    .line 55
    .line 56
    invoke-virtual {p1}, LC/i;->getFetchStrategy()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_4

    .line 61
    .line 62
    :goto_1
    move v8, v2

    .line 63
    goto :goto_2

    .line 64
    :cond_4
    move v8, v3

    .line 65
    goto :goto_2

    .line 66
    :cond_5
    if-nez v0, :cond_4

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :goto_2
    if-eqz p9, :cond_6

    .line 70
    .line 71
    invoke-virtual {p1}, LC/i;->getTimeout()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    :goto_3
    move v9, v2

    .line 76
    goto :goto_4

    .line 77
    :cond_6
    const/4 v2, -0x1

    .line 78
    goto :goto_3

    .line 79
    :goto_4
    invoke-static {v1}, LC/r;->getHandler(Landroid/os/Handler;)Landroid/os/Handler;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    new-instance v11, LD/h;

    .line 84
    .line 85
    invoke-direct {v11, v0}, LD/h;-><init>(LC/r;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, LC/i;->getRequest()LJ/i;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    move-object v5, p0

    .line 93
    move/from16 v7, p6

    .line 94
    .line 95
    invoke-static/range {v5 .. v11}, LJ/s;->requestFont(Landroid/content/Context;LJ/i;IZILandroid/os/Handler;LJ/r;)Landroid/graphics/Typeface;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    goto :goto_5

    .line 100
    :cond_7
    sget-object v2, LD/i;->a:LD/q;

    .line 101
    .line 102
    check-cast p1, LC/g;

    .line 103
    .line 104
    move/from16 v7, p6

    .line 105
    .line 106
    invoke-virtual {v2, p0, p1, p2, v7}, LD/q;->createFromFontFamilyFilesResourceEntry(Landroid/content/Context;LC/g;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    if-eqz v0, :cond_9

    .line 111
    .line 112
    if-eqz p0, :cond_8

    .line 113
    .line 114
    invoke-virtual {v0, p0, v1}, LC/r;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    .line 115
    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_8
    const/4 p1, -0x3

    .line 119
    invoke-virtual {v0, p1, v1}, LC/r;->callbackFailAsync(ILandroid/os/Handler;)V

    .line 120
    .line 121
    .line 122
    :cond_9
    :goto_5
    if-eqz p0, :cond_a

    .line 123
    .line 124
    sget-object p1, LD/i;->b:Lp/p;

    .line 125
    .line 126
    invoke-static/range {p2 .. p6}, LD/i;->a(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {p1, p2, p0}, Lp/p;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    :cond_a
    return-object p0
.end method

.method public static createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;II)Landroid/graphics/Typeface;
    .locals 6

    .line 1
    sget-object v0, LD/i;->a:LD/q;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-object v2, p1

    .line 5
    move v3, p2

    .line 6
    move-object v4, p3

    .line 7
    move v5, p5

    .line 8
    invoke-virtual/range {v0 .. v5}, LD/q;->createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-static {v2, v3, v4, p4, v5}, LD/i;->a(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget-object p2, LD/i;->b:Lp/p;

    .line 19
    .line 20
    invoke-virtual {p2, p1, p0}, Lp/p;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_0
    return-object p0
.end method

.method public static findFromCache(Landroid/content/res/Resources;ILjava/lang/String;II)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    sget-object v0, LD/i;->b:Lp/p;

    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3, p4}, LD/i;->a(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Lp/p;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/graphics/Typeface;

    .line 12
    .line 13
    return-object p0
.end method
