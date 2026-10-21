.class public Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_SUBTYPE:Ljava/lang/String; = "form-data"

.field private static final MULTIPART_CHARS:[C


# instance fields
.field private bodyParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;",
            ">;"
        }
    .end annotation
.end field

.field private boundary:Ljava/lang/String;

.field private charset:Ljava/nio/charset/Charset;

.field private contentType:Lcz/msebera/android/httpclient/entity/ContentType;

.field private mode:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->MULTIPART_CHARS:[C

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;->STRICT:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    .line 5
    .line 6
    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->mode:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->boundary:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->charset:Ljava/nio/charset/Charset;

    .line 12
    .line 13
    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->bodyParts:Ljava/util/List;

    .line 14
    .line 15
    return-void
.end method

.method public static create()Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 1

    .line 1
    new-instance v0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private generateBoundary()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/Random;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 9
    .line 10
    .line 11
    const/16 v2, 0xb

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    add-int/lit8 v2, v2, 0x1e

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    if-ge v3, v2, :cond_0

    .line 21
    .line 22
    sget-object v4, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->MULTIPART_CHARS:[C

    .line 23
    .line 24
    array-length v5, v4

    .line 25
    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    aget-char v4, v4, v5

    .line 30
    .line 31
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method


# virtual methods
.method public addBinaryBody(Ljava/lang/String;Ljava/io/File;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 2

    .line 4
    sget-object v0, Lcz/msebera/android/httpclient/entity/ContentType;->DEFAULT_BINARY:Lcz/msebera/android/httpclient/entity/ContentType;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v0, v1}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->addBinaryBody(Ljava/lang/String;Ljava/io/File;Lcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addBinaryBody(Ljava/lang/String;Ljava/io/File;Lcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 1

    .line 3
    new-instance v0, Lcz/msebera/android/httpclient/entity/mime/content/FileBody;

    invoke-direct {v0, p2, p3, p4}, Lcz/msebera/android/httpclient/entity/mime/content/FileBody;-><init>(Ljava/io/File;Lcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->addPart(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addBinaryBody(Ljava/lang/String;Ljava/io/InputStream;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 2

    .line 6
    sget-object v0, Lcz/msebera/android/httpclient/entity/ContentType;->DEFAULT_BINARY:Lcz/msebera/android/httpclient/entity/ContentType;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->addBinaryBody(Ljava/lang/String;Ljava/io/InputStream;Lcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addBinaryBody(Ljava/lang/String;Ljava/io/InputStream;Lcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 1

    .line 5
    new-instance v0, Lcz/msebera/android/httpclient/entity/mime/content/InputStreamBody;

    invoke-direct {v0, p2, p3, p4}, Lcz/msebera/android/httpclient/entity/mime/content/InputStreamBody;-><init>(Ljava/io/InputStream;Lcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->addPart(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addBinaryBody(Ljava/lang/String;[B)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 2

    .line 2
    sget-object v0, Lcz/msebera/android/httpclient/entity/ContentType;->DEFAULT_BINARY:Lcz/msebera/android/httpclient/entity/ContentType;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->addBinaryBody(Ljava/lang/String;[BLcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addBinaryBody(Ljava/lang/String;[BLcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 1

    .line 1
    new-instance v0, Lcz/msebera/android/httpclient/entity/mime/content/ByteArrayBody;

    invoke-direct {v0, p2, p3, p4}, Lcz/msebera/android/httpclient/entity/mime/content/ByteArrayBody;-><init>([BLcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->addPart(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addPart(Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->bodyParts:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->bodyParts:Ljava/util/List;

    .line 3
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->bodyParts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPart(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 1

    .line 4
    const-string v0, "Name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    const-string v0, "Content body"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-static {p1, p2}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->create(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->build()Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->addPart(Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addTextBody(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 1

    .line 2
    sget-object v0, Lcz/msebera/android/httpclient/entity/ContentType;->DEFAULT_TEXT:Lcz/msebera/android/httpclient/entity/ContentType;

    invoke-virtual {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->addTextBody(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/entity/ContentType;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addTextBody(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/entity/ContentType;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 1

    .line 1
    new-instance v0, Lcz/msebera/android/httpclient/entity/mime/content/StringBody;

    invoke-direct {v0, p2, p3}, Lcz/msebera/android/httpclient/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/ContentType;)V

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->addPart(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcz/msebera/android/httpclient/HttpEntity;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->buildEntity()Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public buildEntity()Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;
    .locals 7

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->boundary:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "boundary"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->contentType:Lcz/msebera/android/httpclient/entity/ContentType;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Lcz/msebera/android/httpclient/entity/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->generateBoundary()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_1
    iget-object v2, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->charset:Ljava/nio/charset/Charset;

    .line 22
    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    iget-object v3, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->contentType:Lcz/msebera/android/httpclient/entity/ContentType;

    .line 26
    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/entity/ContentType;->getCharset()Ljava/nio/charset/Charset;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    .line 34
    .line 35
    const/4 v4, 0x2

    .line 36
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    .line 38
    .line 39
    new-instance v5, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    .line 40
    .line 41
    invoke-direct {v5, v1, v0}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    new-instance v1, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    .line 50
    .line 51
    const-string v5, "charset"

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-direct {v1, v5, v6}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    new-array v1, v1, [Lcz/msebera/android/httpclient/NameValuePair;

    .line 68
    .line 69
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, [Lcz/msebera/android/httpclient/NameValuePair;

    .line 74
    .line 75
    iget-object v3, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->contentType:Lcz/msebera/android/httpclient/entity/ContentType;

    .line 76
    .line 77
    if-eqz v3, :cond_4

    .line 78
    .line 79
    invoke-virtual {v3, v1}, Lcz/msebera/android/httpclient/entity/ContentType;->withParameters([Lcz/msebera/android/httpclient/NameValuePair;)Lcz/msebera/android/httpclient/entity/ContentType;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    goto :goto_0

    .line 84
    :cond_4
    const-string v3, "multipart/form-data"

    .line 85
    .line 86
    invoke-static {v3, v1}, Lcz/msebera/android/httpclient/entity/ContentType;->create(Ljava/lang/String;[Lcz/msebera/android/httpclient/NameValuePair;)Lcz/msebera/android/httpclient/entity/ContentType;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    :goto_0
    iget-object v3, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->bodyParts:Ljava/util/List;

    .line 91
    .line 92
    if-eqz v3, :cond_5

    .line 93
    .line 94
    new-instance v3, Ljava/util/ArrayList;

    .line 95
    .line 96
    iget-object v5, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->bodyParts:Ljava/util/List;

    .line 97
    .line 98
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_5
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 103
    .line 104
    :goto_1
    iget-object v5, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->mode:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    .line 105
    .line 106
    if-eqz v5, :cond_6

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_6
    sget-object v5, Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;->STRICT:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    .line 110
    .line 111
    :goto_2
    sget-object v6, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder$1;->$SwitchMap$cz$msebera$android$httpclient$entity$mime$HttpMultipartMode:[I

    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    aget v5, v6, v5

    .line 118
    .line 119
    const/4 v6, 0x1

    .line 120
    if-eq v5, v6, :cond_8

    .line 121
    .line 122
    if-eq v5, v4, :cond_7

    .line 123
    .line 124
    new-instance v4, Lcz/msebera/android/httpclient/entity/mime/HttpStrictMultipart;

    .line 125
    .line 126
    invoke-direct {v4, v2, v0, v3}, Lcz/msebera/android/httpclient/entity/mime/HttpStrictMultipart;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/util/List;)V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_7
    new-instance v4, Lcz/msebera/android/httpclient/entity/mime/HttpRFC6532Multipart;

    .line 131
    .line 132
    invoke-direct {v4, v2, v0, v3}, Lcz/msebera/android/httpclient/entity/mime/HttpRFC6532Multipart;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/util/List;)V

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_8
    new-instance v4, Lcz/msebera/android/httpclient/entity/mime/HttpBrowserCompatibleMultipart;

    .line 137
    .line 138
    invoke-direct {v4, v2, v0, v3}, Lcz/msebera/android/httpclient/entity/mime/HttpBrowserCompatibleMultipart;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/util/List;)V

    .line 139
    .line 140
    .line 141
    :goto_3
    new-instance v0, Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;

    .line 142
    .line 143
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->getTotalLength()J

    .line 144
    .line 145
    .line 146
    move-result-wide v2

    .line 147
    invoke-direct {v0, v4, v1, v2, v3}, Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;-><init>(Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;Lcz/msebera/android/httpclient/entity/ContentType;J)V

    .line 148
    .line 149
    .line 150
    return-object v0
.end method

.method public seContentType(Lcz/msebera/android/httpclient/entity/ContentType;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->setContentType(Lcz/msebera/android/httpclient/entity/ContentType;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public setBoundary(Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->boundary:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->charset:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    return-object p0
.end method

.method public setContentType(Lcz/msebera/android/httpclient/entity/ContentType;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 1

    .line 1
    const-string v0, "Content type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->contentType:Lcz/msebera/android/httpclient/entity/ContentType;

    .line 7
    .line 8
    return-object p0
.end method

.method public setLaxMode()Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 1

    .line 1
    sget-object v0, Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    .line 2
    .line 3
    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->mode:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    .line 4
    .line 5
    return-object p0
.end method

.method public setMimeSubtype(Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 2

    .line 1
    const-string v0, "MIME subtype"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "multipart/"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Lcz/msebera/android/httpclient/entity/ContentType;->create(Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/ContentType;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->contentType:Lcz/msebera/android/httpclient/entity/ContentType;

    .line 25
    .line 26
    return-object p0
.end method

.method public setMode(Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->mode:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    .line 2
    .line 3
    return-object p0
.end method

.method public setStrictMode()Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 1

    .line 1
    sget-object v0, Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;->STRICT:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    .line 2
    .line 3
    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->mode:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    .line 4
    .line 5
    return-object p0
.end method
