.class public Lflix/com/vision/extractors/CloseloadExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflix/com/vision/extractors/CloseloadExtractor$StringTransform;,
        Lflix/com/vision/extractors/CloseloadExtractor$ByteTransform;,
        Lflix/com/vision/extractors/CloseloadExtractor$StringResponseConverterFactory;,
        Lflix/com/vision/extractors/CloseloadExtractor$StringResponseConverter;,
        Lflix/com/vision/extractors/CloseloadExtractor$Factory;,
        Lflix/com/vision/extractors/CloseloadExtractor$Service;
    }
.end annotation


# instance fields
.field public mainUrl:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public ridoURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Closeload"

    .line 5
    .line 6
    iput-object v0, p0, Lflix/com/vision/extractors/CloseloadExtractor;->name:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "https://closeload.top/"

    .line 9
    .line 10
    iput-object v0, p0, Lflix/com/vision/extractors/CloseloadExtractor;->mainUrl:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "https://ridomovies.tv/"

    .line 13
    .line 14
    iput-object v0, p0, Lflix/com/vision/extractors/CloseloadExtractor;->ridoURL:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic a(Lflix/com/vision/extractors/CloseloadExtractor;[B)[B
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lflix/com/vision/extractors/CloseloadExtractor;->lambda$smartBruteForce$5([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lflix/com/vision/extractors/CloseloadExtractor;[B)[B
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lflix/com/vision/extractors/CloseloadExtractor;->reverseBytes([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lflix/com/vision/extractors/CloseloadExtractor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lflix/com/vision/extractors/CloseloadExtractor;->rot13(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lflix/com/vision/extractors/CloseloadExtractor;->lambda$smartBruteForce$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lflix/com/vision/extractors/CloseloadExtractor;[B)[B
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lflix/com/vision/extractors/CloseloadExtractor;->lambda$smartBruteForce$6([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lflix/com/vision/extractors/CloseloadExtractor;->lambda$smartBruteForce$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lflix/com/vision/extractors/CloseloadExtractor;[B)[B
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lflix/com/vision/extractors/CloseloadExtractor;->rot13Bytes([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lflix/com/vision/extractors/CloseloadExtractor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lflix/com/vision/extractors/CloseloadExtractor;->lambda$smartBruteForce$2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i([B)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lflix/com/vision/extractors/CloseloadExtractor;->lambda$smartBruteForce$4([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lflix/com/vision/extractors/CloseloadExtractor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lflix/com/vision/extractors/CloseloadExtractor;->lambda$smartBruteForce$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$smartBruteForce$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$smartBruteForce$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private synthetic lambda$smartBruteForce$2(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {p0, p1}, Lflix/com/vision/extractors/CloseloadExtractor;->rot13(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method private synthetic lambda$smartBruteForce$3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lflix/com/vision/extractors/CloseloadExtractor;->rot13(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method private static synthetic lambda$smartBruteForce$4([B)[B
    .locals 0

    return-object p0
.end method

.method private synthetic lambda$smartBruteForce$5([B)[B
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lflix/com/vision/extractors/CloseloadExtractor;->reverseBytes([B)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lflix/com/vision/extractors/CloseloadExtractor;->rot13Bytes([B)[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private synthetic lambda$smartBruteForce$6([B)[B
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lflix/com/vision/extractors/CloseloadExtractor;->rot13Bytes([B)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lflix/com/vision/extractors/CloseloadExtractor;->reverseBytes([B)[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private reverseBytes([B)[B
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p1

    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    array-length v2, p1

    .line 9
    add-int/lit8 v2, v2, -0x1

    .line 10
    .line 11
    sub-int/2addr v2, v1

    .line 12
    aget-byte v2, p1, v2

    .line 13
    .line 14
    aput-byte v2, v0, v1

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-object v0
.end method

.method private rot13(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    array-length v1, p1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_2

    .line 13
    .line 14
    aget-char v3, p1, v2

    .line 15
    .line 16
    const/16 v4, 0x41

    .line 17
    .line 18
    if-lt v3, v4, :cond_0

    .line 19
    .line 20
    const/16 v5, 0x5a

    .line 21
    .line 22
    if-gt v3, v5, :cond_0

    .line 23
    .line 24
    add-int/lit8 v3, v3, -0x34

    .line 25
    .line 26
    rem-int/lit8 v3, v3, 0x1a

    .line 27
    .line 28
    add-int/2addr v3, v4

    .line 29
    int-to-char v3, v3

    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const/16 v4, 0x61

    .line 35
    .line 36
    if-lt v3, v4, :cond_1

    .line 37
    .line 38
    const/16 v5, 0x7a

    .line 39
    .line 40
    if-gt v3, v5, :cond_1

    .line 41
    .line 42
    add-int/lit8 v3, v3, -0x54

    .line 43
    .line 44
    rem-int/lit8 v3, v3, 0x1a

    .line 45
    .line 46
    add-int/2addr v3, v4

    .line 47
    int-to-char v3, v3

    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1
.end method

.method private rot13Bytes([B)[B
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p1

    .line 6
    if-ge v1, v2, :cond_2

    .line 7
    .line 8
    aget-byte v2, p1, v1

    .line 9
    .line 10
    and-int/lit16 v2, v2, 0xff

    .line 11
    .line 12
    const/16 v3, 0x41

    .line 13
    .line 14
    if-lt v2, v3, :cond_0

    .line 15
    .line 16
    const/16 v4, 0x5a

    .line 17
    .line 18
    if-gt v2, v4, :cond_0

    .line 19
    .line 20
    add-int/lit8 v2, v2, -0x34

    .line 21
    .line 22
    rem-int/lit8 v2, v2, 0x1a

    .line 23
    .line 24
    add-int/2addr v2, v3

    .line 25
    int-to-byte v2, v2

    .line 26
    aput-byte v2, v0, v1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/16 v3, 0x61

    .line 30
    .line 31
    if-lt v2, v3, :cond_1

    .line 32
    .line 33
    const/16 v4, 0x7a

    .line 34
    .line 35
    if-gt v2, v4, :cond_1

    .line 36
    .line 37
    add-int/lit8 v2, v2, -0x54

    .line 38
    .line 39
    rem-int/lit8 v2, v2, 0x1a

    .line 40
    .line 41
    add-int/2addr v2, v3

    .line 42
    int-to-byte v2, v2

    .line 43
    aput-byte v2, v0, v1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    int-to-byte v2, v2

    .line 47
    aput-byte v2, v0, v1

    .line 48
    .line 49
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    return-object v0
.end method

.method private safeBase64Decode(Ljava/lang/String;)[B
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 3
    .line 4
    .line 5
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    return-object p1

    .line 7
    :catch_0
    const/4 p1, 0x0

    .line 8
    return-object p1
.end method

.method private smartBruteForce(Ljava/lang/String;JI)Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, ".mp4"

    .line 4
    .line 5
    const-string v2, "http"

    .line 6
    .line 7
    new-instance v3, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v4, Lflix/com/vision/extractors/a;

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    invoke-direct {v4, v5}, Lflix/com/vision/extractors/a;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    new-instance v4, Lflix/com/vision/extractors/a;

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    invoke-direct {v4, v5}, Lflix/com/vision/extractors/a;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    new-instance v4, Lflix/com/vision/extractors/b;

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-direct {v4, v0, v5}, Lflix/com/vision/extractors/b;-><init>(Lflix/com/vision/extractors/CloseloadExtractor;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    new-instance v4, Lflix/com/vision/extractors/b;

    .line 40
    .line 41
    const/4 v5, 0x1

    .line 42
    invoke-direct {v4, v0, v5}, Lflix/com/vision/extractors/b;-><init>(Lflix/com/vision/extractors/CloseloadExtractor;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    new-instance v4, Lflix/com/vision/extractors/b;

    .line 49
    .line 50
    const/4 v5, 0x2

    .line 51
    invoke-direct {v4, v0, v5}, Lflix/com/vision/extractors/b;-><init>(Lflix/com/vision/extractors/CloseloadExtractor;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    new-instance v4, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v5, Lflix/com/vision/extractors/c;

    .line 63
    .line 64
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    new-instance v5, Lflix/com/vision/extractors/d;

    .line 71
    .line 72
    const/4 v6, 0x0

    .line 73
    invoke-direct {v5, v0, v6}, Lflix/com/vision/extractors/d;-><init>(Lflix/com/vision/extractors/CloseloadExtractor;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    new-instance v5, Lflix/com/vision/extractors/d;

    .line 80
    .line 81
    const/4 v6, 0x1

    .line 82
    invoke-direct {v5, v0, v6}, Lflix/com/vision/extractors/d;-><init>(Lflix/com/vision/extractors/CloseloadExtractor;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    new-instance v5, Lflix/com/vision/extractors/d;

    .line 89
    .line 90
    const/4 v6, 0x2

    .line 91
    invoke-direct {v5, v0, v6}, Lflix/com/vision/extractors/d;-><init>(Lflix/com/vision/extractors/CloseloadExtractor;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    new-instance v5, Lflix/com/vision/extractors/d;

    .line 98
    .line 99
    const/4 v6, 0x3

    .line 100
    invoke-direct {v5, v0, v6}, Lflix/com/vision/extractors/d;-><init>(Lflix/com/vision/extractors/CloseloadExtractor;I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-eqz v5, :cond_7

    .line 115
    .line 116
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    check-cast v5, Lflix/com/vision/extractors/CloseloadExtractor$StringTransform;

    .line 121
    .line 122
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-eqz v7, :cond_6

    .line 131
    .line 132
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    check-cast v7, Lflix/com/vision/extractors/CloseloadExtractor$ByteTransform;

    .line 137
    .line 138
    move-object/from16 v8, p1

    .line 139
    .line 140
    :try_start_0
    invoke-interface {v5, v8}, Lflix/com/vision/extractors/CloseloadExtractor$StringTransform;->transform(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    invoke-direct {v0, v9}, Lflix/com/vision/extractors/CloseloadExtractor;->safeBase64Decode(Ljava/lang/String;)[B

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    if-nez v9, :cond_0

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 157
    .line 158
    .line 159
    :try_start_1
    new-instance v11, Ljava/lang/String;

    .line 160
    .line 161
    const-string v12, "ISO-8859-1"

    .line 162
    .line 163
    invoke-direct {v11, v9, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-direct {v0, v11}, Lflix/com/vision/extractors/CloseloadExtractor;->safeBase64Decode(Ljava/lang/String;)[B

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    if-eqz v9, :cond_1

    .line 171
    .line 172
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    invoke-direct {v0, v9}, Lflix/com/vision/extractors/CloseloadExtractor;->safeBase64Decode(Ljava/lang/String;)[B

    .line 189
    .line 190
    .line 191
    move-result-object v9

    .line 192
    if-eqz v9, :cond_2

    .line 193
    .line 194
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    .line 196
    .line 197
    :catch_0
    :cond_2
    :try_start_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 198
    .line 199
    .line 200
    move-result-object v9

    .line 201
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 202
    .line 203
    .line 204
    move-result v10

    .line 205
    if-eqz v10, :cond_5

    .line 206
    .line 207
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    check-cast v10, [B

    .line 212
    .line 213
    invoke-interface {v7, v10}, Lflix/com/vision/extractors/CloseloadExtractor$ByteTransform;->transform([B)[B

    .line 214
    .line 215
    .line 216
    move-result-object v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 217
    move-wide/from16 v11, p2

    .line 218
    .line 219
    move/from16 v13, p4

    .line 220
    .line 221
    :try_start_3
    invoke-direct {v0, v10, v11, v12, v13}, Lflix/com/vision/extractors/CloseloadExtractor;->unmixLoop([BJI)[B

    .line 222
    .line 223
    .line 224
    move-result-object v14

    .line 225
    new-instance v15, Ljava/lang/String;

    .line 226
    .line 227
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 228
    .line 229
    invoke-direct {v15, v14, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 237
    .line 238
    .line 239
    move-result v14

    .line 240
    if-eqz v14, :cond_3

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 243
    .line 244
    .line 245
    move-result v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 246
    if-eqz v14, :cond_3

    .line 247
    .line 248
    return-object v0

    .line 249
    :catch_1
    :cond_3
    :try_start_4
    new-instance v0, Ljava/lang/String;

    .line 250
    .line 251
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 252
    .line 253
    invoke-direct {v0, v10, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 261
    .line 262
    .line 263
    move-result v10

    .line 264
    if-eqz v10, :cond_4

    .line 265
    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 267
    .line 268
    .line 269
    move-result v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 270
    if-eqz v10, :cond_4

    .line 271
    .line 272
    return-object v0

    .line 273
    :catch_2
    :cond_4
    move-object/from16 v0, p0

    .line 274
    .line 275
    goto :goto_2

    .line 276
    :catch_3
    :cond_5
    move-wide/from16 v11, p2

    .line 277
    .line 278
    move/from16 v13, p4

    .line 279
    .line 280
    move-object/from16 v0, p0

    .line 281
    .line 282
    goto/16 :goto_1

    .line 283
    .line 284
    :cond_6
    move-object/from16 v8, p1

    .line 285
    .line 286
    move-wide/from16 v11, p2

    .line 287
    .line 288
    move/from16 v13, p4

    .line 289
    .line 290
    move-object/from16 v0, p0

    .line 291
    .line 292
    goto/16 :goto_0

    .line 293
    .line 294
    :cond_7
    const/4 v0, 0x0

    .line 295
    return-object v0
.end method

.method private unmixLoop([BJI)[B
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p1

    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    aget-byte v2, p1, v1

    .line 9
    .line 10
    and-int/lit16 v2, v2, 0xff

    .line 11
    .line 12
    add-int v3, v1, p4

    .line 13
    .line 14
    int-to-long v3, v3

    .line 15
    rem-long v3, p2, v3

    .line 16
    .line 17
    long-to-int v3, v3

    .line 18
    sub-int/2addr v2, v3

    .line 19
    add-int/lit16 v2, v2, 0x100

    .line 20
    .line 21
    rem-int/lit16 v2, v2, 0x100

    .line 22
    .line 23
    int-to-byte v2, v2

    .line 24
    aput-byte v2, v0, v1

    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-object v0
.end method


# virtual methods
.method public extract(Ljava/lang/String;)Lflix/com/vision/models/Video;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lflix/com/vision/extractors/CloseloadExtractor;->ridoURL:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lflix/com/vision/App;->get(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :try_start_0
    new-instance v0, Lh5/k;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lh5/k;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lh5/k;->detect()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lh5/k;->unpack()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    move-object p1, v0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const-string v1, "Closeload"

    .line 36
    .line 37
    const-string v2, "Unpacking failed, continuing with raw HTML"

    .line 38
    .line 39
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .line 41
    .line 42
    :cond_0
    :goto_0
    const-string v0, "(\\d+)\\s*%\\s*\\(\\s*i\\s*\\+\\s*(\\d+)\\s*\\)"

    .line 43
    .line 44
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    const/4 v2, 0x5

    .line 57
    const/4 v3, 0x1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 65
    .line 66
    .line 67
    move-result-wide v4

    .line 68
    const/4 v1, 0x2

    .line 69
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    const-wide/32 v4, 0x17d3cec3

    .line 79
    .line 80
    .line 81
    move v0, v2

    .line 82
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v6, "myPlayer\\.src\\(\\{\\s*src:\\s*(\\w+)\\s*,"

    .line 88
    .line 89
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    if-eqz v7, :cond_2

    .line 102
    .line 103
    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    new-instance v7, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v8, "var\\s+"

    .line 110
    .line 111
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v6, "\\s*=\\s*dc_hello\\(\"([^\"]*)\"\\)"

    .line 118
    .line 119
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    if-eqz v7, :cond_2

    .line 139
    .line 140
    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    :cond_2
    const-string v6, "\\[\\s*((?:\"[^\"]+\",?\\s*)*)\\]"

    .line 148
    .line 149
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    :cond_3
    :goto_2
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    if-eqz v7, :cond_6

    .line 162
    .line 163
    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    const-string v8, "\"([^\"]*)\""

    .line 168
    .line 169
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    new-instance v8, Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .line 181
    .line 182
    :goto_3
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    .line 183
    .line 184
    .line 185
    move-result v9

    .line 186
    if-eqz v9, :cond_4

    .line 187
    .line 188
    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v9

    .line 192
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    if-le v7, v2, :cond_3

    .line 201
    .line 202
    new-instance v7, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 212
    .line 213
    .line 214
    move-result v9

    .line 215
    if-eqz v9, :cond_5

    .line 216
    .line 217
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v9

    .line 221
    check-cast v9, Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v7

    .line 231
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_6
    const-string v2, "\\(\\s*\"([a-zA-Z0-9+/=]{30,})\"\\s*\\)"

    .line 236
    .line 237
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    :goto_5
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    if-eqz v6, :cond_7

    .line 250
    .line 251
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v6

    .line 255
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    goto :goto_5

    .line 259
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    if-eqz v2, :cond_9

    .line 268
    .line 269
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    check-cast v2, Ljava/lang/String;

    .line 274
    .line 275
    invoke-direct {p0, v2, v4, v5, v0}, Lflix/com/vision/extractors/CloseloadExtractor;->smartBruteForce(Ljava/lang/String;JI)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    if-eqz v2, :cond_8

    .line 280
    .line 281
    goto :goto_6

    .line 282
    :cond_9
    const/4 v2, 0x0

    .line 283
    :goto_6
    if-nez v2, :cond_b

    .line 284
    .line 285
    const-string v0, "[\"\'](aHR0[a-zA-Z0-9+/=]{20,})[\"\']"

    .line 286
    .line 287
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    :cond_a
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-eqz v0, :cond_b

    .line 300
    .line 301
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-direct {p0, v0}, Lflix/com/vision/extractors/CloseloadExtractor;->safeBase64Decode(Ljava/lang/String;)[B

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    if-eqz v0, :cond_a

    .line 310
    .line 311
    new-instance v1, Ljava/lang/String;

    .line 312
    .line 313
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 314
    .line 315
    invoke-direct {v1, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 316
    .line 317
    .line 318
    const-string v0, "http"

    .line 319
    .line 320
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    if-eqz v0, :cond_a

    .line 325
    .line 326
    move-object v5, v1

    .line 327
    goto :goto_7

    .line 328
    :cond_b
    move-object v5, v2

    .line 329
    :goto_7
    if-eqz v5, :cond_c

    .line 330
    .line 331
    new-instance v7, Ljava/util/HashMap;

    .line 332
    .line 333
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 334
    .line 335
    .line 336
    const-string p1, "Referer"

    .line 337
    .line 338
    iget-object v0, p0, Lflix/com/vision/extractors/CloseloadExtractor;->mainUrl:Ljava/lang/String;

    .line 339
    .line 340
    invoke-virtual {v7, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    new-instance v4, Lflix/com/vision/models/Video;

    .line 344
    .line 345
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 346
    .line 347
    const/4 v9, 0x0

    .line 348
    const/4 v10, 0x0

    .line 349
    const-string v8, "application/x-mpegURL"

    .line 350
    .line 351
    invoke-direct/range {v4 .. v10}, Lflix/com/vision/models/Video;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ZZ)V

    .line 352
    .line 353
    .line 354
    return-object v4

    .line 355
    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    .line 356
    .line 357
    const-string v0, "No video found"

    .line 358
    .line 359
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    throw p1
.end method
