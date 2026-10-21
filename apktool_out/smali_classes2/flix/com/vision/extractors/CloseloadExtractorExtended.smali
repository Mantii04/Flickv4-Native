.class public Lflix/com/vision/extractors/CloseloadExtractorExtended;
.super Ljava/lang/Object;
.source "SourceFile"


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
    iput-object v0, p0, Lflix/com/vision/extractors/CloseloadExtractorExtended;->name:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "https://closeload.top/"

    .line 9
    .line 10
    iput-object v0, p0, Lflix/com/vision/extractors/CloseloadExtractorExtended;->mainUrl:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "https://ridomovies.tv/"

    .line 13
    .line 14
    iput-object v0, p0, Lflix/com/vision/extractors/CloseloadExtractorExtended;->ridoURL:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private executeDecryptionFunction(Ljava/lang/String;JI)Ljava/lang/String;
    .locals 6

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
    const/4 v0, 0x0

    .line 15
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    .line 24
    .line 25
    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 26
    .line 27
    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    return-object v1

    .line 37
    :cond_1
    array-length v2, p1

    .line 38
    new-array v2, v2, [B

    .line 39
    .line 40
    :goto_0
    array-length v3, p1

    .line 41
    if-ge v0, v3, :cond_2

    .line 42
    .line 43
    aget-byte v3, p1, v0

    .line 44
    .line 45
    and-int/lit16 v3, v3, 0xff

    .line 46
    .line 47
    add-int v4, v0, p4

    .line 48
    .line 49
    int-to-long v4, v4

    .line 50
    rem-long v4, p2, v4

    .line 51
    .line 52
    long-to-int v4, v4

    .line 53
    sub-int/2addr v3, v4

    .line 54
    add-int/lit16 v3, v3, 0x100

    .line 55
    .line 56
    rem-int/lit16 v3, v3, 0x100

    .line 57
    .line 58
    int-to-byte v3, v3

    .line 59
    aput-byte v3, v2, v0

    .line 60
    .line 61
    add-int/lit8 v0, v0, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p1

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    new-instance p1, Ljava/lang/String;

    .line 67
    .line 68
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 69
    .line 70
    invoke-direct {p1, v2, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-string p2, "http"

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-eqz p2, :cond_4

    .line 84
    .line 85
    const-string p2, ".m3u8"

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    if-nez p2, :cond_3

    .line 92
    .line 93
    const-string p2, ".mp4"

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    if-eqz p2, :cond_4

    .line 100
    .line 101
    :cond_3
    return-object p1

    .line 102
    :goto_1
    const-string p2, "Closeload"

    .line 103
    .line 104
    const-string p3, "Decryption algorithm failed"

    .line 105
    .line 106
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    .line 108
    .line 109
    :cond_4
    return-object v1
.end method

.method private unbase(Ljava/lang/String;I)I
    .locals 4

    .line 1
    const/16 v0, 0x24

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-gt p2, v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :catch_0
    move-exception p1

    .line 12
    goto :goto_2

    .line 13
    :cond_0
    const/16 v0, 0x3e

    .line 14
    .line 15
    if-ne p2, v0, :cond_5

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    move v0, p2

    .line 19
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ge p2, v2, :cond_4

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    const/16 v3, 0x30

    .line 30
    .line 31
    if-lt v2, v3, :cond_1

    .line 32
    .line 33
    const/16 v3, 0x39

    .line 34
    .line 35
    if-gt v2, v3, :cond_1

    .line 36
    .line 37
    add-int/lit8 v2, v2, -0x30

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/16 v3, 0x61

    .line 41
    .line 42
    if-lt v2, v3, :cond_2

    .line 43
    .line 44
    const/16 v3, 0x7a

    .line 45
    .line 46
    if-gt v2, v3, :cond_2

    .line 47
    .line 48
    add-int/lit8 v2, v2, -0x57

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const/16 v3, 0x41

    .line 52
    .line 53
    if-lt v2, v3, :cond_3

    .line 54
    .line 55
    const/16 v3, 0x5a

    .line 56
    .line 57
    if-gt v2, v3, :cond_3

    .line 58
    .line 59
    add-int/lit8 v2, v2, -0x1d

    .line 60
    .line 61
    :goto_1
    mul-int/lit8 v0, v0, 0x3e

    .line 62
    .line 63
    add-int/2addr v0, v2

    .line 64
    add-int/lit8 p2, p2, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    return v1

    .line 68
    :cond_4
    return v0

    .line 69
    :goto_2
    const-string p2, "Closeload"

    .line 70
    .line 71
    const-string v0, "Unbase error"

    .line 72
    .line 73
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .line 75
    .line 76
    :cond_5
    return v1
.end method

.method private unpack(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x5

    .line 2
    :goto_0
    if-lez v0, :cond_3

    .line 3
    .line 4
    const-string v1, "eval\\(function\\(p,a,c,k,e,[r|d]\\).*?\\}\\(\'(.*?)\',\\s*(\\d+)\\s*,\\s*(\\d+)\\s*,\\s*\'(.*?)\'\\.split\\(\'\\|\'\\)"

    .line 5
    .line 6
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :cond_0
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x2

    .line 28
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/4 v4, 0x3

    .line 37
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    const/4 v4, 0x4

    .line 45
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const-string v5, "\\|"

    .line 50
    .line 51
    const/4 v6, -0x1

    .line 52
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const-string v5, "\\\'"

    .line 57
    .line 58
    const-string v6, "\'"

    .line 59
    .line 60
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-string v5, "\\\\"

    .line 65
    .line 66
    const-string v6, "\\"

    .line 67
    .line 68
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    new-instance v5, Ljava/lang/StringBuffer;

    .line 73
    .line 74
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v6, "\\b[a-zA-Z0-9]+\\b"

    .line 78
    .line 79
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-eqz v6, :cond_2

    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-direct {p0, v6, v3}, Lflix/com/vision/extractors/CloseloadExtractorExtended;->unbase(Ljava/lang/String;I)I

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    if-ltz v7, :cond_1

    .line 102
    .line 103
    array-length v8, v4

    .line 104
    if-ge v7, v8, :cond_1

    .line 105
    .line 106
    aget-object v8, v4, v7

    .line 107
    .line 108
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    if-nez v8, :cond_1

    .line 113
    .line 114
    aget-object v6, v4, v7

    .line 115
    .line 116
    :cond_1
    invoke-static {v6}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-virtual {v2, v5, v6}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_2
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 125
    .line 126
    .line 127
    const/4 v2, 0x0

    .line 128
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    add-int/lit8 v0, v0, -0x1

    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    :cond_3
    :goto_2
    return-object p1
.end method


# virtual methods
.method public extract(Ljava/lang/String;)Lflix/com/vision/models/Video;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lflix/com/vision/extractors/CloseloadExtractorExtended;->ridoURL:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lflix/com/vision/App;->get(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_6

    .line 8
    .line 9
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_6

    .line 14
    .line 15
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_6

    .line 20
    .line 21
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :try_start_0
    invoke-direct {p0, p1}, Lflix/com/vision/extractors/CloseloadExtractorExtended;->unpack(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

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
    :goto_0
    const-string v0, "(\\d+)\\s*%\\s*\\(\\s*[a-zA-Z_]+\\s*\\+\\s*(\\d+)\\s*\\)"

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
    const/4 v2, 0x1

    .line 57
    const-wide/32 v3, 0x17d3cec3

    .line 58
    .line 59
    .line 60
    const/4 v5, 0x5

    .line 61
    if-eqz v1, :cond_0

    .line 62
    .line 63
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v3

    .line 71
    const/4 v1, 0x2

    .line 72
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    :catch_1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v1, "dc_[a-zA-Z0-9_]+\\s*\\(\\s*\\[([^\\]]+)\\]\\s*\\)"

    .line 86
    .line 87
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_2

    .line 100
    .line 101
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const-string v6, "[\"\\s,\']"

    .line 106
    .line 107
    const-string v7, ""

    .line 108
    .line 109
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    const/16 v7, 0x1e

    .line 118
    .line 119
    if-le v6, v7, :cond_1

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    const/4 v0, 0x0

    .line 130
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_4

    .line 135
    .line 136
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Ljava/lang/String;

    .line 141
    .line 142
    invoke-direct {p0, v0, v3, v4, v5}, Lflix/com/vision/extractors/CloseloadExtractorExtended;->executeDecryptionFunction(Ljava/lang/String;JI)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-eqz v0, :cond_3

    .line 147
    .line 148
    :cond_4
    move-object v7, v0

    .line 149
    if-eqz v7, :cond_5

    .line 150
    .line 151
    new-instance v9, Ljava/util/HashMap;

    .line 152
    .line 153
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string p1, "Referer"

    .line 157
    .line 158
    iget-object v0, p0, Lflix/com/vision/extractors/CloseloadExtractorExtended;->mainUrl:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v9, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    const-string p1, "Origin"

    .line 164
    .line 165
    iget-object v0, p0, Lflix/com/vision/extractors/CloseloadExtractorExtended;->mainUrl:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v9, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    const-string p1, "User-Agent"

    .line 171
    .line 172
    const-string v0, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36"

    .line 173
    .line 174
    invoke-virtual {v9, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    new-instance v6, Lflix/com/vision/models/Video;

    .line 178
    .line 179
    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 180
    .line 181
    const/4 v11, 0x0

    .line 182
    const/4 v12, 0x0

    .line 183
    const-string v10, "application/x-mpegURL"

    .line 184
    .line 185
    invoke-direct/range {v6 .. v12}, Lflix/com/vision/models/Video;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ZZ)V

    .line 186
    .line 187
    .line 188
    return-object v6

    .line 189
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    .line 190
    .line 191
    const-string v0, "No video found in Closeload/Ridorapid"

    .line 192
    .line 193
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw p1

    .line 197
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    .line 198
    .line 199
    const-string v0, "Failed to fetch Closeload HTML"

    .line 200
    .line 201
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw p1
.end method
