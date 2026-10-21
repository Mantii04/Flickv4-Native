.class public Lflix/com/vision/extractors/VidsrcToExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflix/com/vision/extractors/VidsrcToExtractor$Keys;,
        Lflix/com/vision/extractors/VidsrcToExtractor$Subtitles;,
        Lflix/com/vision/extractors/VidsrcToExtractor$EmbedSource;,
        Lflix/com/vision/extractors/VidsrcToExtractor$EpisodeSources;,
        Lflix/com/vision/extractors/VidsrcToExtractor$Service;
    }
.end annotation


# instance fields
.field private final keyUrl:Ljava/lang/String;

.field private final mainUrl:Ljava/lang/String;

.field movie:Lflix/com/vision/models/Movie;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lflix/com/vision/models/Movie;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Vidsrc.to"

    .line 5
    .line 6
    iput-object v0, p0, Lflix/com/vision/extractors/VidsrcToExtractor;->name:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "https://vidsrc.to"

    .line 9
    .line 10
    iput-object v0, p0, Lflix/com/vision/extractors/VidsrcToExtractor;->mainUrl:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "https://raw.githubusercontent.com/Ciarands/vidsrc-keys/main/keys.json"

    .line 13
    .line 14
    iput-object v0, p0, Lflix/com/vision/extractors/VidsrcToExtractor;->keyUrl:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p1, p0, Lflix/com/vision/extractors/VidsrcToExtractor;->movie:Lflix/com/vision/models/Movie;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic access$000(Lflix/com/vision/extractors/VidsrcToExtractor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lflix/com/vision/extractors/VidsrcToExtractor;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$100(Lflix/com/vision/extractors/VidsrcToExtractor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lflix/com/vision/extractors/VidsrcToExtractor;->decryptUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private decodeData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 7

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/16 v0, 0x100

    .line 8
    .line 9
    new-array v1, v0, [B

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    if-ge v3, v0, :cond_0

    .line 14
    .line 15
    int-to-byte v4, v3

    .line 16
    aput-byte v4, v1, v3

    .line 17
    .line 18
    add-int/lit8 v3, v3, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v3, v2

    .line 22
    move v4, v3

    .line 23
    :goto_1
    if-ge v3, v0, :cond_1

    .line 24
    .line 25
    aget-byte v5, v1, v3

    .line 26
    .line 27
    and-int/lit16 v6, v5, 0xff

    .line 28
    .line 29
    add-int/2addr v4, v6

    .line 30
    array-length v6, p1

    .line 31
    rem-int v6, v3, v6

    .line 32
    .line 33
    aget-byte v6, p1, v6

    .line 34
    .line 35
    and-int/lit16 v6, v6, 0xff

    .line 36
    .line 37
    add-int/2addr v4, v6

    .line 38
    and-int/lit16 v4, v4, 0xff

    .line 39
    .line 40
    aget-byte v6, v1, v4

    .line 41
    .line 42
    aput-byte v6, v1, v3

    .line 43
    .line 44
    aput-byte v5, v1, v4

    .line 45
    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    new-array p1, p1, [B

    .line 54
    .line 55
    move v0, v2

    .line 56
    move v3, v0

    .line 57
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-ge v2, v4, :cond_2

    .line 62
    .line 63
    add-int/lit8 v0, v0, 0x1

    .line 64
    .line 65
    and-int/lit16 v0, v0, 0xff

    .line 66
    .line 67
    aget-byte v4, v1, v0

    .line 68
    .line 69
    and-int/lit16 v5, v4, 0xff

    .line 70
    .line 71
    add-int/2addr v3, v5

    .line 72
    and-int/lit16 v3, v3, 0xff

    .line 73
    .line 74
    aget-byte v5, v1, v3

    .line 75
    .line 76
    aput-byte v5, v1, v0

    .line 77
    .line 78
    aput-byte v4, v1, v3

    .line 79
    .line 80
    aget-byte v5, v1, v0

    .line 81
    .line 82
    and-int/lit16 v5, v5, 0xff

    .line 83
    .line 84
    and-int/lit16 v4, v4, 0xff

    .line 85
    .line 86
    add-int/2addr v5, v4

    .line 87
    and-int/lit16 v4, v5, 0xff

    .line 88
    .line 89
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    aget-byte v4, v1, v4

    .line 94
    .line 95
    and-int/lit16 v4, v4, 0xff

    .line 96
    .line 97
    xor-int/2addr v4, v5

    .line 98
    int-to-byte v4, v4

    .line 99
    aput-byte v4, p1, v2

    .line 100
    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_2
    return-object p1
.end method

.method private decryptUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-static {p2, v1}, Landroid/util/Base64;->decode([BI)[B

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v2, "RC4"

    .line 20
    .line 21
    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v2, 0x2

    .line 29
    invoke-virtual {p1, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance p2, Ljava/lang/String;

    .line 37
    .line 38
    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 39
    .line 40
    .line 41
    const-string p1, "utf-8"

    .line 42
    .line 43
    invoke-static {p2, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method

.method private encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lflix/com/vision/extractors/VidsrcToExtractor;->decodeData(Ljava/lang/String;Ljava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x2

    .line 6
    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string p2, "/"

    .line 11
    .line 12
    const-string v0, "_"

    .line 13
    .line 14
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string p2, "+"

    .line 19
    .line 20
    const-string v0, "-"

    .line 21
    .line 22
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method


# virtual methods
.method public extract()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lflix/com/vision/extractors/VidsrcToExtractor$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lflix/com/vision/extractors/VidsrcToExtractor$1;-><init>(Lflix/com/vision/extractors/VidsrcToExtractor;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    new-array v2, v2, [Ljava/lang/Void;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method
